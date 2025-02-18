MAPINFO={
name="邪恶之地1层",
map="map089",
mapa="map089a",
NPCMax=1,
MonMax=10,
markx= 88,		
marky= 122,		
RoomID= "lu_fbxezdyi",
AreaAndMusic = "2_12",
fight= -20,
diesend="lu_jkc",
diebackmap = "lu_jkc",
stall= 0,
occupy= 0,
dieloss= 0,
firstmap="lu_fbxezdyi",
maptype = 3,-- 1 队伍副本 2 帮派副本 3人员上限
keeptime = 40,
hinttime=20,
mancnt = 10,
nozb=1,
}
door(1,"lu_jkc","离开", 72,98,220,200,3);
door(2,"lu_fbxezder","2层", 1000,106, 63, 211,1);
addnpc("fb30jixz01",589,151);
addxtarp(1,40,300,8,1,"mon_180:6","2974","160,128 250,146 354,151 443,151 551,150 651,150");
addxspace(2,301,554);
addxtarp(3,555,749,8,1,"mon_181:2","2961","758,158 850,176");
addxspace(4,750,800);
addxtarp(5,801,973,8,1,"mon_181:2","2961","708,178 900,156");