MAPINFO={
name="建康东郊",
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
CanHook=1,--可挂机
UnlockTask="box02",			--抢开宝箱识别字段
basebrushtime=3600,--00,			--基础宝箱刷新上锁时间
randombrushtime=1800,--00,			--随机附加宝箱刷新时间
chestmessage="@7小道消息:传言有人把宝物锁藏在建康东郊一个箱子里，去建康城南饰品商人买几把钥匙试试运气吧",	--宝箱刷新后公告内容
}
door(1,"lu_wds","五斗山",654,305,98,387,1);
door(2,"lu_jkcn","建康城南",45,280,500,387,3);
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
