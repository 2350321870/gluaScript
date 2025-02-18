 NPCINFO ={
	serial="601" ,
	base_name="boss25yw" ,
	icon=2980,
	NpcMove=2980,   
	name="天师头目",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =25,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	
	addhp =15000,--BOSS血量
	addmp =2500000,--BOSS蓝条
	addgj = 110,--攻击
	addfy = 100,--防御
	addsd = 110,--闪躲
	addjz = 8000,--精准  

	move_speed = 3,--移动速度
	att_frep = 3000,--攻击间隔，毫秒
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 200,--方圆100个像素可追到
	attack_range =40,--方圆20个像素可攻击到
	skill_count = 7,--技能种类
	skill_list="250:3 221:3 167:2 116:1 168:1 103:2 123:1",
	--250 震晕  221 五雷轰顶   167 天降神雷  116 反弹  168 魔法盾  103 弱甲 123 虚弱
			------------以辅助为主
	win_exp = 18200,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
	other = "o_present102:20|o_present022:10|o_present024:10|e_falchion010:8|e_sword012:16|e_fan005:24|e_clothes012:35|e_pants012:46|e_head012:65|e_earring006:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<9) then -----使用
		BossLocalMsg("啊，我命不久矣...我一定会回来的")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",9)
	elseif(bhp<20 and LuaQueryVar("ref1")<8) then------使用反弹 4
		BossLocalMsg("@1反弹@0  哈哈，天佑我也，打我就等于伤你自己，嘿嘿，我最喜欢看人自残了！")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",8)
	elseif(bhp<30 and LuaQueryVar("ref1")<7) then------使用虚弱 7
		BossLocalMsg("@1震晕@0  我看英雄面向乃我同道中人，且骨根奇佳，我不想毁了这么好的苗子，英雄还是走吧,我求求你了，我还不想死啊...")
 		Attack(EnemyID,7,0)
		LuaSetVar("ref1",7)
	elseif(bhp<40 and LuaQueryVar("ref1")<6) then------使用天降神雷 3
		BossLocalMsg("@1天降神雷@0  老天都不容你，速速领死..")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",6)
	elseif(bhp<50 and LuaQueryVar("ref1")<5) then -----使用五雷轰顶 2
		BossLocalMsg("@1五雷轰顶@0  老夫引动天之神雷，把你劈的魂飞魄散")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",5)
	elseif(bhp<60 and LuaQueryVar("ref1")<4) then -----使用弱甲 6
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----使用震晕 1
		BossLocalMsg("@1震晕@0  嘿嘿，不能动了吧")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then -----使用天降神雷 3
		BossLocalMsg("@1天降神雷@0  我教乃天之化身，冒犯我就等于冒犯天，找死...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("我乃天师教之万人小队长，你是何人，此乃我天师教地界，速速离开..")
    else
        Attack(EnemyID,0,0)
	end
return 1
end