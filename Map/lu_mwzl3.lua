MAPINFO={
name="迷雾之林",
map="map003",
mapa="map003a",
mapb="map003b",
NPCMax=3,
MonMax=11,
markx= 470,		
marky= 230,		
RoomID= "lu_mwzl3",
fight= -20,
diesend="lu_tyc",
stall= 1,
occupy= 0,
dieloss= 0,
level=5,
firstmap="lu_mwzl",
AreaAndMusic = "2_14",
CanHook=1,--可挂机
}
door(1,"lu_tyc","桃源村",45,174,742,222,3);
door(2,"lu_jknj","建康南郊",654,137,70,415,1);
door(3,"lu_jsd","巨石洞",554,45,70,221,0);
addnpc("tianwuzhang",436,140);
addnpc("shibingjia",574,222);
addnpc("wangzhubu",292,206);
addxtarp(1,95,317,8,1,"mon_004:2","2971","200,243 167,149");
addxspace(2,318,350);
addxtarp(3,351,670,8,1,"mon_004:3","2971","381,163 528,273 591,103");
