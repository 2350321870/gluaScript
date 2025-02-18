NPCINFO = {
isboss = 2,--矿产为2 boss为1 
name="劣质铜矿" ,
butt="0|0|24", --碰撞区域
serial= "902" ,--NPC id
icon= 10002,--矿物动画图片
NpcMove= 10002, --矿物动画文件
iconaddr= 1, --资源文件所放的位置,1:为服务器.0为客户端
maxnum=3,--获得的物品种类数必须大于booty字段中物品种类
booty= "o_material_56|o_material_47|o_mission145",--1级晶:90|1级矿:5|F5
getrate= 90,--获得几率
bootyrate="90|99|100",
gettime= 5,--可获得次数
getlevel= 1,--获得需要挖掘最低等级
candig=1,--初始化能不能挖
}