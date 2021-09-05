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
            Name: "cs:ID:isrep"
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
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 97
}
