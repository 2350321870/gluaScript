MAPINFO={
name="太行古径",
map="map028",
mapa="map028a",
NPCMax=3,
MonMax=16,
markx= 285,		
marky= 359,		
RoomID= "lu_thgj",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=40,
firstmap="lu_thgj",
AreaAndMusic = "28_16",
CanHook=1,--可挂机
}
door(1,"lu_chp","参合坡",665,245,50,212,1);
door(2,"lu_thsg","太行山谷",649,438,201,60,1);
door(3,"lu_fqcl","陷落关口",33,265,570,227,3);
addnpc("murongchui",86,139);
addnpc("muronglin",379,330);
addxtarp(1,10,175,8,1,"mon_035:3","2972","80,234 100,155 165,130 ");
addxspace(2,176,178);
addxtarp(3,180,350,8,1,"mon_036:3","2932","215,95 321,110 270,172 ");
addxspace(4,351,355);
addxtarp(5,360,530,8,1,"mon_035:3","2972","400,75 388,388 464,399 ");
addxspace(6,533,535);
addxtarp(7,540,700,8,1,"mon_036:3","2932","570,170 588,250 651,157 ");

