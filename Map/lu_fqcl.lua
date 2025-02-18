MAPINFO={
name="陷落关口",
map="map027",
mapa="map027a",
NPCMax=3,
MonMax=16,
markx= 214,		
marky= 416,		
RoomID= "lu_fqcl",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=40,
firstmap="lu_fqcl",
AreaAndMusic = "27_14",
CanHook=1,--可挂机
}
door(1,"lu_clc","关外",254,82,335,580,0);
door(2,"lu_thgj","太行古径",582,227,33,270,1);
door(3,"lu_jgd","洛城废墟",198,586,322,140,2);
addnpc("tuobayi",380,181);
addnpc("laoweng",174,322);
addxtarp(1,10,160,8,1,"mon_046:3","2941","75,560 150,490 115,432 ");
addxspace(2,162,164);
addxtarp(3,165,320,8,1,"mon_047:3","2927","234,525 300,425 270,340 ");
addxspace(4,321,325);
addxtarp(5,330,490,8,1,"mon_046:3","2941","370,211 470,270 410,165 ");
addxspace(6,494,499);
addxtarp(7,500,640,8,1,"mon_047:3","2927","521,330 512,182 585,295 ");

