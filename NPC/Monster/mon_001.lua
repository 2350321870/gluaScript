NPCINFO = {
	name = "巨螳",				--怪物名称
	name_color = "CEFFCE",			--名称颜色
	serial = "001",				--编号
	level = 1,				--怪物等级
	hp = 40,				--怪物HP
	attack =9,				--攻击力
	attack_type =1,				--攻击类型0:正常 1:飞镖  2:闪电
	chase_dis = 20,				--追击范围
	att_dis = 20,				--攻击范围
	move_speed = 1,				--移动速度
	att_frep = 2500,			--攻击速度
	win_exp = 30,				--奖励经验
	rand = 1,				--随机0-base_rand（不包括），小于rand的就掉落
        base_rand=4,				
	gold_base = 40,				--活动铜币的几率
	win_money = 10,				--奖励铜币
	item_base = 0,				
	item = "3|3|0|4|4|4|4|4|4|4|5|0|0|0|40|0|21|0|0|0|0",    --12坐骑 13项链 14耳环  16状态道具 18传送类  21宠物   不掉落
	other_base = 60,			--其他物品掉落几率			
	other = "o_material_11:13|o_material_20:26|o_material_29:39|o_drug_hp1:42|o_drug_mp1:65|e_clothes001:70|e_head001:75|e_pen001:80|e_sword001:85|e_pants001:90|e_falchion001:95|e_shoes001:100",
	--11；1级毛，20：1级皮，29：1级肉
	butt = "16|7|24",			--碰撞 碰撞区长|碰撞区宽|角色高
	icon = 2979,				--图标
	NpcMove = 2979,				--//动画文件名称
	s20_icon = 2879,			--缩减版本怪物图片ID
	s20_NpcMove = 2879,			--缩减版本怪物动作ID
}
--装备【刀|杖|扇|剑|匕首|书|盾牌|头部|衣服|裤子|鞋子|坐骑|项链|耳环|药品|状态道具|材料类|传送类|种子|合成书|宠物】
    --- 1   2  3  4  5    6  7    8    9    10    11   12  13   14   15    16      17     18     19   20     21