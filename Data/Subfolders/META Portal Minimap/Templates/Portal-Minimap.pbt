Assets {
  Id: 17967973572263616067
  Name: "Portal-Minimap"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18018043346765163951
      Objects {
        Id: 18018043346765163951
        Name: "Portal-Minimap"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8644509812515855202
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
          FilePartitionName: "Portal-Minimap"
        }
      }
      Objects {
        Id: 8644509812515855202
        Name: "Minimap Image"
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
        ParentId: 18018043346765163951
        ChildIds: 17680442691144747580
        ChildIds: 12923573226371324746
        ChildIds: 249161106214605418
        ChildIds: 818339855365863893
        ChildIds: 12896763651701262109
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
        Id: 17680442691144747580
        Name: "Minimap"
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
        ParentId: 8644509812515855202
        UnregisteredParameters {
          Overrides {
            Name: "cs:UIPanel"
            ObjectReference {
              SubObjectId: 3318044093986959031
            }
          }
          Overrides {
            Name: "cs:MinimapPiece"
            AssetReference {
              Id: 16006412409184537445
            }
          }
          Overrides {
            Name: "cs:MinimapLabel"
            AssetReference {
              Id: 4724191663722722461
            }
          }
          Overrides {
            Name: "cs:MinimapPlayer"
            AssetReference {
              Id: 11922076040451005832
            }
          }
          Overrides {
            Name: "cs:GradientHeight"
            Bool: true
          }
          Overrides {
            Name: "cs:ColorLow"
            Color {
              R: 0.251000017
              G: 0.251000017
              B: 0.251000017
              A: 1
            }
          }
          Overrides {
            Name: "cs:ColorHigh"
            Color {
              R: 0.804
              G: 0.804
              B: 0.804
              A: 1
            }
          }
          Overrides {
            Name: "cs:BorderColor"
            Color {
              A: 0.7
            }
          }
          Overrides {
            Name: "cs:BorderSize"
            Int: 2
          }
          Overrides {
            Name: "cs:EnableShapes"
            Bool: true
          }
          Overrides {
            Name: "cs:EnableLabels"
            Bool: true
          }
          Overrides {
            Name: "cs:RotationAngle"
            Float: 0
          }
          Overrides {
            Name: "cs:GradientHeight:tooltip"
            String: "If true, the minimap pieces will be colored based on their Z position relative to the rest of the map."
          }
          Overrides {
            Name: "cs:MinimapPlayer:tooltip"
            String: "The UI template that represents players."
          }
          Overrides {
            Name: "cs:MinimapLabel:tooltip"
            String: "The UI template that represents World Text objects."
          }
          Overrides {
            Name: "cs:MinimapPiece:tooltip"
            String: "The UI template that represents 3D geometry."
          }
          Overrides {
            Name: "cs:ColorLow:tooltip"
            String: "If GradientHeight is true, this is the color at the lowest Z, that multiplies against the geometry color."
          }
          Overrides {
            Name: "cs:ColorHigh:tooltip"
            String: "If GradientHeight is true, this is the color at the highest Z that multiplies against the geometry color."
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
            Id: 17347876884598208375
          }
        }
      }
      Objects {
        Id: 12923573226371324746
        Name: "3D"
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
        ParentId: 8644509812515855202
        ChildIds: 7603445612728353169
        ChildIds: 4481330761864009335
        ChildIds: 11226998906482304883
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 7603445612728353169
        Name: "World Text"
        Transform {
          Location {
            X: -1805
            Y: -4390
            Z: 218.174103
          }
          Rotation {
            Pitch: 90
            Roll: 180
          }
          Scale {
            X: 46.3999863
            Y: 46.3999863
            Z: 46.3999863
          }
        }
        ParentId: 12923573226371324746
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
        Text {
          Text: "A"
          FontAsset {
          }
          Color {
            R: 1
            G: 1
            B: 1
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
        Id: 4481330761864009335
        Name: "World Text"
        Transform {
          Location {
            X: 1870
            Y: 4545
            Z: 218.174103
          }
          Rotation {
            Pitch: 90
            Yaw: 4.55345935e-06
            Roll: -179.999969
          }
          Scale {
            X: 46.3999863
            Y: 46.3999863
            Z: 46.3999863
          }
        }
        ParentId: 12923573226371324746
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
        Text {
          Text: "B"
          FontAsset {
          }
          Color {
            R: 1
            G: 1
            B: 1
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
        Id: 11226998906482304883
        Name: "Plane 1m"
        Transform {
          Location {
            Z: 11.9101562
          }
          Rotation {
          }
          Scale {
            X: 50
            Y: 108.820732
            Z: 1
          }
        }
        ParentId: 12923573226371324746
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319665013313339573
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.191111207
              B: 0.090000093
              A: 1
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
            Id: 16048367406070731799
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
        Id: 249161106214605418
        Name: "Minimap Container"
        Transform {
          Location {
            X: -3310
            Y: 12580
            Z: 2810
          }
          Rotation {
            Yaw: 135
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8644509812515855202
        ChildIds: 3318044093986959031
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            TwoSided: true
            TickWhenOffScreen: true
            RedrawTime: 30
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 3318044093986959031
        Name: "Minimap Panel"
        Transform {
          Location {
            X: -3310
            Y: 12580
            Z: 2810
          }
          Rotation {
            Yaw: 135
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 249161106214605418
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 500
          Height: 500
          UIX: -305
          UIY: 290
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
      }
      Objects {
        Id: 818339855365863893
        Name: "MinimapSetup"
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
        ParentId: 8644509812515855202
        ChildIds: 7525208511836801991
        ChildIds: 4101510771310601330
        ChildIds: 12078363382311588625
        UnregisteredParameters {
          Overrides {
            Name: "cs:IsDevMode"
            Bool: true
          }
          Overrides {
            Name: "cs:ScaleMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:CameraModeKeybind"
            String: "ability_extra_0"
          }
          Overrides {
            Name: "cs:CameraZoomOutKeybind"
            String: "ability_extra_7"
          }
          Overrides {
            Name: "cs:CameraZoomInKeybind"
            String: "ability_extra_8"
          }
          Overrides {
            Name: "cs:HideMapObjectKeybind"
            String: "ability_extra_5"
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 7525208511836801991
        Name: "MinimapImageClient"
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
        ParentId: 818339855365863893
        UnregisteredParameters {
          Overrides {
            Name: "cs:GetAbsoluteUI"
            AssetReference {
              Id: 5300685857146001677
            }
          }
          Overrides {
            Name: "cs:MiniMapObject"
            ObjectReference {
              SubObjectId: 12896763651701262109
            }
          }
          Overrides {
            Name: "cs:MiniMapPanel"
            ObjectReference {
              SubObjectId: 3318044093986959031
            }
          }
          Overrides {
            Name: "cs:MinimapSetup"
            ObjectReference {
              SubObjectId: 818339855365863893
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
            Id: 2265245987880841551
          }
        }
      }
      Objects {
        Id: 4101510771310601330
        Name: "MinimapImageCapture"
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
        ParentId: 818339855365863893
        UnregisteredParameters {
          Overrides {
            Name: "cs:Minimap"
            ObjectReference {
              SubObjectId: 17680442691144747580
            }
          }
          Overrides {
            Name: "cs:Camera"
            ObjectReference {
              SubObjectId: 12078363382311588625
            }
          }
          Overrides {
            Name: "cs:MinimapSetup"
            ObjectReference {
              SubObjectId: 818339855365863893
            }
          }
          Overrides {
            Name: "cs:UIContainer"
            ObjectReference {
              SubObjectId: 249161106214605418
            }
          }
          Overrides {
            Name: "cs:3D"
            ObjectReference {
              SubObjectId: 12923573226371324746
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
            Id: 10241922560006744065
          }
        }
      }
      Objects {
        Id: 12078363382311588625
        Name: "ScreenshotCamera"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 818339855365863893
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          IsOrthographic: true
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
          DoesPositionOffsetSpring: true
          UseAsAudioListener: true
        }
      }
      Objects {
        Id: 12896763651701262109
        Name: "MapImageObjectGroup"
        Transform {
          Location {
            X: 0.390244871
            Y: -0.0279068947
            Z: 3834.76807
          }
          Rotation {
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8644509812515855202
        ChildIds: 8943052937603596454
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8943052937603596454
        Name: "Game Portal"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.1429
            Y: 0.125
            Z: 0.071
          }
        }
        ParentId: 12896763651701262109
        UnregisteredParameters {
          Overrides {
            Name: "bp:Portal Shape"
            Int: 2
          }
          Overrides {
            Name: "bp:Edge Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Portal Spread"
            Float: 1
          }
          Overrides {
            Name: "bp:View Distortion Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Intersection Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Unlit"
            Bool: true
          }
          Overrides {
            Name: "bp:Disable Swirl and Edge"
            Bool: false
          }
          Overrides {
            Name: "bp:Mask Range"
            Float: 1
          }
          Overrides {
            Name: "bp:Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Swirl Element Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Distortion"
            Float: 0
          }
          Overrides {
            Name: "bp:Use World Capture"
            Bool: false
          }
          Overrides {
            Name: "bp:Color Offset A"
            Float: 0.0261588935
          }
          Overrides {
            Name: "bp:Color Offset B"
            Float: 0.170215309
          }
          Overrides {
            Name: "bp:Color Offset C"
            Float: 0.364886165
          }
          Overrides {
            Name: "bp:Intensity Color Blend"
            Float: 0.325952
          }
          Overrides {
            Name: "bp:Game ID"
            String: ""
          }
          Overrides {
            Name: "bp:Screenshot Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: false
          }
          Overrides {
            Name: "bp:Use Radial Mask"
            Bool: false
          }
          Overrides {
            Name: "bp:Mask Hardness"
            Float: 1
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 0
          }
          Overrides {
            Name: "bp:Horizontal Bend Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Vertical Bend Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:U Scale"
            Float: 0.93
          }
          Overrides {
            Name: "bp:V Scale"
            Float: 0.93
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
        Blueprint {
          BlueprintAsset {
            Id: 17413793273080869839
          }
          TeamSettings {
          }
        }
      }
    }
    Assets {
      Id: 16048367406070731799
      Name: "Plane 1m - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_1m_001"
      }
    }
    Assets {
      Id: 7319665013313339573
      Name: "Terrain Grid Glow Topographical"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_grid_topographical_001_wa"
      }
    }
    Assets {
      Id: 17413793273080869839
      Name: "Game Portal"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_webportal"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Meta Portal Minimap is a component that allows creators to place high-quailty screenshots as a minimap backdrop, through the use of portals in their game. \r\n\r\nMake sure to read the Portal-MiniMap_ReadMe file for setup and configuration instructions\r\n\r\nMessage @Buckmonster or @Chris in Discord with feedback or feature requests - https://discord.com/invite/core-creators\r\n\r\nThanks to:\r\n\342\200\242 @Buckmonster - Feedback & Design Direction\r\n\342\200\242 @Chris - Documentation & Feedback\r\n\342\200\242 @Divided - Orginal Development\r\n\342\200\242 @Morticai - Development and packaging for Community Content\r\n\342\200\242 @Ooccoo - Development & Documentation\r\n\342\200\242 @Waffle - Developed AbsoluteUI\r\n\342\200\242 @blaking707 - Feedback & Support\r\n"
  }
  SerializationVersion: 98
  DirectlyPublished: true
}
