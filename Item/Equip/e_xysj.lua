﻿ITEMINFO = {
	icon = 1631,
	list_icon = 23,--装备的图标，根据客户端中的道具图标列表编号添加
	wield_position = 1,	--装备位置1、装备位置为右手：刀、笔、扇、剑；为双手武器2、装备位置为左手：匕首、盾牌、书；3、为头部；4、为上身：衣服5、为下身：裤子；6、为脚部：鞋子7、为坐骑：坐骑8、为耳部：耳环9、为项链10、为宠物 
	type = "sword",	--可以使用,没有这个字段就不能使用，其他还有"刀","剑","匕首","笔","扇","书"："falchion","sword","knife","pen","fan","book"；"头盔","衣服","鞋子","裤子","盾牌"："head","clothes","shoes","pants","shield"；"耳环","项链","宠物","坐骑"："earring","necklace","pet","glove"；"药品","食物"："expendable","food"；"道具","传送物品","材料","种子","合成书","元宝" "其它"："state","transmittal","material","seed","mix_book","yuanbao","task"
	is_bag_item = 1,	--背包位置
	name = "轩辕神剑",	--装备名称
	["required/level"] = 35,--所需等级
	dresstype = "801",
	dresscolor = 1,
	BindType = "ImmediatelyBind", ---绑定，其他还有Used_Bind使用绑定；Delivery_Bind赠送绑定;ImmediatelyBind
	max_damage = 1800,	--最大攻击
	defense = 126,
	max_hp = 5000, 
	max_mp = 5000,
	dex = 126,--敏捷
	str=126,--力量
	int=126,--智慧
	no_bothhands = 1,	--非双持武器，
	value = 5250,
}


