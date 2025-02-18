MAPINFO={
name="巢穴2层",
map="map072",
mapa="map072a",
BossMax=1,
NPCMax=1,
markx= 45,		
marky= 295,		
RoomID= "lu_dxcxer2",
fight=-20,
nozb=0,
diesend="lu_jkc",
reftype=2,
stall= 0,
occupy= 0,
toworld= 0,
dieloss= 1,
level=3,
isopen=0,
firstmap="lu_dxcxer",
maptype = 1,
diebackmap = "lu_jkc", 
keeptime = 30,
nozb=0,
}
door(1,"lu_jkc","离开副本",22,135,220,200,3);
addboss(1,116,129,"bossLv50FB",4,"r:8 r:8 r:8 r:8 d:8 d:8 d:8 d:8 l:8 l:8 l:8 l:8 u:8 u:8 u:8 u:8",30,30);   --30重新生成时间,30Boss复原时间 
addnpc("qianduoduo",132,108);