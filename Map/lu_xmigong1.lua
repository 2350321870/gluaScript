MAPINFO={
name="迷宫",--地图名称
map="map063",
mapa="map063a",
NPCMax=13,--最大NPC数量
markx= 814,--落脚X坐标		
marky= 428,--落脚Y坐标	
RoomID= "lu_xmigong1",
fight=-20,
stall= 0,
nozb=0,
occupy= 0,
toworld= 0,
dieloss= 0,
level=3,
isopen=1,
MonMax=9,
firstmap="lu_xmigong1",
diebackmap = "lu_jkc",
diesend="lu_jkc",
maptype = 3,
keeptime = 1440,
mancnt = 40,
noRide = 1,
AutoFindWay=1,
}
--addnpc("migongshizhe",810,480);
--addnpc("baoxiang",750,450);
addnpc("migongshizhe",1097,156);
addnpc("baoxiang",737,161);
addxtarp(1,100,400,20,1,"mon_079:3","2737","90,158 246,402 366,284");
addxspace(2,401,500);
addxtarp(3,501,750,20,1,"mon_079:3","2737","688,442 583,269 732,96");
addxspace(4,751,850);
addxtarp(5,851,1100,20,1,"mon_079:3","2737","1121,448 1042,285 992,128");
