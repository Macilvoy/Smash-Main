Name: "Macilvoy"
RootId: 1602072049588011465
Objects {
  Id: 5834764046906664839
  Name: "test"
  Transform {
    Location {
      X: -30
      Y: 70.8844833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
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
    FilePartitionName: "test"
  }
}
Objects {
  Id: 13602796716702732314
  Name: "Humanoid 1 Rig"
  Transform {
    Location {
      X: -179.430878
      Z: -2202.53589
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
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
      Id: 15006897881222808420
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_bind_pose"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 13225800027566452361
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
}
Objects {
  Id: 17901890061001034731
  Name: "Default Floor"
  Transform {
    Location {
      Z: -2357.53589
    }
    Rotation {
    }
    Scale {
      X: 75.4936676
      Y: 111.066528
      Z: 1
    }
  }
  ParentId: 1602072049588011465
  UnregisteredParameters {
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
      Id: 12095835209017042614
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
  Id: 14301346932447682163
  Name: "Animation System"
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
  ParentId: 1602072049588011465
  ChildIds: 6038688141672041448
  ChildIds: 2197151806955002816
  ChildIds: 1665461738386295316
  ChildIds: 5760272398948147802
  ChildIds: 6255350745831249585
  ChildIds: 3845970722890223220
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
  Equipment {
    SocketName: "pelvis"
    PickupTrigger {
      SelfId: 6038688141672041448
    }
  }
  InstanceHistory {
    SelfId: 14301346932447682163
    SubobjectId: 6906311244854679834
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
    WasRoot: true
  }
}
Objects {
  Id: 3845970722890223220
  Name: "ClientContext"
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
  ParentId: 14301346932447682163
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
  InstanceHistory {
    SelfId: 3845970722890223220
    SubobjectId: 12465704017221077277
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
  }
}
Objects {
  Id: 6255350745831249585
  Name: "IK"
  Transform {
    Location {
      X: -21.3121319
      Y: -50.125885
      Z: 2307.53589
    }
    Rotation {
      Yaw: -6.83018561e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14301346932447682163
  UnregisteredParameters {
    Overrides {
      Name: "cs:KeyframeInterval"
      Int: 1
    }
    Overrides {
      Name: "cs:LHand"
      ObjectReference {
        SelfId: 12290737789748335901
      }
    }
    Overrides {
      Name: "cs:RHand"
      ObjectReference {
        SelfId: 1602441857861007102
      }
    }
    Overrides {
      Name: "cs:Pelvis"
      ObjectReference {
        SelfId: 10755572289481826487
      }
    }
    Overrides {
      Name: "cs:LFoot"
      ObjectReference {
        SelfId: 2607464584155882282
      }
    }
    Overrides {
      Name: "cs:RFoot"
      ObjectReference {
        SelfId: 5068006998186006318
      }
    }
    Overrides {
      Name: "cs:Animations"
      ObjectReference {
        SelfId: 1665461738386295316
      }
    }
    Overrides {
      Name: "cs:AnimationSystem"
      ObjectReference {
        SelfId: 14301346932447682163
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
      Id: 18215791265265690889
    }
  }
  InstanceHistory {
    SelfId: 6255350745831249585
    SubobjectId: 14947388216448963032
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
  }
}
Objects {
  Id: 5760272398948147802
  Name: "Anchor"
  Transform {
    Location {
      Y: 9.53674316e-07
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14301346932447682163
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
    IsFilePartition: true
    FilePartitionName: "Anchor"
  }
  InstanceHistory {
    SelfId: 5760272398948147802
    SubobjectId: 15442890423990314291
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
  }
}
Objects {
  Id: 1665461738386295316
  Name: "Animations"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -6.83018561e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14301346932447682163
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
    IsFilePartition: true
    FilePartitionName: "Animations"
  }
  InstanceHistory {
    SelfId: 1665461738386295316
    SubobjectId: 10285195290243157373
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
  }
}
Objects {
  Id: 2197151806955002816
  Name: "NewScript_1"
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
  ParentId: 14301346932447682163
  UnregisteredParameters {
    Overrides {
      Name: "cs:AnimationSystem"
      ObjectReference {
        SelfId: 14301346932447682163
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
      Id: 9570767685514965570
    }
  }
}
Objects {
  Id: 6038688141672041448
  Name: "Equip Trigger"
  Transform {
    Location {
      X: -2.94620514
      Y: -1.67046261
      Z: 5.70141602
    }
    Rotation {
      Yaw: 90
    }
    Scale {
      X: 0.159397885
      Y: 0.159397885
      Z: 0.159397885
    }
  }
  ParentId: 14301346932447682163
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
  InstanceHistory {
    SelfId: 6038688141672041448
    SubobjectId: 14586324534178745473
    InstanceId: 1149481586272547391
    TemplateId: 9800851363915619213
  }
}
Objects {
  Id: 16231348508885230368
  Name: "Third Person Camera Settings"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1602072049588011465
  ChildIds: 1717891859878914807
  ChildIds: 2845234701945877748
  UnregisteredParameters {
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 16231348508885230368
    SubobjectId: 6230487291917958532
    InstanceId: 14263285556400518742
    TemplateId: 1114260666827892489
    WasRoot: true
  }
}
Objects {
  Id: 2845234701945877748
  Name: "Client Context"
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
  ParentId: 16231348508885230368
  ChildIds: 2085997579657930824
  UnregisteredParameters {
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
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 2845234701945877748
    SubobjectId: 10397188341633673808
    InstanceId: 14263285556400518742
    TemplateId: 1114260666827892489
  }
}
Objects {
  Id: 2085997579657930824
  Name: "Macilvoy Camera"
  Transform {
    Location {
      Z: 500
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2845234701945877748
  UnregisteredParameters {
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
  Camera {
    AttachToLocalPlayer: true
    InitialDistance: 400
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
      Y: 60
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:lookangle"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
    UseAsAudioListener: true
  }
  InstanceHistory {
    SelfId: 2085997579657930824
    SubobjectId: 12377164915522451180
    InstanceId: 14263285556400518742
    TemplateId: 1114260666827892489
  }
}
Objects {
  Id: 1717891859878914807
  Name: "Macilvoy Player Settings"
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
  ParentId: 16231348508885230368
  UnregisteredParameters {
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
  Settings {
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 44
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:lookrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:faceaimwhenactive"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      IsCrouchEnabled: true
      IsJumpEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      AppearanceChannelingTime: 2
      MountChannelingTime: 2
      FlipOnMultiJump: true
      CanMoveUp: true
      CanMoveDown: true
      IsMountEnabled: true
      MaxHitpoints: 100
    }
  }
  InstanceHistory {
    SelfId: 1717891859878914807
    SubobjectId: 11592647923584693331
    InstanceId: 14263285556400518742
    TemplateId: 1114260666827892489
  }
}
