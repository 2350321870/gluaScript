MAPINFO={
name="关外",
map="map036",
mapa="map036a",
NPCMax=3,
MonMax=16,
markx= 309,		
marky= 463,		
RoomID= "lu_clc",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=55,
firstmap="lu_clc",
AreaAndMusic = "36_15",
CanHook=1,--可挂机
}
door(1,"lu_yzc","云中城",308,50,378,565,0);
door(2,"lu_fqcl","陷落关口",335,600,254,100,2);
addnpc("cuihong",251,429);
addxtarp(1,10,200,8,1,"mon_048:3","2924","166,550 195,480 197,302 ");
addxspace(2,201,204);
addxtarp(3,205,320,8,1,"mon_049:3","2945","275,423 275,300 316,250 ");
addxspace(4,321,325);
addxtarp(5,330,400,8,1,"mon_048:3","2924","366,400 375,300 380,200 ");
addxspace(6,401,405);
addxtarp(7,410,640,8,1,"mon_049:3","2945","440,145 500,140 464,55 ");