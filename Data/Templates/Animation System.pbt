Assets {
  Id: 9800851363915619213
  Name: "Animation System"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6906311244854679834
      Objects {
        Id: 6906311244854679834
        Name: "Animation System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1602072049588011465
        ChildIds: 14586324534178745473
        ChildIds: 14432499867012606372
        ChildIds: 12465704017221077277
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
          SocketName: "pelvis"
          PickupTrigger {
            SubObjectId: 14586324534178745473
          }
        }
      }
      Objects {
        Id: 14586324534178745473
        Name: "Equip Trigger"
        Transform {
          Location {
            X: -2.94620514
            Y: -1.67046261
            Z: 5.70141602
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 0.159397885
            Y: 0.159397885
            Z: 0.159397885
          }
        }
        ParentId: 6906311244854679834
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
      Objects {
        Id: 14432499867012606372
        Name: "ServerContext"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -6.83018789e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6906311244854679834
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
        NetworkContext {
          Type: Server
        }
      }
      Objects {
        Id: 12465704017221077277
        Name: "ClientContext"
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
        ParentId: 6906311244854679834
        ChildIds: 15442890423990314291
        ChildIds: 10285195290243157373
        ChildIds: 14947388216448963032
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
        }
      }
      Objects {
        Id: 15442890423990314291
        Name: "Anchor"
        Transform {
          Location {
            Y: 9.53674316e-07
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12465704017221077277
        ChildIds: 3688952605810659956
        ChildIds: 16137980471196897351
        ChildIds: 13659172506118267971
        ChildIds: 928808307373287390
        ChildIds: 10348628034163470743
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
          FilePartitionName: "Anchor"
        }
      }
      Objects {
        Id: 3688952605810659956
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
        ParentId: 15442890423990314291
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
        }
      }
      Objects {
        Id: 16137980471196897351
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
        ParentId: 15442890423990314291
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
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 13659172506118267971
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
        ParentId: 15442890423990314291
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
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
      }
      Objects {
        Id: 928808307373287390
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
        ParentId: 15442890423990314291
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
        Id: 10348628034163470743
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
        ParentId: 15442890423990314291
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
        }
      }
      Objects {
        Id: 10285195290243157373
        Name: "Animations"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -6.83018789e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12465704017221077277
        ChildIds: 9813836152042896622
        ChildIds: 9336603638212974701
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
          FilePartitionName: "Animations"
        }
      }
      Objects {
        Id: 9813836152042896622
        Name: "T-pose"
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
        ParentId: 10285195290243157373
        ChildIds: 3211109406204316588
        ChildIds: 10645546515196781977
        ChildIds: 5372425363126922783
        ChildIds: 5126330810258793075
        ChildIds: 10767254253006376146
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
          FilePartitionName: "T-pose"
        }
      }
      Objects {
        Id: 3211109406204316588
        Name: "PelvisKeys"
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
        ParentId: 9813836152042896622
        ChildIds: 15351026063419360971
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
          FilePartitionName: "PelvisKeys_1"
        }
      }
      Objects {
        Id: 15351026063419360971
        Name: "PelvisKey"
        Transform {
          Location {
            X: 3.81469658e-06
            Y: 2.27373675e-13
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 3211109406204316588
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
      Objects {
        Id: 10645546515196781977
        Name: "LLegKeys"
        Transform {
          Location {
            X: -2.91262586e-05
            Y: -27.147644
            Z: -116.195312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9813836152042896622
        ChildIds: 3726720850361597418
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
          FilePartitionName: "LLegKeys_1"
        }
      }
      Objects {
        Id: 3726720850361597418
        Name: "LLegKey"
        Transform {
          Location {
            X: 9.53674544e-07
            Y: -3.81469658e-06
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10645546515196781977
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
      Objects {
        Id: 5372425363126922783
        Name: "RLegKeys"
        Transform {
          Location {
            X: -2.90474945e-05
            Y: 27.148
            Z: -116.195312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9813836152042896622
        ChildIds: 2959368633568228388
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
          FilePartitionName: "RLegKeys_1"
        }
      }
      Objects {
        Id: 2959368633568228388
        Name: "RLegKey"
        Transform {
          Location {
            X: 9.53673862e-07
            Y: 5.72204453e-06
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5372425363126922783
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
      Objects {
        Id: 5126330810258793075
        Name: "RHandKeys"
        Transform {
          Location {
            X: 5.54429389e-05
            Y: 51.6765709
            Z: -0.361572266
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9813836152042896622
        ChildIds: 9914895515972423278
        ChildIds: 13008905515150342766
        ChildIds: 3438330696619535295
        ChildIds: 21159114766519523
        ChildIds: 6953117683152124496
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
          FilePartitionName: "RHandKeys_1"
        }
      }
      Objects {
        Id: 9914895515972423278
        Name: "RHandKey"
        Transform {
          Location {
            X: 42.298
            Y: -5.7220459e-05
            Z: 52.8029785
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5126330810258793075
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
      Objects {
        Id: 13008905515150342766
        Name: "RHandKey"
        Transform {
          Location {
            X: 42.2979965
            Y: -5.34057617e-05
            Z: 52.8029785
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5126330810258793075
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
      Objects {
        Id: 3438330696619535295
        Name: "RHandKey"
        Transform {
          Location {
            X: 42.2979965
            Y: -5.34057617e-05
            Z: 52.8029785
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5126330810258793075
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
      Objects {
        Id: 21159114766519523
        Name: "RHandKey"
        Transform {
          Location {
            X: 42.2979965
            Y: -5.34057617e-05
            Z: 52.8029785
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5126330810258793075
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
      Objects {
        Id: 6953117683152124496
        Name: "RHandKey"
        Transform {
          Location {
            X: 42.2979965
            Y: -5.34057617e-05
            Z: 52.8029785
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 5126330810258793075
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
      Objects {
        Id: 10767254253006376146
        Name: "LHandKeys"
        Transform {
          Location {
            X: 0.000133396
            Y: -46.332592
            Z: 3.82495117
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9813836152042896622
        ChildIds: 4661571338456259500
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
          FilePartitionName: "LHandKeys_1"
        }
      }
      Objects {
        Id: 4661571338456259500
        Name: "LHandKey"
        Transform {
          Location {
            X: -42.298
            Y: -6.10351562e-05
            Z: 52.8029785
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10767254253006376146
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
      Objects {
        Id: 9336603638212974701
        Name: "A-pose"
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
        ParentId: 10285195290243157373
        ChildIds: 58525501920641725
        ChildIds: 12864989721824781213
        ChildIds: 4728492554860294566
        ChildIds: 10251843079363567735
        ChildIds: 8141061427632605889
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
          FilePartitionName: "A-pose"
        }
      }
      Objects {
        Id: 58525501920641725
        Name: "PelvisKeys"
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
        ParentId: 9336603638212974701
        ChildIds: 3042455216659158761
        ChildIds: 14140429404477888975
        ChildIds: 1546566711441604754
        ChildIds: 14311892846157907206
        ChildIds: 13180972028705947295
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
          FilePartitionName: "PelvisKeys"
        }
      }
      Objects {
        Id: 3042455216659158761
        Name: "PelvisKey"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 58525501920641725
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
      Objects {
        Id: 14140429404477888975
        Name: "PelvisKey"
        Transform {
          Location {
            X: 35.6564903
            Y: 3.81469727e-05
            Z: 74.2493439
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 58525501920641725
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
      Objects {
        Id: 1546566711441604754
        Name: "PelvisKey"
        Transform {
          Location {
            X: 130.879379
            Y: 0.000122070312
            Z: 138.431015
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 58525501920641725
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
      Objects {
        Id: 14311892846157907206
        Name: "PelvisKey"
        Transform {
          Location {
            X: 231.971008
            Y: 0.000274658203
            Z: 164.019791
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 58525501920641725
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
      Objects {
        Id: 13180972028705947295
        Name: "PelvisKey"
        Transform {
          Location {
            X: 334.739502
            Y: 6.10351562e-05
            Z: 128.363327
          }
          Rotation {
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 58525501920641725
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
      Objects {
        Id: 12864989721824781213
        Name: "LLegKeys"
        Transform {
          Location {
            X: -2.91262586e-05
            Y: -27.147644
            Z: -116.195312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9336603638212974701
        ChildIds: 14226663461587662738
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
          FilePartitionName: "LLegKeys"
        }
      }
      Objects {
        Id: 14226663461587662738
        Name: "LLegKey"
        Transform {
          Location {
            X: 9.53674544e-07
            Y: -3.81469658e-06
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 12864989721824781213
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
      Objects {
        Id: 4728492554860294566
        Name: "RLegKeys"
        Transform {
          Location {
            X: -2.90474945e-05
            Y: 27.148
            Z: -116.195312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9336603638212974701
        ChildIds: 15914734397999369616
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
          FilePartitionName: "RLegKeys"
        }
      }
      Objects {
        Id: 15914734397999369616
        Name: "RLegKey"
        Transform {
          Location {
            X: 9.53673862e-07
            Y: 5.72204453e-06
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 4728492554860294566
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
      Objects {
        Id: 10251843079363567735
        Name: "RHandKeys"
        Transform {
          Location {
            X: 5.54429389e-05
            Y: 51.6765709
            Z: -0.361572266
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9336603638212974701
        ChildIds: 15637357367168830341
        ChildIds: 16769662704884349294
        ChildIds: 18067654109769967990
        ChildIds: 2380681759983440560
        ChildIds: 805546972123220282
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
          FilePartitionName: "RHandKeys"
        }
      }
      Objects {
        Id: 15637357367168830341
        Name: "RHandKey"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10251843079363567735
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
      Objects {
        Id: 16769662704884349294
        Name: "RHandKey"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10251843079363567735
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
      Objects {
        Id: 18067654109769967990
        Name: "RHandKey"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10251843079363567735
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
      Objects {
        Id: 2380681759983440560
        Name: "RHandKey"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10251843079363567735
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
      Objects {
        Id: 805546972123220282
        Name: "RHandKey"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 1
            Yaw: 1
            Roll: 1
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 10251843079363567735
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
      Objects {
        Id: 8141061427632605889
        Name: "LHandKeys"
        Transform {
          Location {
            X: 0.000133396
            Y: -46.332592
            Z: 3.82495117
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9336603638212974701
        ChildIds: 3959675151852362522
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
          FilePartitionName: "LHandKeys"
        }
      }
      Objects {
        Id: 3959675151852362522
        Name: "LHandKey"
        Transform {
          Location {
            X: 9.53673407e-07
            Y: 1.52587854e-05
          }
          Rotation {
            Yaw: -2.04905627e-05
          }
          Scale {
            X: 0.211656734
            Y: 0.211656734
            Z: 0.211656734
          }
        }
        ParentId: 8141061427632605889
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
      Objects {
        Id: 14947388216448963032
        Name: "IK"
        Transform {
          Location {
            X: -21.3121319
            Y: -50.125885
            Z: 2307.53589
          }
          Rotation {
            Yaw: -6.83018789e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12465704017221077277
        UnregisteredParameters {
          Overrides {
            Name: "cs:KeyframeInterval"
            Int: 5
          }
          Overrides {
            Name: "cs:LHand"
            ObjectReference {
              SubObjectId: 3688952605810659956
            }
          }
          Overrides {
            Name: "cs:RHand"
            ObjectReference {
              SubObjectId: 10348628034163470743
            }
          }
          Overrides {
            Name: "cs:Pelvis"
            ObjectReference {
              SubObjectId: 928808307373287390
            }
          }
          Overrides {
            Name: "cs:LFoot"
            ObjectReference {
              SubObjectId: 13659172506118267971
            }
          }
          Overrides {
            Name: "cs:RFoot"
            ObjectReference {
              SubObjectId: 16137980471196897351
            }
          }
          Overrides {
            Name: "cs:Animations"
            ObjectReference {
              SubObjectId: 10285195290243157373
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
            Id: 18215791265265690889
          }
        }
      }
    }
    Assets {
      Id: 896875555958293030
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 97
}
