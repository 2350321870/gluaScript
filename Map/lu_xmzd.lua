MAPINFO={
name="��ڤ֮��",
map="map037",
mapa="map037a",
NPCMax=3,
MonMax=11,
BossMax=1,
markx= 144,
marky= 281,
reftype=2,
RoomID= "lu_xmzd",
fight= -30,    --[[ ע�⣺��װ�������ɱ��ɱ���Լ��ͺܶ༶�������
fightС��0����ץ���Σ���PKֵ�ͷ�����װ�����ӳ���
fight����0������ץ���Σ�����PKֵ�ͷ�����װ�� ���ӳ���
fight=3������ץ���Σ�����PKֵ�ͷ�������װ�������ӳ���]]
diesend="lu_zongmiao",
diebackmap = "lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=15,
firstmap="lu_xmzd",
AreaAndMusic = "37_3",
nozb=0,
keeptime = 60,
hinttime=20,
}
--[[
addxtarp(1,144,291,5,1,"mon_145:3","2947","231,164 241,266 524,283");
addxspace(2,292,230);
addxtarp(3,231,455,5,1,"mon_145:4","2947","221,158 251,276 534,273 517,164");
addxspace(4,456,460); ]]
door(1,"lu_jkcn","��������",90,291,417,353,3);
addboss(1,558,282,"bossXMZD",4,"r:2 r:2 r:2 r:2 d:2 d:2 d:2 d:2 l:2 l:2 l:2 l:2 u:2 u:2 u:2 u:2",120,120);