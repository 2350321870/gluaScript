MAPINFO={
name="BOSS塔7层",
map="map090",
mapa="map090a",
NPCMax=3,
BossMax=3,
markx= 84,		
marky= 203,		
RoomID= "lu_bosstag",
AreaAndMusic = "99_12",
fight= -20,
diesend="lu_jkc",
diebackmap = "lu_jkc",
stall= 0,
reftype=2,--reftype 1 植物   2,boss  3.植物+boss 默认为0
occupy= 0,
dieloss= 0,
firstmap="lu_bosstag",
maptype = 3,-- 1 队伍副本 2 帮派副本 3人员上限
keeptime = 60,
hinttime=30,
mancnt = 50,
nozb=0,
}
door(1,"lu_jkc","离开", 33,209,220,200,3);
door(2,"lu_bosstah","下一层", 1002,230, 153, 225,1);
addboss(1,544,64,"bossta07",4,"r:1 d:1 l:1 u:1",20,600);
addboss(2,544,226,"bossta07",4,"r:1 d:1 l:1 u:1",20,600);
addboss(3,544,385,"bossta07",4,"r:1 d:1 l:1 u:1",20,600);