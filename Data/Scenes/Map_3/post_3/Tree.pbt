Name: "post_3"
RootId: 5206409359815018145
Objects {
  Id: 6140162868419711881
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
  ParentId: 5206409359815018145
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
    SelfId: 5651262164321070578
    SubobjectId: 2530030556377097757
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 3620004873521561359
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
  ParentId: 5206409359815018145
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
    SelfId: 16551435193321347822
    SubobjectId: 9854908429319704833
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 7561803303389006454
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
  ParentId: 5206409359815018145
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
    SelfId: 12368741450972142019
    SubobjectId: 14328115683715699244
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
