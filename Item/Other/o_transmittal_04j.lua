ITEMINFO = {
	list_icon = 44,
	name = "集体记忆传送",
	type = "transmittal",
	is_bag_item = 1,
	all_transf = 1,--此字段有值，则传送效果对全体队友有效
	mem_transf = 1,--记忆传送，使用此物品后，记录玩家此时的地图ID。再次使用此物品，则将玩家刷新到记录的地图的坐标。
	["required/level"] = 20,
	no_use_map= "lu_dilao",
	value = 2000,
	description = "记忆地图以便再次传回",
}


