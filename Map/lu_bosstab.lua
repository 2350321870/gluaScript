MAPINFO={
name="BOSS��2��",
map="map090",
mapa="map090a",
NPCMax=3,
BossMax=3,
markx= 84,		
marky= 203,		
RoomID= "lu_bosstab",
AreaAndMusic = "99_12",
fight= -20,
diesend="lu_jkc",
diebackmap = "lu_jkc",
stall= 0,
reftype=2,--reftype 1 ֲ��   2,boss  3.ֲ��+boss Ĭ��Ϊ0
occupy= 0,
dieloss= 0,
firstmap="lu_bosstab",
maptype = 3,-- 1 ���鸱�� 2 ���ɸ��� 3��Ա����
keeptime = 60,
hinttime=30,
mancnt = 50,
nozb=0,
}
door(1,"lu_jkc","�뿪", 33,209,220,200,3);
door(2,"lu_bosstac","��һ��", 1002,230, 63, 211,1);
addboss(1,544,64,"bossta02",4,"r:1 d:1 l:1 u:1",10,600); 
addboss(2,544,226,"bossta02",4,"r:1 d:1 l:1 u:1",10,600); 
addboss(3,544,385,"bossta02",4,"r:1 d:1 l:1 u:1",10,600); 