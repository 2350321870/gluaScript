MAPINFO={
name="ţ�Իĳ�[1]",
map="map162",
MonMax=20,
NPCMax=12,
BossMax=6,
markx= 113,		
marky= 684,		
RoomID= "lu_fb12",
AreaAndMusic = "1_6",
fight=-20,
diesend="lu_fb12",
stall= 0,
reftype=2,
monflush=1,
occupy= 0,
dieloss= 0,
firstmap="lu_fb1",
maptype = 1,-- 1 ���鸱�� 2 ���ɸ��� 3��Ա����
keeptime = 120,
hinttime=10,
mancnt = 10,
nozb=0,
}
door(1,"lu_changqmk","������",121,748,414,168,2);
door(2,"lu_changqmk","������",2749,726,414,168,2);
addnpc("fbyd",81,676);--ҩ��/507
addnpc("fbjg01",287,64);--����1/508��1��2
addnpc("fbjg02",613,693);--����2/509��2��3
addnpc("fbjg03",572,176);--����3/510��3��4
addnpc("fbjg04",1168,127);--����4/511��4��1
addnpc("fbjg05",1844,245);--����5/512��1��3
addnpc("fbjg06",1324,674);--����6/513��2��4
addnpc("fbjg07",1728,62);--����7/514��3��2
addnpc("fbjg08",2034,670);--����8/515��4��1
--addnpc("fbjg09",2722,671);--����9/516�ؿ�����
addnpc("fbbox01",800,693);--����1/517
addnpc("fbbox02",1553,366);--����2/518
addnpc("fbbox03",2699,175);--����3/519
addboss(3,734,431,"bossfb01",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --��1/501
addboss(2,1438,421,"bossfb02",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --��2/502
addboss(1,2129,416,"bossfb03",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --��3/503
addboss(6,820,336,"bossfb04",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --��1/504
addboss(5,1465,231,"bossfb05",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --��2/505
addboss(4,2278,386,"bossfb06",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --��3/506
addxtarp(1,266,669,1,1,"mon_127:6","2709");--����1
addxspace(2,670,671);
addxtarp(3,672,1104,1,1,"mon_128:7","2724");--����2
addxspace(4,1105,1106);
addxtarp(5,1107,1390,1,1,"mon_129:7","2709");--����3
addxspace(6,1391,1392);
addxtarp(7,1393,1780,1,1,"mon_130:8","2737");--����4
addxspace(8,1781,1782);
addxtarp(9,1783,2097,1,2,"mon_129:4 mon_128:4","2709 2724");--���5
addxspace(10,2097,2098);
addxtarp(11,2099,2716,1,1,"mon_130:8","2737");--����6
addxspace(12,2717,2718);
addxtarp(13,2719,2799,1,1,"mon_129:4 mon_130:4","2709 2737")--���7
