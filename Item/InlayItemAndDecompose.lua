--镶嵌配置
INLAYITEM =
{
	maxCount = 13,--可镶嵌的物品的类型数
	maxItemEffect = 10,--每个装备可以选择的镶嵌属性最大数
	--可镶嵌的物品的类型 type0 到 type(maxCount - 1)
	type0 = "falchion",
	type1 = "sword",
	type2 = "pen",
	type3 = "fan",
	type4 = "shield",
	type5 = "knife",
	type6 = "book",
	type7 = "clothes",
	type8 = "pants",
	type9 = "head",
	type10 = "shoes",
	type11 = "necklace",
	type12 = "earring",
	--镶嵌铜币经验
	--镶嵌成功后获得经验，提供两个系数。每小时增加经验最多2次，该值在上限文档中配置
	--获得经验公式：（该属性等级 + 1） ^ 3 * （物品等级 <= 人物等级？ 物品等级 ： 人物等级） ^ 2
	expGive1 = 3,		--系数1
	expGive2 = 2,		--系数2
	--镶嵌消耗的铜币，提供公式中的四个系数修改。
	--消耗铜币公式： 200 * 2^（该属性等级 - 1） + 30 * 装备等级 * 2^镶嵌属性数
	moneyCost1 = 200,	--系数1
	moneyCost2 = 2,		--系数2
	moneyCost3 = 30,	--系数3
	--金币元宝的消耗
	--0-1对应0，能开几个孔配几组。INLAYITEMANDDECOMPOSE表maxEffect字段为开孔数量
	YBCost0 = 50,		--开1孔元宝
	JBCost0 = 100,		--开1孔金币									
	YBCost1 = 100,		--开2孔元宝
	JBCost1 = 200,		--开2孔金币
	YBCost2 = 200,		--开3孔元宝
	JBCost2 = 400,		--开3孔金币
	YBCost3 = 400,		--开4孔元宝
	JBCost3 = 800,		--开4孔金币
	YBCost4 = 800,		--开5孔元宝
	JBCost4 = 1600,		--开5孔金币
}
--分解配置
DECOMPOSE = 
{
	minLevel = 3,		--属性等级大于该等级才能拆解
	decomposeStage = 4,	--拆解消耗的阶段，不同阶段消耗拆解符数量不同，拆解符在脚本名配置中配置
	stage0 = 6,			--第一阶段属性等级小于等于6
	cost0 = 1,			--第一阶段消耗1个拆解符
	stage1 = 7,			--第二阶段属性等级小于等于7
	cost1 = 2,			--第二阶段消耗3个拆解符
	stage2 = 8,			--第三阶段属性等级小于等于8
	cost2 = 8,			--第三阶段消耗12个拆解符
	stage3 = 9,			--第四阶段属性等级小于等于9
	cost3 = 48,			--第四阶段消耗60个拆解符

}
--镶嵌分解共有配置
INLAYITEMANDDECOMPOSE = 
{
	maxEffectLevel = 9,	--属性最大的等级
	maxEffectKey = 23,	--所有能镶嵌的属性总数，各个类型物品的镶嵌属性第3个表开始第1个参数不能大与这个值
	maxEffect = 5,		--每个装备可以镶嵌属性最大数，由于属性数关系到物品名字前缀，暂时只支持3个
}
--各个类型物品的镶嵌属性
falchion = 
{
	"falchion",
	5,
	{"2","麻痹","肉","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","吸血","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","吸魔","矿","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","额外伤害","矿","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
sword = 
{
	"sword",
	5,
	{"2","麻痹","肉","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","吸血","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","吸魔","矿","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","额外伤害","矿","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
pen =
{
	"pen",
	5,
	{"2","麻痹","肉","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","吸血","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","吸魔","矿","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","额外伤害","矿","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
fan =
{
	"fan",
	5,
	{"2","麻痹","肉","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","吸血","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","吸魔","矿","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","额外伤害","矿","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
shield = 
{
	"shield",
	3,
	{"7","反弹","木","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"8","HP","肉","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"10","力量","肉","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},		
}
knife =
{
	"knife",
	3,
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"7","反弹","木","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"12","敏捷","毛","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},			
}
book =
{
	"book",
	3,
	{"7","反弹","木","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"9","MP","晶","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"11","智慧","晶","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},			
}
clothes = 
{
	"clothes",
	5,
	{"10","力量","肉","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","智慧","晶","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},			
	{"12","敏捷","毛","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","闪躲","毛","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","防御","矿","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"},
}
pants = 
{
	"pants",
	5,
	{"10","力量","肉","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","智慧","晶","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},
	{"12","敏捷","毛","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","闪躲","毛","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","防御","矿","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 			
}
head = 
{
	"head",
	5,
	{"7","反弹","木","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"8","HP","肉","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"9","MP","晶","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"19","抗麻痹","矿","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"21","防御","矿","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 
}
shoes = 
{
	"shoes",
	5,
	{"10","力量","肉","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","智慧","晶","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},
	{"12","敏捷","毛","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","闪躲","毛","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","防御","矿","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 			
}
necklace = 
{
	"necklace",
	6,
	{"4","吸魔","矿","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","精准","木","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"8","HP","肉","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"19","抗麻痹","矿","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"9","MP","晶","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"22","减伤","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 21 o_material_61 27 o_material_62 36 o_material_63 45 o_material_64"},
}
earring = 
{
	"earring",
	5,
	{"8","HP","肉","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"9","MP","晶","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"15","闪躲","毛","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"19","抗麻痹","矿","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"22","减伤","晶","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 21 o_material_61 27 o_material_62 36 o_material_63 45 o_material_64"},				
}
--[[1级   2级   3级   4级   5级   6级   7级   8级   9级]]
--属性要配9个等级，分解产物maxEffectLevel - minLevel个，第一个是minLevel + 1级属性的分解产物，小于属性等级的产物都会被分解出来
--[[
EFFECTKEY0 = --增加昏睡命中	%	
{
	"0",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY1 = --增加冰冻命中 %	
{
	"1",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY2 = --增加麻痹命中%		
{
	"2",
	{3,	  5,	7,	  9,   12,	 16,   20,	 25,   30},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY3 = --吸血	%	
{
	"3",
	{1,    2,	3,	  4,	5,	  8,   10,	 12,   15},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY4 = --吸魔 %
{
	"4",
	{1,    2,	3,	  4,	5,	  8,   10,	 12,   15},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY5 = --增加精准 %	
{
	"5",
	{600,  700,  800,  900, 1200, 1600, 2100, 2700, 3500},
	{"o_material_41","o_material_42","o_material_43","o_material_44","o_material_45","o_material_46"},
}
EFFECTKEY6 = --额外伤害 %	
{
	"6",
	{20,	 35,   50,	 65,   80,	100,  125,	155,  200},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY7 = --反弹伤害 %	
{
	"7",
	{1,	  2,  	4,	  6,	8,	 12,   16,	 20,   25},
	{"o_material_41","o_material_42","o_material_43","o_material_44","o_material_45","o_material_46"},
}
EFFECTKEY8 = --增加HP数量
{
	"8",
	{50,  100,  150,	200,  300,	500,  700,	900, 1200},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY9 = --增加MP数量
{
	"9",
	{50,  100,  150,	200,  300,	500,  700,	900, 1200},	
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY10 = --增加力量
{
	"10",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY11 = --增加智慧
{
	"11",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY12 = --增加敏捷
{
	"12",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_14","o_material_15","o_material_16","o_material_17","o_material_18","o_material_19"},
}
EFFECTKEY13 = --攻击范围
{
	"13",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY14 = --攻击速度
{
	"14",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY15 = --增加闪躲
{
	"2",
	{100,  200,  300,	400,  500,	620,  800, 1000, 1200},
	{"o_material_14","o_material_15","o_material_16","o_material_17","o_material_18","o_material_19"},
}
EFFECTKEY16 = --加快怒气
{
	"16",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY17 = --抗昏睡
{
	17,
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY18 = --抗冰冻
{
	"18",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY19 = --抗麻痹
{
	"19",
	{2,	  3,	4,	  5,	7,	 10,   13,	 16,   20},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY20 = --镶嵌槽
{
	"20",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY21 = --防御 
{
	"21",
	{10,   15,   20,	 25,   30,	 35,   50,	 65,   80},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY22 = --减伤 
{
	"22",
	{1,	  2,	3,	  4,	5,	  7,	9,	 12,   15},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
]]