Assets {
  Id: 5891737918321351537
  Name: "Custom Base Material from Rock 01"
  PlatformAssetType: 13
  SerializationVersion: 98
  CustomMaterialAsset {
    BaseMaterialId: 3486874658001383117
    ParameterOverrides {
      Overrides {
        Name: "cmp:Top"
        AssetReference {
          Id: 4228988398208430757
        }
      }
      Overrides {
        Name: "cmp:Sides"
        AssetReference {
          Id: 13509975186060664859
        }
      }
      Overrides {
        Name: "cmpc:Top"
        Color {
          R: 0.00784314517
          G: 0.533333361
          B: 0.226797566
          A: 1
        }
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 10
      }
      Overrides {
        Name: "cmpc:Sides"
        Color {
          R: 0.817000031
          G: 0.628743172
          B: 0.476310968
          A: 1
        }
      }
      Overrides {
        Name: "side_scale"
        Float: 1
      }
      Overrides {
        Name: "top_scale"
        Float: 2
      }
      Overrides {
        Name: "density"
        Float: 1
      }
      Overrides {
        Name: "splotchiness"
        Float: 0.0626249462
      }
      Overrides {
        Name: "edge_wear_top"
        Float: 1
      }
      Overrides {
        Name: "edge_roughness_top"
        Float: 1
      }
    }
    Assets {
      Id: 3486874658001383117
      Name: "Composite Triplanar Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_composite_triplanar_wa"
      }
    }
    Assets {
      Id: 4228988398208430757
      Name: "Artificial Grass 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_artificial_001_uv_ref"
      }
    }
    Assets {
      Id: 13509975186060664859
      Name: "Cliff 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_002"
      }
    }
  }
}
