SKILLINFO = {
name= "敏捷",
long= "@1不能使用@0 在@3帮派主寨@0的@5帮派总管处激活@0后一定时间内@3敏捷@0提升@2$DEX点@0",  --说明
id=186,
job=0, --技能所属职业填写1为战士，填写2为谋士，填写3为侠客，填写0为所有职业 
max_level= 9,  --技能最高等级
knowledge= 1,  --设置技能知识标识
icon=66,  --图标
isac=0,  ----技能目标，我(0)，其他(1)，所有人(2) 
addr=23,
nouse=1,--技能不能使用
usetips= "不能使用  在帮派总管处激活可提升敏捷属性加成",--技能不能使用  但使用后的提示
}
EFFECTINFO = {
money="0|1000|2000|4000|8000|10000|20000|30000|50000", --升级费用
Skill="0|0|0|0|0|0|0|0|0", --升级消耗技能点
learn="30|36|42|48|54|60|66|72|78",  --升级所需等级
me_state="531",
}