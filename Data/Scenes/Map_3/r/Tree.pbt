Name: "r"
RootId: 11924792975128216660
Objects {
  Id: 10606112022682357206
  Name: "p1Camera"
  Transform {
    Location {
      X: -5.80801392
      Y: 14.7640381
      Z: 208
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11924792975128216660
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
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  Camera {
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 60
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
    AudioListenerOffset {
    }
  }
  InstanceHistory {
    SelfId: 9320779112329699942
    SubobjectId: 17017738110802405769
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 11279350632503749249
  Name: "Area Light"
  Transform {
    Location {
      X: -385.333038
      Y: -7.87268066
      Z: 266.76767
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11924792975128216660
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
  Light {
    Intensity: 21.2975273
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1000
        AreaLight {
          BarnDoorAngle: 50
          BarnDoorLength: 20
          SourceWidth: 100
          SourceHeight: 100
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
  }
  InstanceHistory {
    SelfId: 17280693771244559882
    SubobjectId: 9412649597397734885
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 16525465385423489695
  Name: "FLOOR"
  Transform {
    Location {
      X: 253.192413
      Y: -0.442993164
      Z: 12
    }
    Rotation {
    }
    Scale {
      X: 15.5329933
      Y: 6.35801268
      Z: 1
    }
  }
  ParentId: 11924792975128216660
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8368486982288174738
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.619607866
        A: 1
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10892536162820708972
    SubobjectId: 18040054995298914691
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 103511943081245641
  Name: "BG"
  Transform {
    Location {
      X: 253.192413
      Y: -0.442993164
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 15.5329933
      Y: 6.35801268
      Z: 1
    }
  }
  ParentId: 11924792975128216660
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8368486982288174738
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.619607866
        A: 1
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 14320094498051472935
    SubobjectId: 12378736826258159048
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
