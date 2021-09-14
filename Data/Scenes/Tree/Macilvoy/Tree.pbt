Name: "Macilvoy"
RootId: 1602072049588011465
Objects {
  Id: 2093694004678742430
  Name: "Movement"
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
  ParentId: 1602072049588011465
  UnregisteredParameters {
    Overrides {
      Name: "cs:PlayerCapsule"
      AssetReference {
        Id: 7382256184672174386
      }
    }
    Overrides {
      Name: "cs:MaxSpeed"
      Float: 150
    }
    Overrides {
      Name: "cs:Gravity"
      Float: 50
    }
    Overrides {
      Name: "cs:JumpPower"
      Float: 300
    }
    Overrides {
      Name: "cs:MovingSpeed"
      Float: 100
    }
    Overrides {
      Name: "cs:p1ToFollow"
      ObjectReference {
        SelfId: 2086499025816977119
      }
    }
    Overrides {
      Name: "cs:p2ToFollow"
      ObjectReference {
        SelfId: 16449231082325708877
      }
    }
    Overrides {
      Name: "cs:SmoothCurve"
      SimpleCurve {
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          ArriveTangent: 2.45919633
          LeaveTangent: 2.45919633
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 3.06653595
          Value: 3.46967697
          ArriveTangent: 0.0103004267
          LeaveTangent: 0.0103004267
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 150
          Value: 5
          ArriveTangent: -0.144297734
          LeaveTangent: -0.144297734
        }
        PreExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
        PostExtrapolation {
          Value: "mc:erichcurveextrapolation:rcce_constant"
        }
      }
    }
  }
  WantsNetworking: true
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
  Script {
    ScriptAsset {
      Id: 1024724452739994340
    }
  }
}
Objects {
  Id: 2086499025816977119
  Name: "p1ToFollow"
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
  ParentId: 1602072049588011465
  WantsNetworking: true
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
      Id: 12095835209017042614
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
Objects {
  Id: 16449231082325708877
  Name: "p2ToFollow"
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
  ParentId: 1602072049588011465
  WantsNetworking: true
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
      Id: 12095835209017042614
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
Objects {
  Id: 11753849419086254839
  Name: "backup"
  Transform {
    Location {
      Z: 118.557
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "backup"
  }
}
Objects {
  Id: 870361367446915240
  Name: "maps, cams, yo-eye"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3584852568146463912
      value {
        Overrides {
          Name: "Name"
          String: "maps, cams, yo-eye"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 429.633789
            Z: -50
          }
        }
      }
    }
    TemplateAsset {
      Id: 15434381957125043846
    }
  }
}
Objects {
  Id: 9398118562246921575
  Name: "Horizontal Map Template"
  Transform {
    Location {
      X: 859.267578
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Horizontal Map Template"
  }
}
Objects {
  Id: 9918346935822804479
  Name: "Vertical Map Template"
  Transform {
    Location {
      X: 859.267578
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Vertical Map Template"
  }
}
Objects {
  Id: 6255350745831249585
  Name: "IK"
  Transform {
    Location {
      X: -21.3121319
      Y: -50.125885
      Z: 2307.53589
    }
    Rotation {
      Yaw: -6.83018243e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimationSystem"
      AssetReference {
        Id: 3377361614529639697
      }
    }
    Overrides {
      Name: "cs:KeyframeInterval"
      Float: 1
    }
    Overrides {
      Name: "cs:weapon"
      AssetReference {
        Id: 2756677324820062396
      }
    }
    Overrides {
      Name: "cs:PlayerCapsule"
      AssetReference {
        Id: 7382256184672174386
      }
    }
    Overrides {
      Name: "cs:MaxSpeed"
      Float: 150
    }
    Overrides {
      Name: "cs:Gravity"
      Float: 50
    }
    Overrides {
      Name: "cs:JumpPower"
      Float: 300
    }
    Overrides {
      Name: "cs:MovingSpeed"
      Float: 150
    }
    Overrides {
      Name: "cs:API"
      AssetReference {
        Id: 16138825898176964428
      }
    }
  }
  WantsNetworking: true
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
  Script {
    ScriptAsset {
      Id: 18215791265265690889
    }
  }
}
