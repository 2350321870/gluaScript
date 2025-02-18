MAPINFO={
name="地下陵墓",
map="map034",
mapa="map034a",
NPCMax=3,
MonMax=16,
markx= 275,		
marky= 176,		
RoomID= "lu_dxlm",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=50,
firstmap="lu_dxlm",
AreaAndMusic = "34_7",
CanHook=1,--可挂机
}
door(1,"lu_dxlx","地下陵穴",610,400,38,231,1);
door(2,"lu_ywl","燕王陵",48,245,407,249,3);
addnpc("haigu",336,131); 
addxtarp(1,10,175,8,1,"mon_044:3","2919","100,200 115,273 172,196 ");
addxspace(2,176,179);
addxtarp(3,180,350,8,1,"mon_045:3","2911","220,237 260,142 320,185 ");
addxspace(4,351,354);
addxtarp(5,355,530,8,1,"mon_044:3","2919","380,200 390,290 460,220 ");
addxspace(6,531,534);
addxtarp(7,535,680,8,1,"mon_045:3","2911","540,412 583,315 600,400 ");


