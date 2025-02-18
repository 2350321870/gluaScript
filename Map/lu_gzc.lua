MAPINFO={
name="古战场",
map="map039",
mapa="map039a",
NPCMax=3,
MonMax=11,
markx= 188,		
marky= 158,		
RoomID= "lu_gzc",
fight= -30,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=61,
firstmap="lu_gzc",
AreaAndMusic = "39_12",
}
door(1,"lu_qdbl","契丹部落",589,188,112,278,1);
door(2,"lu_yzjw","云中郊外",53,146,462,210,3);
addxtarp(1,80,300,8,1,"mon_052:3","2966","488,188 297,220 180,170");
addxspace(2,310,320);
addxtarp(3,325,500,8,1,"mon_053:4","2975","478,178 287,210 360,230 246,408");
--addxspace(4,510,520);
--addxtarp(5,525,800,8,1,"mon_054:4","2701");
addnpc("pz_gzc",321,136);