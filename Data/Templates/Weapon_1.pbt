Assets {
  Id: 1631740233020662359
  Name: "Weapon"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6125797174319189715
      Objects {
        Id: 6125797174319189715
        Name: "Weapon"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15697316326971708870
        ChildIds: 17460171835214601293
        ChildIds: 10681324258899337536
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
          IsGroup: true
        }
      }
      Objects {
        Id: 15697316326971708870
        Name: "WeaponRandom"
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
        ParentId: 6125797174319189715
        UnregisteredParameters {
          Overrides {
            Name: "cs:RPW1"
            AssetReference {
              Id: 17463266393616819266
            }
          }
          Overrides {
            Name: "cs:LPW1"
            AssetReference {
              Id: 10817034327683345838
            }
          }
          Overrides {
            Name: "cs:DHW2"
            AssetReference {
              Id: 17838240483224055837
            }
          }
          Overrides {
            Name: "cs:RPW3"
            AssetReference {
              Id: 4479400911955135921
            }
          }
          Overrides {
            Name: "cs:RPW4"
            AssetReference {
              Id: 5741480150778247590
            }
          }
          Overrides {
            Name: "cs:RPW5"
            AssetReference {
              Id: 10892373483666863582
            }
          }
          Overrides {
            Name: "cs:Weapon"
            ObjectReference {
              SubObjectId: 17460171835214601293
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
            Id: 13114609352074488029
          }
        }
      }
      Objects {
        Id: 17460171835214601293
        Name: "Weapon"
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
        ParentId: 6125797174319189715
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            Int: 3
          }
          Overrides {
            Name: "cs:isEquipped"
            Bool: false
          }
          Overrides {
            Name: "cs:ID:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:isEquipped:isrep"
            Bool: true
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
        Id: 10681324258899337536
        Name: "DialogWindow"
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
        ParentId: 6125797174319189715
        ChildIds: 4896065686684080801
        ChildIds: 13551782555001820347
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
        Id: 4896065686684080801
        Name: "WeaponDialogControl"
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
        ParentId: 10681324258899337536
        UnregisteredParameters {
          Overrides {
            Name: "cs:Weapon"
            ObjectReference {
              SubObjectId: 17460171835214601293
            }
          }
          Overrides {
            Name: "cs:WeaponDialogWindow"
            ObjectReference {
              SubObjectId: 13551782555001820347
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
            Id: 7446649828379794906
          }
        }
      }
      Objects {
        Id: 13551782555001820347
        Name: "WeaponDialogWindow"
        Transform {
          Location {
            Z: 250
          }
          Rotation {
          }
          Scale {
            X: 1.1
            Y: 1.1
            Z: 1.1
          }
        }
        ParentId: 10681324258899337536
        ChildIds: 11013497867128530146
        ChildIds: 13592988156577624998
        ChildIds: 1435099818426317001
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
          IsGroup: true
        }
      }
      Objects {
        Id: 11013497867128530146
        Name: "Prism - 3-Sided"
        Transform {
          Location {
            X: -5.69662571
            Y: 0.909090877
            Z: 1.81818175
          }
          Rotation {
            Pitch: 59.999958
            Yaw: -89.9999695
            Roll: -89.9999695
          }
          Scale {
            X: 0.3
            Y: 0.3
            Z: 0.01
          }
        }
        ParentId: 13551782555001820347
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15099855931062903774
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
        CoreMesh {
          MeshAsset {
            Id: 4905110911351917977
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
        Id: 13592988156577624998
        Name: "Text 03: Q"
        Transform {
          Location {
            X: 4.090909
            Y: -16.364
            Z: 24.545454
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 13551782555001820347
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 15099855931062903774
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 15099855931062903774
            }
          }
          Overrides {
            Name: "ma:Font.Faces:color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 15099855931062903774
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 159119758430980031
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
        Id: 1435099818426317001
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: -5
            Y: 0.909090877
            Z: 42.727272
          }
          Rotation {
          }
          Scale {
            X: 0.01
            Y: 1
            Z: 0.75
          }
        }
        ParentId: 13551782555001820347
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15099855931062903774
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
        CoreMesh {
          MeshAsset {
            Id: 15662352494033825834
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
      Id: 4905110911351917977
      Name: "Prism - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_001"
      }
    }
    Assets {
      Id: 15099855931062903774
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
    Assets {
      Id: 159119758430980031
      Name: "Text 03: J"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_009"
      }
    }
    Assets {
      Id: 15662352494033825834
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 98
}
