Assets {
  Id: 17298718872799050298
  Name: "AnimationExample"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11628994546492442730
      Objects {
        Id: 11628994546492442730
        Name: "AnimationExample"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3506290006253745887
        ChildIds: 17274251770203595426
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 3506290006253745887
        Name: "Animator"
        Transform {
          Location {
            X: -425
            Y: 215
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11628994546492442730
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimationsScript"
            AssetReference {
              Id: 13052432051172134025
            }
          }
          Overrides {
            Name: "cs:AnimatorID"
            String: "example"
          }
          Overrides {
            Name: "cs:Animation"
            String: "Example"
          }
          Overrides {
            Name: "cs:Playing"
            Bool: true
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
      Objects {
        Id: 17274251770203595426
        Name: "Folder"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
            Yaw: 89.9999313
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11628994546492442730
        ChildIds: 5209957748040719168
        ChildIds: 18188770406008747850
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 5209957748040719168
        Name: "Cylinder"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.000184415097
            Yaw: -89.9999161
            Roll: 179.999496
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 2.5
          }
        }
        ParentId: 17274251770203595426
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14918923367953411941
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 18188770406008747850
        Name: "Group"
        Transform {
          Location {
            Z: 100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17274251770203595426
        ChildIds: 2292612232617833992
        ChildIds: 7247428581306376509
        ChildIds: 17681955469561256522
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2292612232617833992
        Name: "AnimatorTag"
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
        ParentId: 18188770406008747850
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Tag2"
          }
          Overrides {
            Name: "cs:Tag:tooltip"
            String: "String used to reference objects in animations"
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
            Id: 1694776243720317494
          }
        }
      }
      Objects {
        Id: 7247428581306376509
        Name: "Cube - Arcade 03"
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
        ParentId: 18188770406008747850
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14918923367953411941
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
        CoreMesh {
          MeshAsset {
            Id: 2832132405952858652
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17681955469561256522
        Name: "Group"
        Transform {
          Location {
            Z: 50
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: -89.9998169
            Roll: 89.9996796
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18188770406008747850
        ChildIds: 10730604034562637040
        ChildIds: 15301524433346403241
        ChildIds: 7574321128501127486
        ChildIds: 2622730299263131838
        ChildIds: 13584100756583865370
        ChildIds: 7905920453576044523
        ChildIds: 2809746523328952337
        ChildIds: 1490877019667272991
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10730604034562637040
        Name: "Cylinder"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 1.70000017
          }
        }
        ParentId: 17681955469561256522
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2249794126015640337
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2
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
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 15301524433346403241
        Name: "AnimatorTag"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 0.000321018859
            Yaw: 0.000186753256
            Roll: 89.9999313
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17681955469561256522
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Tag1"
          }
          Overrides {
            Name: "cs:Tag:tooltip"
            String: "String used to reference objects in animations"
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
            Id: 1694776243720317494
          }
        }
      }
      Objects {
        Id: 7574321128501127486
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -0.000175476074
            Y: -0.0002784729
            Z: -49.9999695
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 3.10000014
            Y: 1.9000001
            Z: 1.9000001
          }
        }
        ParentId: 17681955469561256522
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2817890560817570586
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2622730299263131838
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -0.00016784668
            Y: -0.000366210938
            Z: -129.999939
          }
          Rotation {
            Yaw: -89.9996338
            Roll: 90
          }
          Scale {
            X: 3.10000014
            Y: 1.9000001
            Z: 1.9000001
          }
        }
        ParentId: 17681955469561256522
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2817890560817570586
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13584100756583865370
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -0.000343075284
            Y: -90.0007935
            Z: -129.999496
          }
          Rotation {
          }
          Scale {
            X: 0.19405885
            Y: 0.6
            Z: 1.30000007
          }
        }
        ParentId: 17681955469561256522
        ChildIds: 7840846790299076398
        ChildIds: 605917507965624113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 3902767697519824467
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 7840846790299076398
        Name: "World Text"
        Transform {
          Location {
            X: -51.5307617
            Y: 0.000169446721
            Z: 1.49130865e-05
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -179.999893
            Roll: 89.9996643
          }
          Scale {
            X: 5.84529972
            Y: 1.89055336
            Z: 0.872559607
          }
        }
        ParentId: 13584100756583865370
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Text {
          Text: "Animation"
          FontAsset {
          }
          Color {
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 605917507965624113
        Name: "AnimatorTag"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13584100756583865370
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Tag4"
          }
          Overrides {
            Name: "cs:Tag:tooltip"
            String: "String used to reference objects in animations"
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
            Id: 1694776243720317494
          }
        }
      }
      Objects {
        Id: 7905920453576044523
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -0.00113635836
            Y: -0.000274658203
            Z: 50.0001755
          }
          Rotation {
            Pitch: 90
            Yaw: -0.117308
            Roll: 179.882568
          }
          Scale {
            X: 3.10000014
            Y: 1.9000001
            Z: -1.9000001
          }
        }
        ParentId: 17681955469561256522
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2817890560817570586
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2809746523328952337
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -0.000340996252
            Y: -0.000259399414
            Z: 130
          }
          Rotation {
            Pitch: -0.000321018859
            Yaw: 90.0001907
            Roll: -89.9999237
          }
          Scale {
            X: 3.10000014
            Y: 1.9000001
            Z: -1.9000001
          }
        }
        ParentId: 17681955469561256522
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2817890560817570586
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1490877019667272991
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: 0.000343075139
            Y: 90.0006409
            Z: 129.999496
          }
          Rotation {
            Pitch: 0.000198075475
            Yaw: -179.999893
          }
          Scale {
            X: 0.19405885
            Y: 0.6
            Z: 1.30000007
          }
        }
        ParentId: 17681955469561256522
        ChildIds: 5845130556569289939
        ChildIds: 15263537759936510173
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 3902767697519824467
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5845130556569289939
        Name: "World Text"
        Transform {
          Location {
            X: -51.5299759
            Y: 0.000924033578
            Z: -0.000645624648
          }
          Rotation {
            Pitch: -0.000198075475
            Yaw: -179.999893
            Roll: 89.9998398
          }
          Scale {
            X: 5.84529972
            Y: 1.89055336
            Z: 0.872559607
          }
        }
        ParentId: 1490877019667272991
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Text {
          Text: "Example"
          FontAsset {
          }
          Color {
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 15263537759936510173
        Name: "AnimatorTag"
        Transform {
          Location {
            X: -2.18723289e-10
            Y: -2.54313109e-05
            Z: 5.73681207e-11
          }
          Rotation {
            Yaw: -5.77315866e-08
            Roll: 5.19270372e-16
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1490877019667272991
        UnregisteredParameters {
          Overrides {
            Name: "cs:Tag"
            String: "Tag3"
          }
          Overrides {
            Name: "cs:Tag:tooltip"
            String: "String used to reference objects in animations"
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
            Id: 1694776243720317494
          }
        }
      }
    }
    Assets {
      Id: 12905923173550510229
      Name: "Cylinder - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_test_001"
      }
    }
    Assets {
      Id: 14918923367953411941
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
      }
    }
    Assets {
      Id: 2832132405952858652
      Name: "Cube - Arcade 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arcade_cube_003"
      }
    }
    Assets {
      Id: 2249794126015640337
      Name: "Carbon Fiber 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_carbon-fiber_001"
      }
    }
    Assets {
      Id: 2817890560817570586
      Name: "Modern Weapon Barrel 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barrel_001"
      }
    }
    Assets {
      Id: 3902767697519824467
      Name: "Cube - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_test_001"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
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
  SerializationVersion: 97
  DirectlyPublished: true
}
