Assets {
  Id: 13438937884441316544
  Name: "Animation Demo"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17217080029088343204
      Objects {
        Id: 17217080029088343204
        Name: "Animation Demo"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2123877657091907197
        ChildIds: 4689701451538030738
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
        Id: 2123877657091907197
        Name: "Cube - Bottom-Aligned"
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
        ParentId: 17217080029088343204
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 743799156276359414
            }
          }
        }
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
            Id: 17259318698646004370
          }
          Teams {
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
        Id: 4689701451538030738
        Name: "Easing Animation Demo"
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
        ParentId: 17217080029088343204
        UnregisteredParameters {
          Overrides {
            Name: "cs:Ease3D"
            AssetReference {
              Id: 5394432703272955866
            }
          }
          Overrides {
            Name: "cs:Target"
            ObjectReference {
              SubObjectId: 2123877657091907197
            }
          }
          Overrides {
            Name: "cs:Target_Position"
            Vector {
              Z: 300
            }
          }
          Overrides {
            Name: "cs:Target_Rotation"
            Rotator {
              Yaw: 720
            }
          }
          Overrides {
            Name: "cs:Target_Scale"
            Vector {
              X: 1.5
              Y: 1.5
              Z: 1.5
            }
          }
          Overrides {
            Name: "cs:Duration"
            Float: 3
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
            Id: 878942505400556116
          }
        }
      }
    }
    Assets {
      Id: 17259318698646004370
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 743799156276359414
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Download this template to see the finished version of my YouTube tutorial!\r\nAdded a README with a link to the original tutorial."
  }
  SerializationVersion: 98
  DirectlyPublished: true
}
