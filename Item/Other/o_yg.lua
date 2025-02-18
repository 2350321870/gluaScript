ITEMINFO = {
	name = "@3银果@0",	--名字
	list_icon = 52,	--使用图标编号
	type = "task",	--物品类型task会使用后回调用do_use下对应脚本，其他还有"刀","剑","匕首","笔","扇","书"："falchion","sword","knife","pen","fan","book"；"头盔","衣服","鞋子","裤子","盾牌"："head","clothes","shoes","pants","shield"；"耳环","项链","宠物","坐骑"："earring","necklace","pet","glove"；"药品","食物"："expendable","food"；"道具","传送物品","材料","种子","合成书","元宝" "其它"："state","transmittal","material","seed","mix_book","yuanbao","task"
	is_bag_item = 1,--存放在普通背包，其他还有is_other_item = 1,存放在任务背包
	--BindType = "ImmediatelyBind", ---绑定，其他还有Used_Bind使用绑定；Delivery_Bind赠送绑定
	value = 1,
    pkdrop = 1,
	description = "打开后就可以得到50万铜币！", --说明
}
