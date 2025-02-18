MAPINFO={
name="邪恶之地3层",
map="map081",
mapa="map081a",
NPCMax=1,
BossMax=1,
markx= 142,		
marky= 196,		
RoomID= "lu_fbxezdsan2",
AreaAndMusic = "2_12",
fight= -20,
diesend="lu_jkc",
diebackmap = "lu_jkc",
stall= 0,
reftype=2,
occupy= 0,
dieloss= 0,
firstmap="lu_fbxezdsan",
maptype = 1,-- 1 队伍副本 2 帮派副本 3人员上限
keeptime = 30,
nozb=1,
}
door(1,"lu_jkc","离开", 42,309,220,200,3);
addboss(1,201,160,"bossLv30FB",4,"r:4 r:4 r:4 r:4 d:4 d:4 d:4 d:4 l:4 l:4 l:4 l:4 u:4 u:4 u:4 u:4",20,20); 
addnpc("qianduoduo",262,102);