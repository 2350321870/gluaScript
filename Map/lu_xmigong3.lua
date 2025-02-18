MAPINFO={
name="迷宫",--地图名称
map="map063",
mapa="map063a",
NPCMax=13,--最大NPC数量
markx= 282,--落脚X坐标		
marky= 241,--落脚Y坐标	
RoomID= "lu_xmigong3",
fight=-20,
stall= 0,
nozb=0,
occupy= 0,
toworld= 0,
dieloss= 0,
level=3,
isopen=1,
MonMax=9,
firstmap="lu_xmigong3",
diebackmap = "lu_jkc",
diesend="lu_jkc",
maptype = 3,
keeptime = 1440,
mancnt = 40,
noRide = 1,
AutoFindWay=1,
}
--addnpc("migongshizhe",200,100);
--addnpc("baoxiang",60,60);
addnpc("migongshizhe",250,417);
addnpc("baoxiang",1041,286);
addxtarp(1,100,400,20,1,"mon_079:3","2737","90,158 246,402 366,284");
addxspace(2,401,500);
addxtarp(3,501,750,20,1,"mon_079:3","2737","688,442 583,269 732,96");
addxspace(4,751,850);
addxtarp(5,851,1100,20,1,"mon_079:3","2737","1121,448 1042,285 992,128");
