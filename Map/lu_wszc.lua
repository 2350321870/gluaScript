MAPINFO={
name="��˫ս��",
map="map037",
mapa="map037a",
NPCMax=3,
MonMax=11,
BossMax=1,
markx= 90,
marky= 291,
reftype=2,
RoomID= "lu_wszc",
fight= 1,    --[[ ע�⣺��װ�������ɱ��ɱ���Լ��ͺܶ༶�������
fightС��0����ץ���Σ���PKֵ�ͷ�����װ�����ӳ���
fight����0������ץ���Σ�����PKֵ�ͷ�����װ�� ���ӳ���
fight=3������ץ���Σ�����PKֵ�ͷ�������װ�������ӳ���]]
diesend="lu_zongmiao",
diebackmap = "lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=20,
firstmap="lu_wszc",
AreaAndMusic = "37_3",
nozb=0,
}
addxtarp(1,144,291,5,1,"mon_145:3","2947","231,164 241,266 524,283");
addxspace(2,292,230);
addxtarp(3,231,455,5,1,"mon_145:4","2947","221,158 251,276 534,273 517,164");
addxspace(4,456,460);
addboss(5,558,282,"bossWSZCFB",4,"r:2 r:2 r:2 r:2 d:2 d:2 d:2 d:2 l:2 l:2 l:2 l:2 u:2 u:2 u:2 u:2",120,120);
addnpc("wangmeng",144,280);