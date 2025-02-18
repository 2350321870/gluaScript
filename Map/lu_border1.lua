MAPINFO={
name="国家边境[1]",
map="map093",
mapa="map093a",
NPCMax=6,
MonMax=25,
planted=1,
markx= 50,		
marky= 365,		
RoomID= "lu_border1",
reftype=1,
fight= -30,
diesend="lu_border1",
stall= 0,
occupy= 0,
dieloss= 1,
--AreaAndMusic = "1_12",
trap=2,
level=1,
firstmap="lu_border",
}
addnpc("bordermgr",2968,329);
addnpc("bordermgr1",240,329);
addnpc("bordermgr2",940,329);
addnpc("bordermgr3",1540,329);
addnpc("bordermgr4",2270,329);
--addnpc("bjbgp",100,365);
addxtarp(1,456,666,8,1,"mon_008:3","2915","216,336 431,340 539,394");
addxspace(2,478,1100);
addxtarp(3,1128,1310,8,1,"mon_020:3","2942","1154,392 1253,417 1285,331");
addxspace(4,1400,1700);
addxtarp(5,1800,2000,8,1,"mon_025:3","2968","1909,305 2052,389 1833,313");
addxspace(6,2200,2400);
addxtarp(7,2500,2724,8,1,"mon_030:3","2917","1660,313 2770,392 2599,399");
door(1,"lu_lyc","洛阳城",3050,408,20,266,1);