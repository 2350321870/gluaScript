MAPINFO={
name="魔王殿-活动",
map="map057",
mapa="map057a",
NPCMax=3,
MonMax=11,
BossMax=1,
markx= 190,
marky= 291,
reftype=2,
RoomID= "lu_mwdhd",
fight= 1,    --[[ 注意：掉装备，如果杀人杀比自己低很多级，不会掉
fight小于0，会抓地牢，会PK值惩罚，掉装备，加仇人
fight大于0，不会抓地牢，不会PK值惩罚，掉装备 ，加仇人
fight=3，不会抓地牢，不会PK值惩罚，不掉装备不增加仇人]]
leitai=1,
losesend="lu_zongmiao",
keeptime = 60,
maptype = 1, 
hinttime=20,  
diesend="lu_zongmiao",
diebackmap = "lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=40,
firstmap="lu_mwdhd",
AreaAndMusic = "37_3",
nozb=1,
}
--door(1,"lu_wltec","魍魉塔二层",575,575,60,185,2);
--addxtarp(1,80,400,8,1,"mon_076:3","2986","143,379 216,220 227,316");
addboss(1,232,214,"bossWorld",4,"r:2 r:2 r:2 r:2 d:2 d:2 d:2 d:2 l:2 l:2 l:2 l:2 u:2 u:2 u:2 u:2",720,720);
--addxspace(2,410,420);
--addxtarp(3,425,800,8,1,"mon_075:4","2998","375,492 461,331 432,210 367,342");