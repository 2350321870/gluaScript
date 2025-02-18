MAPINFO={
name="迷宫",--地图名称
map="map062",
mapa="map062a",
NPCMax=13,--最大NPC数量
markx= 1150,--落脚X坐标		
marky= 225,--落脚Y坐标	
RoomID= "lu_xmigong10",
fight=-20,
stall= 0,
nozb=0,
occupy= 0,
toworld= 0,
dieloss= 0,
level=3,
isopen=1,
MonMax=9,
firstmap="lu_xmigong10",
diebackmap = "lu_jkc",
diesend="lu_jkc",
maptype = 3,
keeptime = 1440,
mancnt = 40,
noRide = 1,
AutoFindWay=1,
}
--addnpc("migongshizhe",1100,170);
--addnpc("baoxiang",1000,150);
addnpc("migongshizhe",653,268);
addnpc("baoxiang",850,163);
addxtarp(1,100,400,20,1,"mon_079:3","2737","130,256 160,384 290,234");
addxspace(2,401,500);
addxtarp(3,501,750,20,1,"mon_079:3","2737","577,476 643,257 764,175");
addxspace(4,751,850);
addxtarp(5,851,1100,20,1,"mon_079:3","2737","992,442 958,239 967,232");


