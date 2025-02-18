 NPCINFO ={
	serial="602" ,
	base_name="boss35yw" ,
	icon=2986,
	NpcMove=2986,   
	name="青烽鸟",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =35,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	
	addhp =28000,--BOSS血量
	addmp =2500000,--BOSS蓝条
	addgj = 130,--攻击
	addfy = 110,--防御
	addsd = 300,--闪躲
	addjz = 8000,--精准  

	move_speed = 3,--移动速度
	att_frep = 2000,--攻击间隔，毫秒
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 200,--方圆100个像素可追到
	attack_range =40,--方圆20个像素可攻击到
	skill_count = 9,--技能种类
	skill_list="132:1 167:3 168:1 169:1 219:3 177:1 221:2 222:3 166:1",
	--132 封魔   167 天降神雷   168 魔法盾   169 毁天灭地   219 灭魂狂飙   177 碎星辰   221 五雷轰顶(高伤害)   222 倾国银弹波     166 妙手回春
	win_exp = 28200,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
	other = "e_falchion013:8|e_sword014:16|e_fan007:24|e_clothes015:35|e_pants015:46|e_head015:65|e_earring008:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp>=70) then --100-70段
		if(LuaQueryVar("ref1")==0) then
			BossLocalMsg("我乃此地散休，尔平白无故找我麻烦，是何道理")
			Attack(EnemyID,0,0) --普通攻击
			LuaSetVar("ref1",1)
		elseif(bhp<=95 and LuaQueryVar("ref1")<=1) then  
			Attack(EnemyID,1,0) --封魔
			LuaSetVar("ref1",2)
			BossLocalMsg("@1封魔@0  哈哈，用不了技能看你怎么打我@!")
		elseif(bhp<=80 and LuaQueryVar("ref1")<=2) then
			Attack(EnemyID,2,0) --天降神雷
			LuaSetVar("ref1",3)
			BossLocalMsg("@1天降神雷@0  啊...打了我这么多血，我引动天之异象，要你血债血偿")
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	elseif(bhp>=40) then  --70-40
		if(LuaQueryVar("ref2")==0) then
			Attack(EnemyID,0,0) --普通攻击
			LuaSetVar("ref2",1)
		elseif(bhp<=65 and LuaQueryVar("ref2")<=1) then
			Attack(EnemyID,3,0) --魔法盾
			LuaSetVar("ref2",2)
			BossLocalMsg("@1魔法盾@0  嘿嘿...我有魔法盾，打我只会给我回蓝，一个字，爽哉")
		elseif(bhp<=55 and LuaQueryVar("ref2")<=2) then
			Attack(EnemyID,4,0) --毁天灭地
			LuaSetVar("ref2",3)
		elseif(bhp<=45 and LuaQueryVar("ref2")<=3) then
			Attack(EnemyID,5,0) --灭魂狂飙
			LuaSetVar("ref2",4)
			BossLocalMsg("@1灭魂狂飙@0，哼，动不了了吧，看你还怎么嚣张....")
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	else  --0-40  --诅咒 回光返照 五雷轰顶(高伤害)
		if(LuaQueryVar("ref3")==0) then
			Attack(EnemyID,0,0) --普通攻击
			LuaSetVar("ref3",1)
		elseif(bhp<=35 and LuaQueryVar("ref3")<=1) then
			Attack(EnemyID,6,0) --星辰碎
			LuaSetVar("ref3",2)
		elseif(bhp<=20 and LuaQueryVar("ref3")<=2) then
			Attack(EnemyID,7,0) --五雷轰顶(高伤害)
			LuaSetVar("ref3",3)
			BossLocalMsg("鼠辈，你真的以为你那可伶的伤害会对我造成伤害，我失去了再玩下去的兴趣")
		elseif(bhp<=10 and LuaQueryVar("ref3")<=3) then
			Attack(EnemyID,8,0) --倾国银弹波
			LuaSetVar("ref3",4)
			BossLocalMsg("@1倾国银弹波@0，伟大的我怎么会阴沟里翻船，尝尝这个..")
		elseif(bhp<=5 and LuaQueryVar("ref3")<=4) then
			Attack(EnemyID,9,0) --妙手回春
			LuaSetVar("ref3",5)
			BossLocalMsg("@1妙手回春@0，不可能，我是绝对不可能输的...")
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	end
return 1
end