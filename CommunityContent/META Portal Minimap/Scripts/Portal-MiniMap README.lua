--[[
   Meta Portal Minimap - README
   v0.1.0 - 2021/5/27

   Contributors:
   =============
      Morticai (META) (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
      Ooccoo (META) (https://www.coregames.com/user/a136c0d1d9454d539c9932354198fc29)
      Divided (META) (https://www.coregames.com/user/eaba4947069846dbb72fc5efb0f04f47)
      blaking707 (META) (https://www.coregames.com/user/0ea6612ceab7456a8a3a963a94808295)
      Chris (Manticore) (https://www.coregames.com/user/d97586e1f850481da13ee26d5cbddc02) 
      Waffle (Manticore) (https://www.coregames.com/user/581ff579fd864966aec56450754db1fb)

   Description:
   ============
      Meta Portal Minimap is a component that allows creators to place high-quailty screenshots as a minimap backdrop, through the use of portals.


   Getting an Image
   ================
      1. Navigate to the "3D" group in the hierarchy under "Minimap Image". Within this group you will find a single Plane object and some World Text objects.

      NOTE: The world text objects can be deleted if you don't want to have any labels on your minimap.

      2. Select the Plane. Set it's position and scale so that it covers the entire area of what your minimap image will be.
      3. Find the "MinimapSetup" group. Make sure that the "IsDevMode" property is checked.
      4. Click the "Play" button and hit the zero key to go into capture mode. Also, make sure to hit F11 to go into fullscreen.
      5. Using the 7 key (zoom in) and 8 key (zoom out), adjust the camera zoom until the panel is fills the screen as much as possible.

      NOTE: It's okay if there is empty space on the top/bottom or left/right of the panel.

      6. Hit the 5 key to hide the panel. Take a screen shot by hitting ALT + Print Screen. 
      7. Open MS Paint and paste your screen shot image. Save the image.


   Publish the Image
   =================
      1. Save your current project and return to the Create tab in Core. 
      2. Create a blank project. 
      3. Once the editor opens for the new project, click on File->Publish Game.
      4. Fill out the required information. Under "Screenshots" add your saved minimap image. 
      5. Publish the project as "Unlisted".
      6. Once the "Success" window appears, click on the "Copy Link" button. Paste this game link somewhere so you don't lose it!
      7. You should have a link such as: https://www.coregames.com/games/1b3aa6/meta-portal-image-examples
      8. You will only need the Game ID portion which is: 1b3aa6/meta-portal-image-examples

   Setup the Game Portal
   =====================
      1. Return to your original project.
      2. Locate the "Game Portal" which is a child of "MapImageObjectGroup".
      3. With the game portal selected, scroll down to the "Game ID" property and paste your game ID.
      4. Just below that property you will see "Screenshot Index". Make sure this is set to 1. 
      5. Click the play button. You should see your minimap image overlayed by a UI rectangle.
      6. If the portal image is not scaled correctly, then adjust the "ScaleMultiplier" property on "MinimapSetup".
      7. If the portal image position is not alligned with the UI rectangle then adjust the position of the "Game Portal".

         NOTE: Both of these adjustments can be made at run time when in Local Player Preview. 
               However, any changes made at run time are not saved so you need to either copy/paste 
               or take note of the changes you make so you can do them again when not in play mode.

   Final Adjustments
   =================
      1. You can now uncheck "IsDevMode" on the "MinimapSetup" group.
      2. Navigate to the "Minimap" script and uncheck the "EnableShapes" property. 
         You can also disable "EnableLabels" if you are not using labels for your minimap.
      3. If you want to have the minimap in a different corner of the screen you can change the Dock property of the
         Minimap Panel and then change it's position accordingly. 

]]