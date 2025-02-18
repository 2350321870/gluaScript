MAPINFO={
name="桃源径",
map="map061",
mapa="map061a",
mapb="map061b",
NPCMax=3,
MonMax=11,
markx= 120,		
marky= 192,		
RoomID= "lu_tyj3",
fight=-20,
reftype=1,
diesend="lu_changqmk",
stall= 1,
occupy= 0,
dieloss= 0,
level=1,
firstmap="lu_tyj",
AreaAndMusic = "0_12",
CanHook=1,--可挂机
}
door(1,"lu_changqmk","桃源",35,150,556,248,3);
door(2,"lu_tyc","桃源村",590,225,90,167,1);
addnpc("ranmin",208,112);
addxtarp(1,50,330,8,1,"mon_001:2","2979","159,164 293,158");
addmine(1,270,96,"mine_wseed109",99,60);
addmine(2,262,224,"mine_wseed109",99,60);
addmine(3,86,240,"mine_wseed109",99,60);
