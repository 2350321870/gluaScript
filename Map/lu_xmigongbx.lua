MAPINFO={
name="生死迷宫",--地图名称
map="map063",
mapa="map063a",
NPCMax=13,--最大NPC数量
markx= 815,--落脚X坐标		
marky= 430,--落脚Y坐标	
RoomID= "lu_xmigong1",
fight=-20,
stall= 0,
nozb=0,
occupy= 0,
toworld= 0,
dieloss= 0,
level=3,
isopen=1,
firstmap="lu_xmigongbx",
diebackmap = "lu_jkc",
diesend="lu_jkc",
maptype = 3,
keeptime = 1440,
mancnt = 40,
noRide = 1,
AutoFindWay=1,
--UnlockTask="box02",			--抢开宝箱识别字段
--basebrushtime=300,--00,3600			--基础宝箱刷新上锁时间
--randombrushtime=100,--00,1800			--随机附加宝箱刷新时间
--chestmessage="@7小道消息:有人看见一个黑影把宝物锁在@3生死迷宫@0的宝箱中了，赶快去生死迷宫中收集钥匙去开启宝物吧",	--宝箱刷新后公告内容
}
addnpc("migongshizhe",814,428);
--addnpc("migongshizhe",1233,148);