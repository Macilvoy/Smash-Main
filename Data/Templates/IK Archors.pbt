Assets {
  Id: 3377361614529639697
  Name: "IK Archors"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5693960876777306915
      Objects {
        Id: 5693960876777306915
        Name: "IK Archors"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7876345000814242847
        ChildIds: 8641005619263660220
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
        Equipment {
          SocketName: "root"
          PickupTrigger {
            SubObjectId: 8641005619263660220
          }
        }
      }
      Objects {
        Id: 7876345000814242847
        Name: "Anchor"
        Transform {
          Location {
            X: 0.982068419
            Y: 0.556820869
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
        ParentId: 5693960876777306915
        ChildIds: 12290442521523058458
        ChildIds: 1435050361235400468
        ChildIds: 15986463109159703762
        ChildIds: 17575678580228393632
        ChildIds: 10758951104529678251
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "Anchor_1"
        }
      }
      Objects {
        Id: 12290442521523058458
        Name: "LHand"
        Transform {
          Location {
            X: 1.90734863e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7876345000814242847
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
            X: -25
            Y: -10
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 1435050361235400468
        Name: "RFoot"
        Transform {
          Location {
            X: 1.90734863e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7876345000814242847
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
            X: 10
            Y: -10
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 15986463109159703762
        Name: "LFoot"
        Transform {
          Location {
            X: 1.90734863e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7876345000814242847
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
            X: 10
            Y: 10
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 17575678580228393632
        Name: "Pelvis"
        Transform {
          Location {
            X: 1.90734863e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7876345000814242847
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
        }
      }
      Objects {
        Id: 10758951104529678251
        Name: "RHand"
        Transform {
          Location {
            X: 1.90734863e-06
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7876345000814242847
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
            X: -25
            Y: 10
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 8641005619263660220
        Name: "Equip Trigger"
        Transform {
          Location {
            X: -1.96413672
            Y: -1.11364174
            Z: 118.557
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 0.159397885
            Y: 0.159397885
            Z: 0.159397885
          }
        }
        ParentId: 5693960876777306915
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 98
}
