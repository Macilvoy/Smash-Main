Assets {
  Id: 7953687351925473899
  Name: "AnimSystem"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16862207575556678699
      Objects {
        Id: 16862207575556678699
        Name: "AnimSystem"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1602072049588011465
        ChildIds: 246236180669596318
        ChildIds: 873712849955385449
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
        Id: 246236180669596318
        Name: "Equip Trigger"
        Transform {
          Location {
            X: -2.94620514
            Y: -1.67046261
            Z: 132.956146
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 0.159397885
            Y: 0.159397885
            Z: 0.159397885
          }
        }
        ParentId: 16862207575556678699
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
      Objects {
        Id: 873712849955385449
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
        ParentId: 16862207575556678699
        ChildIds: 13200992519664057778
        ChildIds: 8620990559392450149
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
        Id: 13200992519664057778
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
        ParentId: 873712849955385449
        ChildIds: 10403845266351846015
        ChildIds: 15481509073809525546
        ChildIds: 14757338047294381846
        ChildIds: 4209656537342907180
        ChildIds: 1082658071119653520
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
        Id: 10403845266351846015
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
        ParentId: 13200992519664057778
        ChildIds: 4612261236627088171
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
        Id: 4612261236627088171
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
        ParentId: 10403845266351846015
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
        Id: 15481509073809525546
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
        ParentId: 13200992519664057778
        ChildIds: 16364030739436989565
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
        Id: 16364030739436989565
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
        ParentId: 15481509073809525546
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
        Id: 14757338047294381846
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
        ParentId: 13200992519664057778
        ChildIds: 6800708924084253992
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
        Id: 6800708924084253992
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
        ParentId: 14757338047294381846
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
        Id: 4209656537342907180
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
        ParentId: 13200992519664057778
        ChildIds: 14843046196854060838
        ChildIds: 13611939432672298394
        ChildIds: 12292141708100111146
        ChildIds: 2738920136884451864
        ChildIds: 440855379163927868
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
        Id: 14843046196854060838
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
        ParentId: 4209656537342907180
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
        Id: 13611939432672298394
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
        ParentId: 4209656537342907180
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
        Id: 12292141708100111146
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
        ParentId: 4209656537342907180
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
        Id: 2738920136884451864
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
        ParentId: 4209656537342907180
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
        Id: 440855379163927868
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
        ParentId: 4209656537342907180
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
        Id: 1082658071119653520
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
        ParentId: 13200992519664057778
        ChildIds: 12526111708247342104
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
        Id: 12526111708247342104
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
        ParentId: 1082658071119653520
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
        Id: 8620990559392450149
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
        ParentId: 873712849955385449
        ChildIds: 14331986065580738137
        ChildIds: 3141128810062802403
        ChildIds: 100038613784968376
        ChildIds: 18243594681279144243
        ChildIds: 6010540917659688722
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
        Id: 14331986065580738137
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
        ParentId: 8620990559392450149
        ChildIds: 840231174552681056
        ChildIds: 4637766264881125938
        ChildIds: 10927335109146516929
        ChildIds: 2997389456901902284
        ChildIds: 18104948327291996354
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
        Id: 840231174552681056
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
        ParentId: 14331986065580738137
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
        Id: 4637766264881125938
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
        ParentId: 14331986065580738137
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
        Id: 10927335109146516929
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
        ParentId: 14331986065580738137
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
        Id: 2997389456901902284
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
        ParentId: 14331986065580738137
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
        Id: 18104948327291996354
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
        ParentId: 14331986065580738137
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
        Id: 3141128810062802403
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
        ParentId: 8620990559392450149
        ChildIds: 1249107509505789801
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
        Id: 1249107509505789801
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
        ParentId: 3141128810062802403
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
        Id: 100038613784968376
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
        ParentId: 8620990559392450149
        ChildIds: 4675986563981650938
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
        Id: 4675986563981650938
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
        ParentId: 100038613784968376
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
        Id: 18243594681279144243
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
        ParentId: 8620990559392450149
        ChildIds: 16326716770125507929
        ChildIds: 15289545182270140541
        ChildIds: 11105015118671466867
        ChildIds: 11244761722459633730
        ChildIds: 10768385010806555166
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
        Id: 16326716770125507929
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
        ParentId: 18243594681279144243
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
        Id: 15289545182270140541
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
        ParentId: 18243594681279144243
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
        Id: 11105015118671466867
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
        ParentId: 18243594681279144243
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
        Id: 11244761722459633730
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
        ParentId: 18243594681279144243
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
        Id: 10768385010806555166
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
        ParentId: 18243594681279144243
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
        Id: 6010540917659688722
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
        ParentId: 8620990559392450149
        ChildIds: 6304788845215470938
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
        Id: 6304788845215470938
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
        ParentId: 6010540917659688722
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
