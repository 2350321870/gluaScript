--��Ƕ����
INLAYITEM =
{
	maxCount = 13,--����Ƕ����Ʒ��������
	maxItemEffect = 10,--ÿ��װ������ѡ�����Ƕ���������
	--����Ƕ����Ʒ������ type0 �� type(maxCount - 1)
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
	--��Ƕͭ�Ҿ���
	--��Ƕ�ɹ����þ��飬�ṩ����ϵ����ÿСʱ���Ӿ������2�Σ���ֵ�������ĵ�������
	--��þ��鹫ʽ���������Եȼ� + 1�� ^ 3 * ����Ʒ�ȼ� <= ����ȼ��� ��Ʒ�ȼ� �� ����ȼ��� ^ 2
	expGive1 = 3,		--ϵ��1
	expGive2 = 2,		--ϵ��2
	--��Ƕ���ĵ�ͭ�ң��ṩ��ʽ�е��ĸ�ϵ���޸ġ�
	--����ͭ�ҹ�ʽ�� 200 * 2^�������Եȼ� - 1�� + 30 * װ���ȼ� * 2^��Ƕ������
	moneyCost1 = 200,	--ϵ��1
	moneyCost2 = 2,		--ϵ��2
	moneyCost3 = 30,	--ϵ��3
	--���Ԫ��������
	--0-1��Ӧ0���ܿ��������伸�顣INLAYITEMANDDECOMPOSE��maxEffect�ֶ�Ϊ��������
	YBCost0 = 50,		--��1��Ԫ��
	JBCost0 = 100,		--��1�׽��									
	YBCost1 = 100,		--��2��Ԫ��
	JBCost1 = 200,		--��2�׽��
	YBCost2 = 200,		--��3��Ԫ��
	JBCost2 = 400,		--��3�׽��
	YBCost3 = 400,		--��4��Ԫ��
	JBCost3 = 800,		--��4�׽��
	YBCost4 = 800,		--��5��Ԫ��
	JBCost4 = 1600,		--��5�׽��
}
--�ֽ�����
DECOMPOSE = 
{
	minLevel = 3,		--���Եȼ����ڸõȼ����ܲ��
	decomposeStage = 4,	--������ĵĽ׶Σ���ͬ�׶����Ĳ���������ͬ�������ڽű�������������
	stage0 = 6,			--��һ�׶����Եȼ�С�ڵ���6
	cost0 = 1,			--��һ�׶�����1������
	stage1 = 7,			--�ڶ��׶����Եȼ�С�ڵ���7
	cost1 = 2,			--�ڶ��׶�����3������
	stage2 = 8,			--�����׶����Եȼ�С�ڵ���8
	cost2 = 8,			--�����׶�����12������
	stage3 = 9,			--���Ľ׶����Եȼ�С�ڵ���9
	cost3 = 48,			--���Ľ׶�����60������

}
--��Ƕ�ֽ⹲������
INLAYITEMANDDECOMPOSE = 
{
	maxEffectLevel = 9,	--�������ĵȼ�
	maxEffectKey = 23,	--��������Ƕ����������������������Ʒ����Ƕ���Ե�3����ʼ��1���������ܴ������ֵ
	maxEffect = 5,		--ÿ��װ��������Ƕ�����������������������ϵ����Ʒ����ǰ׺����ʱֻ֧��3��
}
--����������Ʒ����Ƕ����
falchion = 
{
	"falchion",
	5,
	{"2","���","��","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","��Ѫ","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","��ħ","��","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","�����˺�","��","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
sword = 
{
	"sword",
	5,
	{"2","���","��","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","��Ѫ","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","��ħ","��","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","�����˺�","��","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
pen =
{
	"pen",
	5,
	{"2","���","��","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","��Ѫ","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","��ħ","��","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","�����˺�","��","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
fan =
{
	"fan",
	5,
	{"2","���","��","9 o_material_29 15 o_material_30 21 o_material_31 27 o_material_32 36 o_material_33 48 o_material_34 60 o_material_35 75 o_material_36 90 o_material_37"},
	{"3","��Ѫ","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 24 o_material_61 30 o_material_62 36 o_material_63 45 o_material_64"},
	{"4","��ħ","��","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"6","�����˺�","��","270 o_material_47 405 o_material_48 675 o_material_49 810 o_material_50 1080 o_material_51 1260 o_material_52 1665 o_material_53 2025 o_material_54 4500 o_material_55"},
}
shield = 
{
	"shield",
	3,
	{"7","����","ľ","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"8","HP","��","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"10","����","��","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},		
}
knife =
{
	"knife",
	3,
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"7","����","ľ","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"12","����","ë","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},			
}
book =
{
	"book",
	3,
	{"7","����","ľ","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"9","MP","��","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"11","�ǻ�","��","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},			
}
clothes = 
{
	"clothes",
	5,
	{"10","����","��","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","�ǻ�","��","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},			
	{"12","����","ë","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","����","ë","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","����","��","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"},
}
pants = 
{
	"pants",
	5,
	{"10","����","��","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","�ǻ�","��","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},
	{"12","����","ë","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","����","ë","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","����","��","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 			
}
head = 
{
	"head",
	5,
	{"7","����","ľ","3 o_material_38 6 o_material_39 12 o_material_40 18 o_material_41 24 o_material_42 36 o_material_43 48 o_material_44 60 o_material_45 75 o_material_46"},
	{"8","HP","��","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"9","MP","��","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"19","�����","��","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"21","����","��","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 
}
shoes = 
{
	"shoes",
	5,
	{"10","����","��","105 o_material_29 168 o_material_30 331 o_material_31 365 o_material_32 399 o_material_33 525 o_material_34 651 o_material_35 777 o_material_36 882 o_material_37"},
	{"11","�ǻ�","��","105 o_material_56 168 o_material_57 331 o_material_58 365 o_material_59 399 o_material_60 525 o_material_61 651 o_material_62 777 o_material_63 882 o_material_64"},
	{"12","����","ë","105 o_material_11 168 o_material_12 331 o_material_13 365 o_material_14 399 o_material_15 525 o_material_16 651 o_material_17 777 o_material_18 882 o_material_19"},
	{"15","����","ë","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"21","����","��","30 o_material_47 45 o_material_48 60 o_material_49 75 o_material_50 90 o_material_51 105 o_material_52 150 o_material_53 195 o_material_54 240 o_material_55"}, 			
}
necklace = 
{
	"necklace",
	6,
	{"4","��ħ","��","3 o_material_47 6 o_material_48 9 o_material_49 12 o_material_50 15 o_material_51 24 o_material_52 30 o_material_53 36 o_material_54 45 o_material_55"},
	{"5","��׼","ľ","600 o_material_38 700 o_material_39 800 o_material_40 900 o_material_41 1200 o_material_42 1600 o_material_43 2100 o_material_44 2700 o_material_45 3500 o_material_46"},
	{"8","HP","��","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"19","�����","��","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"9","MP","��","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"22","����","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 21 o_material_61 27 o_material_62 36 o_material_63 45 o_material_64"},
}
earring = 
{
	"earring",
	5,
	{"8","HP","��","150 o_material_29 300 o_material_30 450 o_material_31 600 o_material_32 900 o_material_33 1500 o_material_34 2100 o_material_35 2700 o_material_36 3600 o_material_37"},
	{"9","MP","��","150 o_material_56 300 o_material_57 450 o_material_58 600 o_material_59 900 o_material_60 1500 o_material_61 2100 o_material_62 2700 o_material_63 3600 o_material_64"},
	{"15","����","ë","150 o_material_11 250 o_material_12 350 o_material_13 450 o_material_14 550 o_material_15 650 o_material_16 850 o_material_17 1000 o_material_18 1200 o_material_19"},
	{"19","�����","��","6 o_material_47 9 o_material_48 12 o_material_49 15 o_material_50 21 o_material_51 30 o_material_52 36 o_material_53 48 o_material_54 60 o_material_55"}, 
	{"22","����","��","3 o_material_56 6 o_material_57 9 o_material_58 12 o_material_59 15 o_material_60 21 o_material_61 27 o_material_62 36 o_material_63 45 o_material_64"},				
}
--[[1��   2��   3��   4��   5��   6��   7��   8��   9��]]
--����Ҫ��9���ȼ����ֽ����maxEffectLevel - minLevel������һ����minLevel + 1�����Եķֽ���С�����Եȼ��Ĳ��ﶼ�ᱻ�ֽ����
--[[
EFFECTKEY0 = --���ӻ�˯����	%	
{
	"0",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY1 = --���ӱ������� %	
{
	"1",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY2 = --�����������%		
{
	"2",
	{3,	  5,	7,	  9,   12,	 16,   20,	 25,   30},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY3 = --��Ѫ	%	
{
	"3",
	{1,    2,	3,	  4,	5,	  8,   10,	 12,   15},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY4 = --��ħ %
{
	"4",
	{1,    2,	3,	  4,	5,	  8,   10,	 12,   15},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY5 = --���Ӿ�׼ %	
{
	"5",
	{600,  700,  800,  900, 1200, 1600, 2100, 2700, 3500},
	{"o_material_41","o_material_42","o_material_43","o_material_44","o_material_45","o_material_46"},
}
EFFECTKEY6 = --�����˺� %	
{
	"6",
	{20,	 35,   50,	 65,   80,	100,  125,	155,  200},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY7 = --�����˺� %	
{
	"7",
	{1,	  2,  	4,	  6,	8,	 12,   16,	 20,   25},
	{"o_material_41","o_material_42","o_material_43","o_material_44","o_material_45","o_material_46"},
}
EFFECTKEY8 = --����HP����
{
	"8",
	{50,  100,  150,	200,  300,	500,  700,	900, 1200},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY9 = --����MP����
{
	"9",
	{50,  100,  150,	200,  300,	500,  700,	900, 1200},	
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY10 = --��������
{
	"10",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_32","o_material_33","o_material_34","o_material_35","o_material_36","o_material_37"},
}
EFFECTKEY11 = --�����ǻ�
{
	"11",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
EFFECTKEY12 = --��������
{
	"12",
	{5,	  8,   11,	 15,   19,	 25,   31,	 37,   45},
	{"o_material_14","o_material_15","o_material_16","o_material_17","o_material_18","o_material_19"},
}
EFFECTKEY13 = --������Χ
{
	"13",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY14 = --�����ٶ�
{
	"14",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY15 = --��������
{
	"2",
	{100,  200,  300,	400,  500,	620,  800, 1000, 1200},
	{"o_material_14","o_material_15","o_material_16","o_material_17","o_material_18","o_material_19"},
}
EFFECTKEY16 = --�ӿ�ŭ��
{
	"16",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY17 = --����˯
{
	17,
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY18 = --������
{
	"18",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY19 = --�����
{
	"19",
	{2,	  3,	4,	  5,	7,	 10,   13,	 16,   20},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY20 = --��Ƕ��
{
	"20",
	{0,	  0,	0,	  0,	0,	  0,	0,	  0,	0},
	{"","","","","",""},
}
EFFECTKEY21 = --���� 
{
	"21",
	{10,   15,   20,	 25,   30,	 35,   50,	 65,   80},
	{"o_material_50","o_material_51","o_material_52","o_material_53","o_material_54","o_material_55"},
}
EFFECTKEY22 = --���� 
{
	"22",
	{1,	  2,	3,	  4,	5,	  7,	9,	 12,   15},
	{"o_material_59","o_material_60","o_material_61","o_material_62","o_material_63","o_material_64"},
}
]]