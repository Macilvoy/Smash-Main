Name: "g"
RootId: 10772220016871826634
Objects {
  Id: 14674278078404216766
  Name: "p3Camera"
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
  ParentId: 10772220016871826634
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
    SelfId: 12130608818286241115
    SubobjectId: 14207095333047496372
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 6987575200886879092
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
  ParentId: 10772220016871826634
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
    SelfId: 3202005284680910299
    SubobjectId: 4692442169483431476
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 3236769478418823581
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
  ParentId: 10772220016871826634
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
        G: 0.619607866
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
    SelfId: 16741021638138776432
    SubobjectId: 9594118452749533343
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
Objects {
  Id: 14206886123717632764
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
  ParentId: 10772220016871826634
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
        G: 0.619607866
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
    SelfId: 4666174332521448333
    SubobjectId: 3292339448682334306
    InstanceId: 14649026442146425245
    TemplateId: 2634468360945288840
  }
}
