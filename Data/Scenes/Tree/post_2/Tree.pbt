Name: "post_2"
RootId: 9756319043008706170
Objects {
  Id: 12925001472716777182
  Name: "Environment Fog Default VFX"
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
  ParentId: 9756319043008706170
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.113725498
        G: 0.113725498
        B: 0.113725498
        A: 0.400000036
      }
    }
    Overrides {
      Name: "bp:Fog Density"
      Float: 10
    }
    Overrides {
      Name: "bp:Falloff"
      Float: 3
    }
    Overrides {
      Name: "bp:Start"
      Float: -1000
    }
    Overrides {
      Name: "bp:Directional Inscattering Exponent"
      Float: 11.714
    }
    Overrides {
      Name: "bp:Directional Inscattering Start Distance"
      Float: 30000
    }
    Overrides {
      Name: "bp:Layered Fog Density"
      Float: 1.442
    }
    Overrides {
      Name: "bp:Layered Fog Falloff"
      Float: 1.767
    }
    Overrides {
      Name: "bp:Layered Fog Offset Height"
      Float: 37.038
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
      Id: 9759802866188034043
    }
    TeamSettings {
    }
  }
  InstanceHistory {
    SelfId: 12925001472716777182
    SubobjectId: 687961673973650622
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 13674273578083590633
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
  ParentId: 9756319043008706170
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
    SelfId: 13674273578083590633
    SubobjectId: 510651124194857865
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 15577891873078248606
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
  ParentId: 9756319043008706170
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Focus Object"
      Bool: true
    }
    Overrides {
      Name: "bp:Focus Object"
      ObjectReference {
        SelfId: 18275937602992647428
      }
    }
    Overrides {
      Name: "bp:Depth Blur Radius"
      Float: 16
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
  InstanceHistory {
    SelfId: 15577891873078248606
    SubobjectId: 7132926915356227326
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 16862610500974207918
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
  ParentId: 9756319043008706170
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
    SelfId: 16862610500974207918
    SubobjectId: 5825111225057513934
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 16061692836731134285
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
  ParentId: 9756319043008706170
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
    SelfId: 16061692836731134285
    SubobjectId: 7220516679932760877
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 8666361248889302402
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
  ParentId: 9756319043008706170
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
    SelfId: 8666361248889302402
    SubobjectId: 14021936003462635490
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 7873018115134980008
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
  ParentId: 9756319043008706170
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
      Bool: true
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
    SelfId: 7873018115134980008
    SubobjectId: 15533022181829283272
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 2502672572849582514
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
  ParentId: 9756319043008706170
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
    SelfId: 2502672572849582514
    SubobjectId: 10982505234783830994
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 16645912636328775492
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
  ParentId: 9756319043008706170
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
    SelfId: 16645912636328775492
    SubobjectId: 6760145457503501604
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
Objects {
  Id: 18275937602992647428
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
  ParentId: 9756319043008706170
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
  InstanceHistory {
    SelfId: 18275937602992647428
    SubobjectId: 5148697703239376740
    InstanceId: 4820947685900219683
    TemplateId: 2245756756528168531
  }
}
