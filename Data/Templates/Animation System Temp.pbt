Assets {
  Id: 5424261135471399148
  Name: "Animation System Temp"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4993281394877641806
      Objects {
        Id: 4993281394877641806
        Name: "Animation System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1602072049588011465
        ChildIds: 836462172530967330
        ChildIds: 3077283609159087692
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
            SubObjectId: 3077283609159087692
          }
        }
      }
      Objects {
        Id: 836462172530967330
        Name: "AnimSystem"
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
        ParentId: 4993281394877641806
        ChildIds: 15813375359408469297
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
        Id: 15813375359408469297
        Name: "Animations"
        Transform {
          Location {
            Z: 118.557
          }
          Rotation {
            Yaw: -6.83018379e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 836462172530967330
        ChildIds: 16053762601804847825
        ChildIds: 2608496274101750597
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
        Id: 16053762601804847825
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
        ParentId: 15813375359408469297
        ChildIds: 6350282545088569699
        ChildIds: 10770312194170281297
        ChildIds: 14969327454449270598
        ChildIds: 12995454862389746446
        ChildIds: 16828858091835652339
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
        Id: 6350282545088569699
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
        ParentId: 16053762601804847825
        ChildIds: 1093236926781764174
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
        Id: 1093236926781764174
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
        ParentId: 6350282545088569699
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
        Id: 10770312194170281297
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
        ParentId: 16053762601804847825
        ChildIds: 741055763904863495
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
        Id: 741055763904863495
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
        ParentId: 10770312194170281297
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
        Id: 14969327454449270598
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
        ParentId: 16053762601804847825
        ChildIds: 8991959424159071122
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
        Id: 8991959424159071122
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
        ParentId: 14969327454449270598
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
        Id: 12995454862389746446
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
        ParentId: 16053762601804847825
        ChildIds: 12887400298069304252
        ChildIds: 14337009832221573605
        ChildIds: 8611901861492632050
        ChildIds: 11503408644441453880
        ChildIds: 16630393966992198411
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
        Id: 12887400298069304252
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
        ParentId: 12995454862389746446
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 14337009832221573605
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
        ParentId: 12995454862389746446
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 8611901861492632050
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
        ParentId: 12995454862389746446
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 11503408644441453880
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
        ParentId: 12995454862389746446
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 16630393966992198411
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
        ParentId: 12995454862389746446
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 16828858091835652339
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
        ParentId: 16053762601804847825
        ChildIds: 1370482566556928084
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
        Id: 1370482566556928084
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
        ParentId: 16828858091835652339
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
        Id: 2608496274101750597
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
        ParentId: 15813375359408469297
        ChildIds: 14715445316333581267
        ChildIds: 14465813841668265509
        ChildIds: 1686090715687726259
        ChildIds: 16063795666473779580
        ChildIds: 6223840775137333398
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
        Id: 14715445316333581267
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
        ParentId: 2608496274101750597
        ChildIds: 8932017622814868683
        ChildIds: 12764416555629711800
        ChildIds: 12598510922311822728
        ChildIds: 17129057689566196472
        ChildIds: 10065945649538176290
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
        Id: 8932017622814868683
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
        ParentId: 14715445316333581267
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
        Id: 12764416555629711800
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
        ParentId: 14715445316333581267
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
        Id: 12598510922311822728
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
        ParentId: 14715445316333581267
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
        Id: 17129057689566196472
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
        ParentId: 14715445316333581267
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
        Id: 10065945649538176290
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
        ParentId: 14715445316333581267
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
        Id: 14465813841668265509
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
        ParentId: 2608496274101750597
        ChildIds: 145095462118444799
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
        Id: 145095462118444799
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
        ParentId: 14465813841668265509
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
        Id: 1686090715687726259
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
        ParentId: 2608496274101750597
        ChildIds: 15401078704418612457
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
        Id: 15401078704418612457
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
        ParentId: 1686090715687726259
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
        Id: 16063795666473779580
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
        ParentId: 2608496274101750597
        ChildIds: 1749512407285207042
        ChildIds: 3050256066929561119
        ChildIds: 15626985768879969520
        ChildIds: 2097000210918701643
        ChildIds: 14957296246513232356
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
        Id: 1749512407285207042
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
        ParentId: 16063795666473779580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 3050256066929561119
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
        ParentId: 16063795666473779580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 15626985768879969520
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
        ParentId: 16063795666473779580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 2097000210918701643
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
        ParentId: 16063795666473779580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 14957296246513232356
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
        ParentId: 16063795666473779580
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Objects {
        Id: 6223840775137333398
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
        ParentId: 2608496274101750597
        ChildIds: 11841553748086792400
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
        Id: 11841553748086792400
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
        ParentId: 6223840775137333398
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
        Id: 3077283609159087692
        Name: "Equip Trigger"
        Transform {
          Location {
            X: -2.94620514
            Y: -1.67046261
            Z: 132.956146
          }
          Rotation {
            Yaw: 89.9999771
          }
          Scale {
            X: 0.159397885
            Y: 0.159397885
            Z: 0.159397885
          }
        }
        ParentId: 4993281394877641806
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
  SerializationVersion: 98
}
