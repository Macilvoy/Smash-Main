--[[

    WELCOME!
    If you are interested in animating in CORE, Ease3D is a powerful tool to create smooth easing animations.

    Note: these animations will only work on objects that have collision forced OFF.

    This script is an introduction to Ease3D and the different easing equations.
    I will continue to add to it when I create more tutorials, so be sure to "Download Latest" in Imported Content.

    Here is the link to my original intro video:
    https://youtu.be/SZZhOUdr_Jk 

    A big thanks to Morticai/GamerTitan for helping me understand functions; his videos are a great resource:
    https://www.youtube.com/channel/UCahQBItvr4YrnAk_wsf1C4Q (GamerTitan on YouTube)

]]

--Local Variables (We set these up in the Project Content tab so every instance of this script will inherit them)
local Ease3D = require(script:GetCustomProperty("Ease3D"))
local Duration = script:GetCustomProperty("Duration")
local Target = script:GetCustomProperty("Target"):WaitForObject()
local Target_Position = script:GetCustomProperty("Target_Position")
local Target_Rotation = script:GetCustomProperty("Target_Rotation")
local Target_Scale = script:GetCustomProperty("Target_Scale")

--Animation Functions (Setting up a function for different parts of the animation keeps things organized as the animation gets more complex)
function Reveal()
    Ease3D.EasePosition(Target, Target_Position, Duration, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
    Ease3D.EaseRotation(Target, Target_Rotation, Duration, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
    Ease3D.EaseScale(Target, Target_Scale, Duration, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
end

--"Play" Sequence (This is where we can set up the sequence and conditions for our animations to play)
Task.Wait(15)
Reveal()