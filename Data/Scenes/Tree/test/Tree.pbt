Name: "test"
RootId: 5834764046906664839
Objects {
  Id: 9724830926889094451
  Name: "Pelvis"
  Transform {
    Location {
      X: 30
      Y: -70.8844833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5834764046906664839
  UnregisteredParameters {
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
  IKAnchor {
    AimOffset {
    }
    IKAnchorType {
      Value: "mc:eikanchortype:hip"
    }
    BlendWeight: 1
    BlendInTime: 1
    BlendOutTime: 1
  }
}
Objects {
  Id: 6259519421592759080
  Name: "Cube"
  Transform {
    Location {
      X: -120
      Y: 283.537903
      Z: 191.091202
    }
    Rotation {
      Roll: -89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5834764046906664839
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
  Id: 3128610891815681313
  Name: "LHand"
  Transform {
    Location {
      X: 30
      Y: -70.8844833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5834764046906664839
  UnregisteredParameters {
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
  IKAnchor {
    AimOffset {
    }
    IKAnchorType {
      Value: "mc:eikanchortype:lefthand"
    }
    BlendWeight: 1
    BlendInTime: 1
    BlendOutTime: 1
  }
}
Objects {
  Id: 2955016247564168762
  Name: "RHand"
  Transform {
    Location {
      X: 30
      Y: -70.8844833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5834764046906664839
  UnregisteredParameters {
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
  IKAnchor {
    AimOffset {
    }
    IKAnchorType {
      Value: "mc:eikanchortype:righthand"
    }
    BlendWeight: 1
    BlendInTime: 1
    BlendOutTime: 1
  }
}
Objects {
  Id: 7956698288370730017
  Name: "NewScript"
  Transform {
    Location {
      X: 30
      Y: -70.8844833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5834764046906664839
  UnregisteredParameters {
    Overrides {
      Name: "cs:RHand"
      ObjectReference {
        SelfId: 2955016247564168762
      }
    }
    Overrides {
      Name: "cs:LHand"
      ObjectReference {
        SelfId: 3128610891815681313
      }
    }
    Overrides {
      Name: "cs:Cube"
      ObjectReference {
        SelfId: 6259519421592759080
      }
    }
    Overrides {
      Name: "cs:Pelvis"
      ObjectReference {
        SelfId: 9724830926889094451
      }
    }
    Overrides {
      Name: "cs:curve"
      SimpleCurve {
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 43.5247307
          Value: 54.5833206
          ArriveTangent: -0.0390636325
          LeaveTangent: -0.0390636325
        }
        Keys {
          Interpolation {
            Value: "mc:erichcurveinterpmode:rcim_cubic"
          }
          TangentMode {
            Value: "mc:erichcurvetangentmode:rctm_user"
          }
          Time: 81.0878906
          Value: 0.265027851
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
      Id: 12825627933406570012
    }
  }
}
