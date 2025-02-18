ITEMINFO = {
list_icon = 34,
wield_position = 10,
type = "pet",
is_bag_item = 1,
name = "@2黄金虎[五品]@0",
	value = 1,
BindType = "ImmediatelyBind",
--description="",
}
PETINFO = {
type=1,--宠物特色:高位品质123，绿色，蓝色，黄色，关系到宠物生命、攻击、防御提升的数值
name = "@2黄金虎@0",
name_color = "CEFFCE",
hp=1,
level=20,--初始等级
petstar=4,--宠物星等
max_level=90,--最高成长等级,通过驯化提升
max_hp=5500, 
att=900,--攻击加成att
def=900,--防御减伤def
exp_get=50,--经验获得加成：exp_get
PetMove=15012,--动作的BIN文件名
--lv=xx,内部,当前等级
--exp=xx,内部,经验
last_trlv=0,--上次修练级别
}
--if(EquipInfo(10)==1)--宠物装备位
--LuaPetExp()--宠物经验
--LuaPetDelete()==1--删除宠物
--LuaPetQuery("max_level")--最大等级
