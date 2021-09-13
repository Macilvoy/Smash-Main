Assets {
  Id: 2632878926356200390
  Name: "Custom Additive Soft Edge"
  PlatformAssetType: 13
  SerializationVersion: 98
  CustomMaterialAsset {
    BaseMaterialId: 13618440138369963598
    ParameterOverrides {
      Overrides {
        Name: "exponent"
        Float: 10
      }
      Overrides {
        Name: "blend distance"
        Float: 100
      }
      Overrides {
        Name: "u fade"
        Float: 1
      }
      Overrides {
        Name: "v fade"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 30.8800049
          G: 11.0431747
          A: 1
        }
      }
    }
    Assets {
      Id: 13618440138369963598
      Name: "Additive Soft Edge"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_additive_edgefade"
      }
    }
  }
}
