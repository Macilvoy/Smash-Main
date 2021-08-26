--[[
	Watch the tutorial here: (no vid yet, will do someday in the future MAYBE)

	Usage in the Animations script

	@chipnertkj#5685 on discord
]]

do
	local t = script:GetCustomProperty("Tag")

	if t == "" then
		error("No tag assigned.")
	elseif t == "CODE" then
		error("Tag [CODE] is not available.")
	elseif not t then
		error("Do NOT use the AnimatorTag script on its own - please drag in the AnimatorTag template instead.")
	end
end