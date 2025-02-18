MAPINFO={
name="太行山谷",
map="map029",
mapa="map029a",
NPCMax=3,
MonMax=15,
markx= 201,		
marky= 124,		
RoomID= "lu_thsg",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=40,
firstmap="lu_thsg",
AreaAndMusic = "29_17",
CanHook=1,--可挂机
}
door(1,"lu_thgj","太行古径",197,34,586,438,0);
door(2,"lu_thgd","太行谷底",562,305,29,272,1);
addnpc("shiyue",132,84);
addxtarp(1,10,150,8,1,"mon_037:3","2952","145,67 138,177 149,200");
addxspace(2,151,155);
addxtarp(3,160,240,8,1,"mon_038:3","2921","210,85 230,206 180,155");
addxspace(4,241,245);
addxtarp(5,250,330,8,1,"mon_037:2","2952","300,160 327,250 ");
addxspace(6,331,335);
addxtarp(7,340,450,8,1,"mon_038:2","2921","360,185 400,260 ");
