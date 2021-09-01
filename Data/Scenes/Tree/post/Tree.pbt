Name: "post"
RootId: 4436773740699403042
Objects {
  Id: 4852873998106356160
  Name: "Vignette Grain Post Process"
  Transform {
    Location {
      X: 18.6241646
      Y: 61.1702271
      Z: -4.57763672e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Vignette Intensity"
      Float: 0.33554104
    }
    Overrides {
      Name: "bp:Grain Jitter"
      Float: 0.0329017043
    }
    Overrides {
      Name: "bp:Grain Intensity"
      Float: 0.117119111
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2350752921712080832
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 4852873998106356160
    SubobjectId: 11970018745922609359
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 6274885447408816282
  Name: "Depth of Field Post Process"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Focus Object"
      Bool: true
    }
    Overrides {
      Name: "bp:Focus Object"
      ObjectReference {
        SelfId: 8553477725164165327
      }
    }
    Overrides {
      Name: "bp:Depth Blur Radius"
      Float: 32
    }
    Overrides {
      Name: "bp:Depth Blur Distance For 50%"
      Float: 30.5538387
    }
    Overrides {
      Name: "bp:Focal Distance"
      Float: 0
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 9785595532150528260
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 6856585582051732793
  Name: "Chromatic Aberration Post Process Volume"
  Transform {
    Location {
      X: 138.363342
      Y: 6.6776123
      Z: -4.57763672e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 1
    }
    Overrides {
      Name: "bp:Start Offset"
      Float: 0.459729373
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 14663219804615511656
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 6856585582051732793
    SubobjectId: 13430208888660173878
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 4549651203393684442
  Name: "Ambient Occlusion Post Process"
  Transform {
    Location {
      X: 108.841484
      Y: -21.5784912
      Z: -1.52587891e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Radius"
      Float: 279.972473
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 1636974561145035984
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 4549651203393684442
    SubobjectId: 15737063894169258709
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 15555868600281928640
  Name: "Advanced Bloom Post Process"
  Transform {
    Location {
      X: 102.067146
      Y: 74.8044434
      Z: -6.10351562e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 15
    }
    Overrides {
      Name: "bp:Stretch"
      Float: 0.277774274
    }
    Overrides {
      Name: "bp:Shape"
      Enum {
        Value: "mc:ebloomshape:newenumerator1"
      }
    }
    Overrides {
      Name: "bp:Threshold"
      Float: 9.13823605
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Size Scale"
      Float: 15
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 10654654742233626278
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 15555868600281928640
    SubobjectId: 3649991041028004559
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 13708620867352712317
  Name: "Advanced Color Grading Post Process"
  Transform {
    Location {
      X: -13239.2598
      Z: 20344.9766
    }
    Rotation {
    }
    Scale {
      X: 672.855469
      Y: 833.712524
      Z: 395.62262
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shadow Max"
      Float: 0.2
    }
    Overrides {
      Name: "bp:White Tint"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Shadow Contrast"
      Color {
        R: 0.880000055
        G: 0.880000055
        B: 0.880000055
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shadow Gain"
      Color {
        R: 1.1
        G: 1.1
        B: 1.1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shadow Gamma"
      Color {
        R: 1.1
        G: 1.1
        B: 1.1
        A: 1
      }
    }
    Overrides {
      Name: "bp:White Temperature"
      Float: 7344.46924
    }
    Overrides {
      Name: "bp:Unbounded"
      Bool: false
    }
    Overrides {
      Name: "bp:Blend Radius"
      Float: 1000
    }
    Overrides {
      Name: "bp:Shape Visibility"
      Enum {
        Value: "mc:evolumevisibility:newenumerator0"
      }
    }
    Overrides {
      Name: "bp:Priority"
      Float: 0
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 10677977209542911357
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 13708620867352712317
    SubobjectId: 6591050616996420978
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 11912300512254339398
  Name: "Advanced Sketch Line Post Process"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Ambient Occlusion Color"
      Color {
        A: 0.413000017
      }
    }
    Overrides {
      Name: "bp:Background Color"
      Color {
        R: 1
        G: 0.919531941
        B: 0.734426
      }
    }
    Overrides {
      Name: "bp:Crease Line Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Contour Line Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Silhouette Line Color"
      Color {
      }
    }
    Overrides {
      Name: "bp:Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Line Fade Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Line Fade End"
      Float: 0
    }
    Overrides {
      Name: "bp:Multiply Line Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Show Line Width Controls"
      Bool: true
    }
    Overrides {
      Name: "bp:Show Depth Fade Controls"
      Bool: true
    }
    Overrides {
      Name: "bp:Show Threshold Controls"
      Bool: true
    }
    Overrides {
      Name: "bp:Silhouette Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Crease Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Contour Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Highlight Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissives Line Width"
      Float: 0
    }
    Overrides {
      Name: "bp:Ambient Occlusion Boost"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Silhouette Threshold"
      Float: 0
    }
    Overrides {
      Name: "bp:Contour Threshold"
      Float: 0
    }
    Overrides {
      Name: "bp:Highlight Threshold"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissive Low Value"
      Float: 1
    }
    Overrides {
      Name: "bp:Emissive High Value"
      Float: 0
    }
    Overrides {
      Name: "bp:Silhouette Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Silhouette End"
      Float: 0
    }
    Overrides {
      Name: "bp:Crease Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Crease End"
      Float: 0
    }
    Overrides {
      Name: "bp:Contour Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Contour End"
      Float: 0
    }
    Overrides {
      Name: "bp:Highlight Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Highlight End"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissives Start"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissives End"
      Float: 0
    }
    Overrides {
      Name: "bp:Crease Threshold"
      Float: 0
    }
    Overrides {
      Name: "bp:Emissives Threshold"
      Float: 0
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 8806292115898130680
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 11912300512254339398
    SubobjectId: 4617928641978802249
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 15220310647685721113
  Name: "AutoExposure Post Process"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  UnregisteredParameters {
    Overrides {
      Name: "bp:Max Brightness"
      Float: 0.659228325
    }
    Overrides {
      Name: "bp:Min Brightness"
      Float: 0.147181511
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Low Percent"
      Float: 50
    }
    Overrides {
      Name: "bp:High Percent"
      Float: 100
    }
    Overrides {
      Name: "bp:Histogram Log Min"
      Float: 0
    }
    Overrides {
      Name: "bp:Histogram Log Max"
      Float: 16
    }
    Overrides {
      Name: "bp:Speed Up"
      Float: 10
    }
    Overrides {
      Name: "bp:Calibration Constant"
      Float: 100
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 10499183709411353006
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 15220310647685721113
    SubobjectId: 3927055815026353430
    InstanceId: 11934548976407597969
    TemplateId: 16360568341073172784
  }
}
Objects {
  Id: 8553477725164165327
  Name: "Sphere"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4436773740699403042
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 896875555958293030
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
}
