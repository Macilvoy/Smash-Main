local ANIMS={}
ANIMS.WEAPONS={}
for weaponID=1,100 do
    ANIMS.WEAPONS[weaponID]={}
    ANIMS.WEAPONS[weaponID]["ADE"]={}
    ANIMS.WEAPONS[weaponID]["SE"]={}
    ANIMS.WEAPONS[weaponID]["WE"]={}
    for frameID=1,10 do
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]={}
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]["LHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]["RHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]["LFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]["RFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["ADE"][frameID]["PAnchor"]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]["LHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]["RHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]["LFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]["RFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["SE"][frameID]["PAnchor"]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]["LHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]["RHAnchor"]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]["LFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]["RFAnchor"]={}
        ANIMS.WEAPONS[weaponID]["WE"][frameID]["PAnchor"]={}
    end
end
--====================ADE1=======================
-----------frame--------------
ANIMS.WEAPONS[1]["ADE"][1]["LHAnchor"]["Position"]=Vector3.New(65,-30,-80)
ANIMS.WEAPONS[1]["ADE"][1]["LHAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[1]["ADE"][1]["LHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[1]["ADE"][1]["RHAnchor"]["Position"]=Vector3.New(65,30,-80)
ANIMS.WEAPONS[1]["ADE"][1]["RHAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[1]["ADE"][1]["RHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[1]["ADE"][1]["LFAnchor"]["Position"]=Vector3.New(-20,-10,-240)
ANIMS.WEAPONS[1]["ADE"][1]["LFAnchor"]["Rotation"]=Rotation.New(0,10,0)
ANIMS.WEAPONS[1]["ADE"][1]["LFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["ADE"][1]["RFAnchor"]["Position"]=Vector3.New(20,10,-240)
ANIMS.WEAPONS[1]["ADE"][1]["RFAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[1]["ADE"][1]["RFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["ADE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["ADE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,-10,0)
-----------frame--------------
ANIMS.WEAPONS[1]["ADE"][2]["LHAnchor"]["Position"]=Vector3.New(45,-30,-80)
ANIMS.WEAPONS[1]["ADE"][2]["LHAnchor"]["Rotation"]=Rotation.New(0,20,0)
ANIMS.WEAPONS[1]["ADE"][2]["LHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[1]["ADE"][2]["RHAnchor"]["Position"]=Vector3.New(45,30,-60)
ANIMS.WEAPONS[1]["ADE"][2]["RHAnchor"]["Rotation"]=Rotation.New(0,30,0)
ANIMS.WEAPONS[1]["ADE"][2]["RHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[1]["ADE"][2]["LFAnchor"]["Position"]=Vector3.New(-20,-10,-240)
ANIMS.WEAPONS[1]["ADE"][2]["LFAnchor"]["Rotation"]=Rotation.New(0,10,0)
ANIMS.WEAPONS[1]["ADE"][2]["LFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["ADE"][2]["RFAnchor"]["Position"]=Vector3.New(20,10,-240)
ANIMS.WEAPONS[1]["ADE"][2]["RFAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[1]["ADE"][2]["RFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["ADE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["ADE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,10,0)
--====================SE1=======================
-----------frame--------------
ANIMS.WEAPONS[1]["SE"][1]["LHAnchor"]["Position"]=Vector3.New(5,30,-120)
ANIMS.WEAPONS[1]["SE"][1]["LHAnchor"]["Rotation"]=Rotation.New(0,-5,180)
ANIMS.WEAPONS[1]["SE"][1]["LHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[1]["SE"][1]["RHAnchor"]["Position"]=Vector3.New(0,-30,-130)
ANIMS.WEAPONS[1]["SE"][1]["RHAnchor"]["Rotation"]=Rotation.New(0,-60,180)
ANIMS.WEAPONS[1]["SE"][1]["RHAnchor"]["Offset"]=Vector3.New(0,-30,-100)
ANIMS.WEAPONS[1]["SE"][1]["LFAnchor"]["Position"]=Vector3.New(0,20,-240)
ANIMS.WEAPONS[1]["SE"][1]["LFAnchor"]["Rotation"]=Rotation.New(0,10,90)
ANIMS.WEAPONS[1]["SE"][1]["LFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["SE"][1]["RFAnchor"]["Position"]=Vector3.New(-20,10,-180)
ANIMS.WEAPONS[1]["SE"][1]["RFAnchor"]["Rotation"]=Rotation.New(-70,-90,165)
ANIMS.WEAPONS[1]["SE"][1]["RFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["SE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["SE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,0,130)
-----------frame--------------
ANIMS.WEAPONS[1]["SE"][2]["LHAnchor"]["Position"]=Vector3.New(-25,10,-120)
ANIMS.WEAPONS[1]["SE"][2]["LHAnchor"]["Rotation"]=Rotation.New(0,280,270)
ANIMS.WEAPONS[1]["SE"][2]["LHAnchor"]["Offset"]=Vector3.New(0,0,0)
ANIMS.WEAPONS[1]["SE"][2]["RHAnchor"]["Position"]=Vector3.New(30,20,-120)
ANIMS.WEAPONS[1]["SE"][2]["RHAnchor"]["Rotation"]=Rotation.New(0,355,359)
ANIMS.WEAPONS[1]["SE"][2]["RHAnchor"]["Offset"]=Vector3.New(0,0,0)
ANIMS.WEAPONS[1]["SE"][2]["LFAnchor"]["Position"]=Vector3.New(0,20,-240)
ANIMS.WEAPONS[1]["SE"][2]["LFAnchor"]["Rotation"]=Rotation.New(0,10,220)
ANIMS.WEAPONS[1]["SE"][2]["LFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["SE"][2]["RFAnchor"]["Position"]=Vector3.New(20,-10,-240)
ANIMS.WEAPONS[1]["SE"][2]["RFAnchor"]["Rotation"]=Rotation.New(0,0,270)
ANIMS.WEAPONS[1]["SE"][2]["RFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["SE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["SE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,0,250)
--====================WE1=======================
-----------frame--------------
ANIMS.WEAPONS[1]["WE"][1]["LHAnchor"]["Position"]=Vector3.New(0,-40,-160)
ANIMS.WEAPONS[1]["WE"][1]["LHAnchor"]["Rotation"]=Rotation.New(0,-90,0)
ANIMS.WEAPONS[1]["WE"][1]["LHAnchor"]["Offset"]=Vector3.New(0,0,0)
ANIMS.WEAPONS[1]["WE"][1]["RHAnchor"]["Position"]=Vector3.New(20,20,-160)
ANIMS.WEAPONS[1]["WE"][1]["RHAnchor"]["Rotation"]=Rotation.New(0,-50,0)
ANIMS.WEAPONS[1]["WE"][1]["RHAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[1]["WE"][1]["LFAnchor"]["Position"]=Vector3.New(-40,0,-180)
ANIMS.WEAPONS[1]["WE"][1]["LFAnchor"]["Rotation"]=Rotation.New(0,-90,0)
ANIMS.WEAPONS[1]["WE"][1]["LFAnchor"]["Offset"]=Vector3.New(10,0,0)
ANIMS.WEAPONS[1]["WE"][1]["RFAnchor"]["Position"]=Vector3.New(0,30,-240)
ANIMS.WEAPONS[1]["WE"][1]["RFAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[1]["WE"][1]["RFAnchor"]["Offset"]=Vector3.New(0,0,0)
ANIMS.WEAPONS[1]["WE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["WE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,-20,0)
-----------frame--------------
ANIMS.WEAPONS[1]["WE"][2]["LHAnchor"]["Position"]=Vector3.New(30,-20,-120)
ANIMS.WEAPONS[1]["WE"][2]["LHAnchor"]["Rotation"]=Rotation.New(0,-60,0)
ANIMS.WEAPONS[1]["WE"][2]["LHAnchor"]["Offset"]=Vector3.New(-10,0,0)
ANIMS.WEAPONS[1]["WE"][2]["RHAnchor"]["Position"]=Vector3.New(20,20,-180)
ANIMS.WEAPONS[1]["WE"][2]["RHAnchor"]["Rotation"]=Rotation.New(-180,-90,180)
ANIMS.WEAPONS[1]["WE"][2]["RHAnchor"]["Offset"]=Vector3.New(0,0,10)
ANIMS.WEAPONS[1]["WE"][2]["LFAnchor"]["Position"]=Vector3.New(-80,0,-150)
ANIMS.WEAPONS[1]["WE"][2]["LFAnchor"]["Rotation"]=Rotation.New(180,-50,180)
ANIMS.WEAPONS[1]["WE"][2]["LFAnchor"]["Offset"]=Vector3.New(10,0,0)
ANIMS.WEAPONS[1]["WE"][2]["RFAnchor"]["Position"]=Vector3.New(-40,10,-180)
ANIMS.WEAPONS[1]["WE"][2]["RFAnchor"]["Rotation"]=Rotation.New(180,-90,180)
ANIMS.WEAPONS[1]["WE"][2]["RFAnchor"]["Offset"]=Vector3.New(10,0,0)
ANIMS.WEAPONS[1]["WE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[1]["WE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,-40,0)
--====================ADE2=======================
-----------frame--------------
ANIMS.WEAPONS[2]["ADE"][1]["LHAnchor"]["Position"]=Vector3.New(40,20,-150)
ANIMS.WEAPONS[2]["ADE"][1]["LHAnchor"]["Rotation"]=Rotation.New(0,0,0)
ANIMS.WEAPONS[2]["ADE"][1]["LHAnchor"]["Offset"]=Vector3.New(-10,-20,0)
ANIMS.WEAPONS[2]["ADE"][1]["RHAnchor"]["Position"]=Vector3.New(20,30,-140)
ANIMS.WEAPONS[2]["ADE"][1]["RHAnchor"]["Rotation"]=Rotation.New(0,-90,0)
ANIMS.WEAPONS[2]["ADE"][1]["RHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[2]["ADE"][1]["LFAnchor"]["Position"]=Vector3.New(50,-10,-230)
ANIMS.WEAPONS[2]["ADE"][1]["LFAnchor"]["Rotation"]=Rotation.New(0,10,0)
ANIMS.WEAPONS[2]["ADE"][1]["LFAnchor"]["Offset"]=Vector3.New(0,0,10)
ANIMS.WEAPONS[2]["ADE"][1]["RFAnchor"]["Position"]=Vector3.New(-50,10,-210)
ANIMS.WEAPONS[2]["ADE"][1]["RFAnchor"]["Rotation"]=Rotation.New(0,-70,0)
ANIMS.WEAPONS[2]["ADE"][1]["RFAnchor"]["Offset"]=Vector3.New(10,0,0)
ANIMS.WEAPONS[2]["ADE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-160)
ANIMS.WEAPONS[2]["ADE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,-45,0)
-----------frame--------------
ANIMS.WEAPONS[2]["ADE"][2]["LHAnchor"]["Position"]=Vector3.New(50,20,-110)
ANIMS.WEAPONS[2]["ADE"][2]["LHAnchor"]["Rotation"]=Rotation.New(0,-50,50)
ANIMS.WEAPONS[2]["ADE"][2]["LHAnchor"]["Offset"]=Vector3.New(0,-20,-10)
ANIMS.WEAPONS[2]["ADE"][2]["RHAnchor"]["Position"]=Vector3.New(20,30,-120)
ANIMS.WEAPONS[2]["ADE"][2]["RHAnchor"]["Rotation"]=Rotation.New(0,-80,0)
ANIMS.WEAPONS[2]["ADE"][2]["RHAnchor"]["Offset"]=Vector3.New(-30,0,0)
ANIMS.WEAPONS[2]["ADE"][2]["LFAnchor"]["Position"]=Vector3.New(30,-10,-230)
ANIMS.WEAPONS[2]["ADE"][2]["LFAnchor"]["Rotation"]=Rotation.New(0,10,0)
ANIMS.WEAPONS[2]["ADE"][2]["LFAnchor"]["Offset"]=Vector3.New(0,0,10)
ANIMS.WEAPONS[2]["ADE"][2]["RFAnchor"]["Position"]=Vector3.New(-30,10,-210)
ANIMS.WEAPONS[2]["ADE"][2]["RFAnchor"]["Rotation"]=Rotation.New(0,-70,0)
ANIMS.WEAPONS[2]["ADE"][2]["RFAnchor"]["Offset"]=Vector3.New(10,0,0)
ANIMS.WEAPONS[2]["ADE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-130)
ANIMS.WEAPONS[2]["ADE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,-15,0)
--====================SE2=======================
-----------frame--------------
ANIMS.WEAPONS[2]["SE"][1]["LHAnchor"]["Position"]=Vector3.New(13,-20,-60)
ANIMS.WEAPONS[2]["SE"][1]["LHAnchor"]["Rotation"]=Rotation.New(14,22,57)
ANIMS.WEAPONS[2]["SE"][1]["LHAnchor"]["Offset"]=Vector3.New(-20,-10,0)
ANIMS.WEAPONS[2]["SE"][1]["RHAnchor"]["Position"]=Vector3.New(20,0,-80)
ANIMS.WEAPONS[2]["SE"][1]["RHAnchor"]["Rotation"]=Rotation.New(-3,25,-29)
ANIMS.WEAPONS[2]["SE"][1]["RHAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["SE"][1]["LFAnchor"]["Position"]=Vector3.New(0,-20,-240)
ANIMS.WEAPONS[2]["SE"][1]["LFAnchor"]["Rotation"]=Rotation.New(5,0,0)
ANIMS.WEAPONS[2]["SE"][1]["LFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["SE"][1]["RFAnchor"]["Position"]=Vector3.New(0,20,-240)
ANIMS.WEAPONS[2]["SE"][1]["RFAnchor"]["Rotation"]=Rotation.New(-5,0,0)
ANIMS.WEAPONS[2]["SE"][1]["RFAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["SE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[2]["SE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,20,0)
-----------frame--------------
ANIMS.WEAPONS[2]["SE"][2]["LHAnchor"]["Position"]=Vector3.New(60,-20,-160)
ANIMS.WEAPONS[2]["SE"][2]["LHAnchor"]["Rotation"]=Rotation.New(14,22,57)
ANIMS.WEAPONS[2]["SE"][2]["LHAnchor"]["Offset"]=Vector3.New(-20,-10,0)
ANIMS.WEAPONS[2]["SE"][2]["RHAnchor"]["Position"]=Vector3.New(65,0,-200)
ANIMS.WEAPONS[2]["SE"][2]["RHAnchor"]["Rotation"]=Rotation.New(0,0,-29)
ANIMS.WEAPONS[2]["SE"][2]["RHAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["SE"][2]["LFAnchor"]["Position"]=Vector3.New(0,-20,-230)
ANIMS.WEAPONS[2]["SE"][2]["LFAnchor"]["Rotation"]=Rotation.New(5,0,0)
ANIMS.WEAPONS[2]["SE"][2]["LFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["SE"][2]["RFAnchor"]["Position"]=Vector3.New(0,20,-230)
ANIMS.WEAPONS[2]["SE"][2]["RFAnchor"]["Rotation"]=Rotation.New(-5,0,0)
ANIMS.WEAPONS[2]["SE"][2]["RFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["SE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-180)
ANIMS.WEAPONS[2]["SE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,-40,0)
--====================WE2=======================
-----------frame--------------
ANIMS.WEAPONS[2]["WE"][1]["LHAnchor"]["Position"]=Vector3.New(46,-13,-100)
ANIMS.WEAPONS[2]["WE"][1]["LHAnchor"]["Rotation"]=Rotation.New(0,0,35)
ANIMS.WEAPONS[2]["WE"][1]["LHAnchor"]["Offset"]=Vector3.New(-10,0,0)
ANIMS.WEAPONS[2]["WE"][1]["RHAnchor"]["Position"]=Vector3.New(55,0,-130)
ANIMS.WEAPONS[2]["WE"][1]["RHAnchor"]["Rotation"]=Rotation.New(0,0,-29)
ANIMS.WEAPONS[2]["WE"][1]["RHAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["WE"][1]["LFAnchor"]["Position"]=Vector3.New(0,-20,-230)
ANIMS.WEAPONS[2]["WE"][1]["LFAnchor"]["Rotation"]=Rotation.New(5,0,0)
ANIMS.WEAPONS[2]["WE"][1]["LFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["WE"][1]["RFAnchor"]["Position"]=Vector3.New(0,20,-230)
ANIMS.WEAPONS[2]["WE"][1]["RFAnchor"]["Rotation"]=Rotation.New(-5,0,0)
ANIMS.WEAPONS[2]["WE"][1]["RFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["WE"][1]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[2]["WE"][1]["PAnchor"]["Rotation"]=Rotation.New(0,-20,0)
-----------frame--------------
ANIMS.WEAPONS[2]["WE"][2]["LHAnchor"]["Position"]=Vector3.New(20,-25,-40)
ANIMS.WEAPONS[2]["WE"][2]["LHAnchor"]["Rotation"]=Rotation.New(0,0,35)
ANIMS.WEAPONS[2]["WE"][2]["LHAnchor"]["Offset"]=Vector3.New(-50,0,-30)
ANIMS.WEAPONS[2]["WE"][2]["RHAnchor"]["Position"]=Vector3.New(25,0,-60)
ANIMS.WEAPONS[2]["WE"][2]["RHAnchor"]["Rotation"]=Rotation.New(0,10,-29)
ANIMS.WEAPONS[2]["WE"][2]["RHAnchor"]["Offset"]=Vector3.ZERO
ANIMS.WEAPONS[2]["WE"][2]["LFAnchor"]["Position"]=Vector3.New(0,-20,-230)
ANIMS.WEAPONS[2]["WE"][2]["LFAnchor"]["Rotation"]=Rotation.New(5,0,0)
ANIMS.WEAPONS[2]["WE"][2]["LFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["WE"][2]["RFAnchor"]["Position"]=Vector3.New(0,20,-230)
ANIMS.WEAPONS[2]["WE"][2]["RFAnchor"]["Rotation"]=Rotation.New(-5,0,0)
ANIMS.WEAPONS[2]["WE"][2]["RFAnchor"]["Offset"]=Vector3.New(20,0,60)
ANIMS.WEAPONS[2]["WE"][2]["PAnchor"]["Position"]=Vector3.New(0,0,-120)
ANIMS.WEAPONS[2]["WE"][2]["PAnchor"]["Rotation"]=Rotation.New(0,0,0)

return ANIMS