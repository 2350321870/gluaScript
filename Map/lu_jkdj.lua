MAPINFO={
name="��������",
map="map009",
mapa="map009a",
mapb="map009b",
NPCMax=3,
MonMax=13,
markx= 214,		
marky= 289,		
RoomID= "lu_jkdj",
fight= -20,
reftype=1,
diesend="lu_zongmiao",
stall= 1,
occupy= 0,
dieloss= 0,
level=10,
firstmap="lu_jkdj",
AreaAndMusic = "5_16",
CanHook=1,--�ɹһ�
UnlockTask="box02",			--��������ʶ���ֶ�
basebrushtime=3600,--00,			--��������ˢ������ʱ��
randombrushtime=1800,--00,			--������ӱ���ˢ��ʱ��
chestmessage="@7С����Ϣ:�������˰ѱ��������ڽ�������һ�������ȥ����������Ʒ�����򼸰�Կ������������",	--����ˢ�º󹫸�����
}
door(1,"lu_wds","�嶷ɽ",654,305,98,387,1);
door(2,"lu_jkcn","��������",45,280,500,387,3);
addnpc("huanchong",270,205);
addnpc("wanggong",617,217);
addnpc("muxiang03",526,313);
addxtarp(1,10,170,8,1,"mon_007:3","2913","52,225 165,205 133,325");
addxspace(2,171,172);
addxtarp(3,180,350,8,1,"mon_008:3","2915","195,300 252,368 300,272");
addxspace(4,351,352);
addxtarp(5,360,530,8,1,"mon_007:3","2913","400,317 432,117 350,230");
addxspace(6,531,532);
addxtarp(7,550,700,8,1,"mon_008:3","2915","560,100 590,333 684,174");
