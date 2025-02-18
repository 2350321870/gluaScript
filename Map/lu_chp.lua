MAPINFO={
name="参合坡",
map="map031",
mapa="map031a",
NPCMax=3,
MonMax=20,
markx= 282,		
marky= 228,		
RoomID= "lu_chp",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=40,
firstmap="lu_chp",
AreaAndMusic = "31_10",
CanHook=1,--可挂机
}
door(1,"lu_zsc","中山城",601,116,33,241,1);
door(2,"lu_thgj","太行古径",50,205,665,250,3);
addnpc("huntaihou",518,328);
addnpc("murongping",188,134);
addxtarp(1,10,100,8,1,"mon_039:2","2951","99,210 70,234 ");
addxspace(2,101,104);
addxtarp(3,105,205,8,1,"mon_040:3","2943","140,150 175,230 199,145");
addxspace(4,206,209);
addxtarp(5,210,310,8,1,"mon_041:3","2962","210,232 295,105 300,240");
addxspace(6,311,314);
addxtarp(7,315,415,8,1,"mon_039:3","2951","350,260 380,161 410,270");
addxspace(8,416,419);
addxtarp(9,420,510,8,1,"mon_040:2","2943","464,150 267,240 ");
addxspace(10,511,514);
addxtarp(11,515,650,8,1,"mon_041:2","2962","550,167 555,110 ");