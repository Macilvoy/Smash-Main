Assets {
  Id: 16203564287765967146
  Name: "Custom Base Material from Rock 01_1"
  PlatformAssetType: 13
  SerializationVersion: 98
  CustomMaterialAsset {
    BaseMaterialId: 3486874658001383117
    ParameterOverrides {
      Overrides {
        Name: "cmp:Top"
        AssetReference {
          Id: 8979020746799843820
        }
      }
      Overrides {
        Name: "cmpc:Top"
        Color {
          G: 1
          B: 0.403974056
          A: 1
        }
      }
      Overrides {
        Name: "cmp:Sides"
        AssetReference {
          Id: 13509975186060664859
        }
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 5
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
      Id: 8979020746799843820
      Name: "Hay 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_hay_001_uv"
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
