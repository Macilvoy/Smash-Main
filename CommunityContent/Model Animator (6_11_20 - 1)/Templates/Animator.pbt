Assets {
  Id: 17412124542762071130
  Name: "Animator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9114176595557739882
      Objects {
        Id: 9114176595557739882
        Name: "Animator"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimationsScript"
            AssetReference {
              Id: 13052432051172134025
            }
          }
          Overrides {
            Name: "cs:AnimatorID"
            String: ""
          }
          Overrides {
            Name: "cs:Animation"
            String: ""
          }
          Overrides {
            Name: "cs:Playing"
            Bool: false
          }
          Overrides {
            Name: "cs:Loop"
            Bool: true
          }
          Overrides {
            Name: "cs:FixedLoop"
            Bool: false
          }
          Overrides {
            Name: "cs:Animation:tooltip"
            String: "Currently selected animation"
          }
          Overrides {
            Name: "cs:Playing:tooltip"
            String: "Whether the animation is paused or not"
          }
          Overrides {
            Name: "cs:Loop:tooltip"
            String: "Whether to loop the animation"
          }
          Overrides {
            Name: "cs:FixedLoop:tooltip"
            String: "A fixed loop will reset the animation after the last frame is played"
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
        Script {
          ScriptAsset {
            Id: 6528316982543658039
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "A powerful, flexible and fairly efficient tool used for model animation. Instructions inside the Animations script.\r\nWARNING: Backup your animations before updating!\r\nExample animation: https://imgur.com/a/MDiOhok"
  }
  SerializationVersion: 98
  DirectlyPublished: true
}
