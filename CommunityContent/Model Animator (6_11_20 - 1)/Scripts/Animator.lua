--[[
	Watch the tutorial here: (no vid yet, will do someday in the future MAYBE)

	Usage in the Animations script

	@chipnertkj#5685 on discord
]]

-- error check
do
	local a = script:GetCustomProperty("Animation")
	if not a then
		error("Do NOT use the Animator script on its own - please drag in the Animator template instead.")
	elseif a == "" then
		error("| No animation assigned.")
	end
end

-- setup
local fixed = script:GetCustomProperty("FixedLoop")
local playing = script:GetCustomProperty("Playing")
local animation = script:GetCustomProperty("Animation")
local loop = script:GetCustomProperty("Loop")
local ID = script:GetCustomProperty("AnimatorID")

if ID == "" then
	warn("| No AnimatorID assigned!")
end

local animations, Smoothing, currentFrame, fps, code
do
	local req = require(script:GetCustomProperty("AnimationsScript"))
	animations = req[1]
	Smoothing = req[2]
end

local root = script.parent
local time = 0
local frame = 0
local tags = root:FindDescendantsByName("AnimatorTag")
local anim = animations[animation]
local objects = {}
local speed = 0
local wn = {}

function Approach(a, b, c)
	if a < b then
		a = a + c
	end
	if a > b then
		a = a - c
	end
	return a
end

function Play(Id, bool)
	if Id == ID then
		playing = bool
	end
end

function Loop(Id, bool)
	if Id == ID then
		loop = bool
	end
end

function SetAnimation(Id, a)
	if Id == ID then
		animation = a
		frame = 0
	end
end

function NextFrame()
	if anim then
		local f = #anim
		if frame < f then
			frame = frame + 1
		else
			frame = 1
			if not loop then
				playing = false
			end
		end
		currentFrame = anim[frame]
		fps = anim.fps
		time = 0
		speed = 0
		code = {}
	end
end

function Tick(dt)
	anim = animations[animation]
	if playing then
		if frame == 0 then
			-- initialize animation
			NextFrame()
		else
			if currentFrame.LENGTH then
				if time >= currentFrame.LENGTH then
					NextFrame()
				end
			elseif time >= 1/fps then
				-- next frame
				NextFrame()
			else
				if currentFrame.CODE then
					if not code[frame] then
						currentFrame.CODE()
						code[frame] = true
					end
				end
				for key, value in pairs(currentFrame) do
					if key ~= "LENGTH" then
						if key ~= "CODE" then
							if not objects[key] then
								-- find the object
								for i = 1, #tags do
									local tag = tags[i]:GetCustomProperty("Tag")
									if tag == key then
										objects[key] = tags[i].parent
										break
									end
								end
								-- warn if couldnt find
								if not objects[key] then
									warn("| Unable to find tag: " .. key)
									break
								end
							else
								-- smoothing
								local rt = false
								local smoothing = currentFrame[key].smoothing
								local smoothingSpeed = currentFrame[key].smoothingSpeed
								if smoothingSpeed == nil then smoothingSpeed = 1 end
								local ss
								if smoothing == Smoothing.SMOOTH then
									ss = speed*smoothingSpeed
								elseif smoothing == Smoothing.BOUNCE then
									ss = math.ceil(smoothingSpeed)/10
								else
									ss = 1
								end

								-- fixed loop stuff
								if frame == 1 then
									if fixed then
										ss = 1
										time = 1/fps 
									end
								end

								-- rotation
								local rot = value.rotation
								if rot then
									local r = objects[key]:GetRotation()
									objects[key]:SetRotation(
										Quaternion.Slerp(
											Quaternion.New(r), Quaternion.New(rot), ss
										):GetRotation()
									)
								end
								-- position
								local pos = value.position
								if pos then
									local p = objects[key]:GetPosition()
									p.x = Approach(p.x, pos.x, math.abs(p.x-pos.x)*ss)
									p.y = Approach(p.y, pos.y, math.abs(p.y-pos.y)*ss)
									p.z = Approach(p.z, pos.z, math.abs(p.z-pos.z)*ss)
									objects[key]:SetPosition(p)
								end
								-- scale
								local sca = value.scale
								if sca then
									local s = objects[key]:GetScale()
									s.x = Approach(s.x, sca.x, math.abs(s.x-sca.x)*ss)
									s.y = Approach(s.y, sca.y, math.abs(s.y-sca.y)*ss)
									s.z = Approach(s.z, sca.z, math.abs(s.z-sca.z)*ss)

									-- uniform/nonuniform scaling check
									local c = #objects[key]:GetChildren()
									if c > 1 or objects[key]:IsA("Folder") or objects[key]:IsA("Group") then
										objects[key]:SetScale(Vector3.New(s.x))
										if not wn[key] then
											if sca.x ~= sca.y or sca.y ~= sca.z or sca.x ~= sca.z then
												print("- \"" .. tostring(script:GetCustomProperty("Animation")) .. "\" frame " .. tostring(frame) ..
													"\n\tFolders, groups and other objects with StaticMesh children have to be uniformly scaled." ..
													"\n\tApplied a uniform scale to [" .. tostring(objects[key].name) .. "] with tag [" .. key .. "]"
												)
												wn[key] = true
											end
										end
									else
										objects[key]:SetScale(s)
									end
								end
							end
						end
					end
				end
			end
		end
		-- add time
		time = time + dt
		-- smoothing speed increase
		speed = math.min(speed + 0.005, 2)
	end
end

Events.Connect("AnimatorSetAnimation", SetAnimation)
Events.Connect("AnimatorPlay", Play)
Events.Connect("AnimatorLoop", Loop)