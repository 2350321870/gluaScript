MAPINFO={
name="迷宫",--地图名称
map="map064",
mapa="map064a",
NPCMax=13,--最大NPC数量
markx= 815,--落脚X坐标		
marky= 210,--落脚Y坐标	
RoomID= "lu_xmigong6",
fight=-20,
stall= 0,
nozb=0,
occupy= 0,
toworld= 0,
dieloss= 0,
level=3,
isopen=1,
MonMax=9,
firstmap="lu_xmigong6",
diebackmap = "lu_jkc",
diesend="lu_jkc",
maptype = 3,
keeptime = 1440,
mancnt = 40,
noRide = 1,
AutoFindWay=1,
}
--addnpc("migongshizhe",800,200);
--addnpc("baoxiang",750,150);
addnpc("migongshizhe",113,156);
addnpc("baoxiang",679,581);
addxtarp(1,100,400,20,1,"mon_079:3","2737","151,532 169,222 392,343");
addxspace(2,401,500);
addxtarp(3,501,750,20,1,"mon_079:3","2737","580,349 624,460 785,271");
addxspace(4,751,850);
addxtarp(5,851,1100,20,1,"mon_079:3","2737","1134,459 980,265 976,113");