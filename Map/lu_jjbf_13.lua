MAPINFO={
name="伊水",
map="map016",
mapa="map016a",
MonMax=15,
NPCMax=1,
markx= 579,		
markx= 250,	
RoomID= "lu_jjbf_1",
fight=-20,
diesend="lu_jkc",
stall= 0,
occupy= 0,
nozb=0,
toworld= 0,
dieloss= 0,
level=1,
isopen=0,
firstmap="lu_jjbf_1",
maptype = 3,
diebackmap = "lu_jkc",
keeptime = 40,
hinttime=20,
mancnt = 40,
nozb=0,
}
door(1,"lu_jkc","建康城", 657,250,90,214,1);
door(2,"lu_jjbf_2","伊水北岸",35,218,624,198,3);
addxtarp(1,80,400,8,1,"mon_110:6","2915","508,238 410,236 324,211 312,111 152,220 95,328");
addxspace(2,410,420);
addxtarp(3,425,800,8,1,"mon_111:9","2955","518,228 400,246 339,220 322,122 169,230 112,338 91,260 350,189 549,230");
addnpc("yuanhong",480,180);