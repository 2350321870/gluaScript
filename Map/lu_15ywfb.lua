MAPINFO={
name="兽穴",				--地图名称
map="map069",				--所用到的地图文件编号
mapa="map069a",				--a为小包，b为大包
NPCMax=1,				--npc数量：包括：野生植物，矿物，npc
BossMax=1,				--最大BOSS数量
markx= 94,				--默认地图飞行落脚点x坐标
marky= 164,				--默认地图飞行落脚点y坐标
RoomID= "lu_15ywfb",			--地图脚本名
AreaAndMusic = "3_6",			--背景音乐
fight= -20,				--地图PK值限定
diesend="lu_zongmiao",			
diebackmap = "lu_zongmiao",
stall= 1,				--0不能摆摊   1能摆摊
level=20,				--地图限制最低进入等级
reftype=2,				--- reftype 1 植物   2,boss  3.植物+boss 默认为0
occupy= 0,				---没用
dieloss= 0,				--死亡惩罚的铜钱掉落参数
firstmap="lu_15ywfb",			---初始地图名
nozb=1,					--不能被抓捕 默认能
}
door(1,"lu_wds","五斗山",31,144,271,271,3); --前两坐标  门xy  后两坐标 出来落点xy  方向0 1 2 3 分别对应 12 15 18 21点方向
addboss(1,228,130,"boss15yw",4,"r:2 r:2 r:2 r:2 d:2 d:2 d:2 d:2 l:2 l:2 l:2 l:2 u:2 u:2 u:2 u:2",11,20); --添加BOSS