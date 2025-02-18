MAPINFO={
name="牛霸荒城[1]",
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
maptype = 1,-- 1 队伍副本 2 帮派副本 3人员上限
keeptime = 120,
hinttime=10,
mancnt = 10,
nozb=0,
}
door(1,"lu_changqmk","坐忘峰",121,748,414,168,2);
door(2,"lu_changqmk","坐忘峰",2749,726,414,168,2);
addnpc("fbyd",81,676);--药商/507
addnpc("fbjg01",287,64);--机关1/508关1开2
addnpc("fbjg02",613,693);--机关2/509关2开3
addnpc("fbjg03",572,176);--机关3/510关3开4
addnpc("fbjg04",1168,127);--机关4/511关4开1
addnpc("fbjg05",1844,245);--机关5/512关1反3
addnpc("fbjg06",1324,674);--机关6/513关2反4
addnpc("fbjg07",1728,62);--机关7/514关3反2
addnpc("fbjg08",2034,670);--机关8/515关4反1
--addnpc("fbjg09",2722,671);--机关9/516关开开关
addnpc("fbbox01",800,693);--宝箱1/517
addnpc("fbbox02",1553,366);--宝箱2/518
addnpc("fbbox03",2699,175);--宝箱3/519
addboss(3,734,431,"bossfb01",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --老1/501
addboss(2,1438,421,"bossfb02",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --老2/502
addboss(1,2129,416,"bossfb03",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",60,59); --老3/503
addboss(6,820,336,"bossfb04",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --炮1/504
addboss(5,1465,231,"bossfb05",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --炮2/505
addboss(4,2278,386,"bossfb06",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",6,5); --炮3/506
addxtarp(1,266,669,1,1,"mon_127:6","2709");--步兵1
addxspace(2,670,671);
addxtarp(3,672,1104,1,1,"mon_128:7","2724");--弓兵2
addxspace(4,1105,1106);
addxtarp(5,1107,1390,1,1,"mon_129:7","2709");--步兵3
addxspace(6,1391,1392);
addxtarp(7,1393,1780,1,1,"mon_130:8","2737");--弓兵4
addxspace(8,1781,1782);
addxtarp(9,1783,2097,1,2,"mon_129:4 mon_128:4","2709 2724");--混兵5
addxspace(10,2097,2098);
addxtarp(11,2099,2716,1,1,"mon_130:8","2737");--弓兵6
addxspace(12,2717,2718);
addxtarp(13,2719,2799,1,1,"mon_129:4 mon_130:4","2709 2737")--混兵7
