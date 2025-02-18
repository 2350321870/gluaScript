MAPINFO={		--一张地图的迷宫玩法，区别于跑层数迷宫
name="迷宫",
map="map093",
mapa="map093a",
NPCMax=1,
markx= 65,		
marky= 84,		
RoomID= "lu_migong",
fight=-20,
stall= 0,
occupy= 0,
toworld= 0,
dieloss= 1,
isopen=0,
firstmap="lu_migong",
diebackmap = "lu_shjinengqu",
diesend="lu_shjinengqu",
maptype = 3,
keeptime = 1440,
mancnt = 40,
}
--addnpc("mggly",310,184); 
door(1,"lu_migong","右", 105, 83,313,219,1);   
door(2,"lu_migong","下", 61, 115,28,214,2);  --1，2为第1个台，顺时针走
--[[door(3,"lu_migong","右", 105, 83,313,219,1);
door(4,"lu_migong","右", 105, 83,313,219,1);
door(5,"lu_migong","右", 105, 83,313,219,1);
door(6,"lu_migong","右", 105, 83,313,219,1);
door(7,"lu_migong","右", 105, 83,313,219,1);
door(8,"lu_migong","右", 105, 83,313,219,1);
door(9,"lu_migong","右", 105, 83,313,219,1);
door(10,"lu_migong","右", 105, 83,313,219,1);]]
