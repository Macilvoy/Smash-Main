--[[
	YT Tutorial: (no vid yet, will do someday in the future MAYBE)

	Setup:
	 - Put your model inside of a client context
	 - Put the Animator TEMPLATE (not the script) inside of the context
	 - Put the AnimatorTag TEMPLATES (again, do not use the script on its own) as children of objects that you want to be affected by the animator
	 - Assign unique tags to the templates (check their custom properties) so that you will later be able to reference them
	
	Animation creation:
	   (NOTE: you are supposed to do all of this a bit lower in this script - just scroll down, you'll know where the place is)
	   (Copy and paste this code there to create your own animations)
	   (There's also a blank template a little bit lower to save you some time)

	 - Initialize the animation
		animation["name goes here"] = {fps = x}			-- where x is the number of frames played per second
	 - Create a frame
		animation["name goes here"][frame index goes here (starts at 1)] =
		{
			x = {			-- where x is a unique tag you gave to an AnimatorTag template
				rotation = some rotation, position = some vector3, scale = some vector3,
				smoothing = Smoothing. some smoothing mode, smoothingSpeed = some float
			}
			-- you can add multiple tags to a single frame
			-- feel free to modify this
		}
		-- there's no limit of how many frames an animation can fit

	
	 - Additional info:
		- You DON'T HAVE TO set the objects rotation/position/scale if you dont want to change it
		- You DON'T HAVE TO set the smoothing mode/speed (defaults are Smoothing.NONE and 1.0)
		- Smoothing modes:
			- Smoothing.NONE 	- for frame by frame animation
			- Smoothing.SMOOTH 	- for smooth transitions between keyframes
			- Smoothing.BOUNCE 	- for bouncy transitions between keyframes

		- smoothingSpeed - (default = 1) how smooth transitions are (doesn't apply to Smoothing.NONE)
		- You can use Duplicate(frame|table, tagFrom|string, tagTo|string) to copy-paste animations (frame specific) from tags to other tags
		  e.g. Duplicate(animations["someAnimation"][1], "sourceTag", "destinationTag")
		- (ADVANCED) There's a special CODE tag you can use in your animations, you can input some lua code wrapped up in a function that
		  will be executed AT THE START of that frame (e.g. CODE = function() Task.Wait(1) end)
		- (ADVANCED) There's a special LENGTH tag that lets you specify current frames length IN SECONDS

		  NOTE: DO NOT PUT THIS FUNCTION INSIDE ANIMATIONS
		  you're supposed to use this like you normally would in a typical script (AFTER setting the frame)
		  using it INSIDE an animation, BEFORE initializing it or BEFORE setting the frame will return an error

	 - Animation template:
		animations["Animation"] = {fps = 1}
		animations["Animation"][1] =
		{
			Tag1 = {
				rotation = Rotation.New(0, 0, 0), position = Vector3.New(0, 0, 0), scale = Vector3.New(0, 0, 0),
				smoothing = Smoothing.SMOOTH, smoothingSpeed = 0.5
			}
		}
		
	Usage:
	 - When you're satisfied with your animation go back to the Animator template in your model
	   It has several custom properties attached to it, one of them is named AnimatorID
	   Give this one a unique ID (a string) - you'll later use it to play, pause and change the animation
	 - Set the one named Animation to whatever you called your animation
	   You can later change it by firing "AnimatorSetAnimation" event with arguments: AnimatorID|string, Animation|string
	 - The other four of them are AnimationsScript, Playing, Loop and FixedLoop
	 - Don't worry about AnimationsScript, it's just a way to attach this script to the animator
	 - Playing is whether the animation is currently paused or not (change by firing "AnimatorPlay" event with arguments: AnimatorID|string, Playing|boolean)
	   The animation WILL NOT AUTOPLAY if you leave it on false
	 - Loop is whether to loop the animation after it's done playing (change by firing "AnimatorLoop" event with arguments: AnimatorID|string, Loop|boolean)
	 - FixedLoop means that when the animation ends the model will return to its starting state on the next frame

	@chipnertkj#5685 on discord
]]

local function Duplicate(frame, tagFrom, tagTo)
	frame[tagTo] = frame[tagFrom]
end

if script:IsA("CoreObject") then
	error("Do NOT drag this script into your project. Open it for more info.")
end

local animations = {}
local Smoothing = {NONE = 0, SMOOTH = 1, BOUNCE = 2}

--- animations go here \/
--- animations go here \/
--- animations go here \/


-- example animation
-- feel free to delete this animation and make one yourself!
animations["Example"] = {fps = 0.5}
-- frame 1
animations["Example"][1] =
{
	Tag1 = {
		rotation = Rotation.New(90, 0, -90), position = Vector3.New(25, 0, 50),
		smoothing = Smoothing.SMOOTH
	},
	Tag2 = {
		rotation = Rotation.ZERO, scale = Vector3.ONE,
		smoothing = Smoothing.SMOOTH
	},
	Tag3 = {
		rotation = Rotation.New(0, 0, -180),
		smoothing = Smoothing.SMOOTH
	},
	Tag4 = {
		rotation = Rotation.ZERO,
		smoothing = Smoothing.SMOOTH
	}
}
-- frame 2
animations["Example"][2] =
{
	Tag1 = {
		rotation = Rotation.New(90, 180, -90), position = Vector3.New(-25, 0, 50),
		smoothing = Smoothing.SMOOTH
	},
	Tag2 = {
		rotation = Rotation.New(0, 0, 180), scale = Vector3.New(0.75, 0.75, 0.75),
		smoothing = Smoothing.SMOOTH
	},
	Tag3 = {
		rotation = Rotation.New(0, 180, -180),
		smoothing = Smoothing.SMOOTH
	},
	Tag4 = {
		rotation = Rotation.New(0, 180, 0),
		smoothing = Smoothing.SMOOTH
	}
}
-- frame 3
animations["Example"][3] =
{
	Tag1 = {
		rotation = Rotation.New(90, 0, -90), position = Vector3.New(-25, 0, 50),
		smoothing = Smoothing.SMOOTH
	},
	Tag2 = {
		rotation = Rotation.ZERO, scale = Vector3.New(0.75, 0.75, 0.75),
		smoothing = Smoothing.SMOOTH
	},
	Tag3 = {
		rotation = Rotation.New(0, 0, -180),
		smoothing = Smoothing.SMOOTH
	},
	Tag4 = {
		rotation = Rotation.ZERO,
		smoothing = Smoothing.SMOOTH
	}
}
-- frame 4
animations["Example"][4] =
{
	Tag1 = {
		rotation = Rotation.New(90, 180, -90), position = Vector3.New(-25, 0, 50),
		smoothing = Smoothing.SMOOTH
	},
	Tag2 = {
		rotation = Rotation.New(0, 0, 180), scale = Vector3.ONE,
		smoothing = Smoothing.SMOOTH
	},
	Tag3 = {
		rotation = Rotation.New(0, 180, -180),
		smoothing = Smoothing.SMOOTH
	},
	Tag4 = {
		rotation = Rotation.New(0, 180, 0),
		smoothing = Smoothing.SMOOTH
	}
}
-- end of the example


--- animations go here /\
--- animations go here /\
--- animations go here /\

return {animations, Smoothing}