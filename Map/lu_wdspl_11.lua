MAPINFO={
name="五斗山脚",
map="map073",
mapa="map073a",
MonMax=15,
NPCMax=1,
markx= 54,		
marky= 265,		
RoomID= "lu_wdspl_1",
fight=-20,
nozb=0,
diesend="lu_jkc",
stall= 0,
occupy= 0,
toworld= 0,
dieloss= 1,
level=3,
isopen=1,
firstmap="lu_wdspl_1",
maptype = 3,
diebackmap = "lu_jkc",
keeptime = 40, --副本开启时间
hinttime=20,   --离副本的关闭时间，达到这个时间后，进入新副本
mancnt = 40,
nozb=0,
}
door(1,"lu_jkc","离开副本",39,274,220,200,3);
--door(2,"lu_wdspl_2","五斗山", 616, 184,44,156,1);
addnpc("jinjunneiying",558,108);
addxtarp(1,110,300,18,1,"mon_115:5","2923","98,208 150,166 324,121 483,111 541,200");
addxspace(2,301,407);
addxtarp(3,408,570,18,1,"mon_115:5","2923","108,218 160,176 334,131 493,121 551,210");