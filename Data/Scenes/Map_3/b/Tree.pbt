Name: "b"
RootId: 6927930215293384748
Objects {
  Id: 11182445123622821436
  Name: "p2Camera"
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
  ParentId: 6927930215293384748
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
    SelfId: 15770815205004556942
    SubobjectId: 13234981180151689569
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 9303678985201502564
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
  ParentId: 6927930215293384748
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
    Intensity: 100
    Color {
      R: 0.160000026
      G: 0.432582498
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
    SelfId: 17578906611929043631
    SubobjectId: 11422813041939454272
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 14164424168599579247
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
  ParentId: 6927930215293384748
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
        G: 0.196078449
        B: 0.611764729
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
    SelfId: 11144251176712275000
    SubobjectId: 17859443216015806423
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 10255036956496468206
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
  ParentId: 6927930215293384748
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
        G: 0.196078449
        B: 0.611764729
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
    SelfId: 7684509866402732737
    SubobjectId: 564626294468284718
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
