 NPCINFO ={
	serial="318" ,
	base_name="bossta06" ,
	icon=2986,
	NpcMove=2986,   
	name="嗜血狂魔【狂化】",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "xian",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =70,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	addhp = 132269,
	addmp = 2500000,
	addjz=8000,
	addfy = 941,
	addgj = 1314,
	move_speed =4,--移动速度
	att_frep = 1000,
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 50,--方圆50个像素可追到
	attack_range =50,--方圆50个像素可攻击到
	skill_count = 4,--技能种类
	skill_list="103:3 106:4 122:4 251:2",--103 破防攻击 106战栗惊心 122 半月斩 boss特有技能：251 天怒   
	win_exp = 68200,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
 other = "o_present104:10|o_huangjin:1|e_falchion022:10|e_sword022:20|e_pen012:30|e_shield008:40|e_knife010:50|e_falchion156:53|e_shield156:56|e_sword156:60|e_knife156:63|e_pen156:66|e_book156:70|e_head156:75|e_clothes156:80|e_pants156:85|e_shoes156:90|e_earring156:95|e_necklace156:100"
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp<80 and bhp>=60)then
		local ref1=LuaQueryVar("ref1")
		if(ref1==0)then
			BossLocalMsg("通过我这一关可没那么容易！")
			Attack(EnemyID,1,0)
			LuaSetVar("ref1",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<60 and bhp>=40)then
		local ref2=LuaQueryVar("ref2")
		if(ref2==0)then
			BossLocalMsg("我是无敌的，没人能打败我！")
			Attack(EnemyID,2,0)
			LuaSetVar("ref2",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<40 and bhp>=25)then
		local ref3=LuaQueryVar("ref3")
		if(ref3==0)then
			BossLocalMsg("不是吧！你这么猛，看样子我不拿出点真功夫你是不知道我有多么的可怕！")
			Attack(EnemyID,3,0)
			LuaSetVar("ref3",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<25 and bhp>=10)then
		local ref4=LuaQueryVar("ref4")
		if(ref4==0)then
			BossLocalMsg("奇迹啊！能更我过这么多招还没死！看招...")
			Attack(EnemyID,4,0)
			LuaSetVar("ref4",1)	
		else
			Attack(EnemyID,3,0)
		end
	elseif(bhp<10)then
		local ref5=LuaQueryVar("ref5")
		if(ref5==0)then
			BossLocalMsg("我投降了！我投降了，没人性啊，都不让投降...")
			Attack(EnemyID,1,0)
			LuaSetVar("ref5",1)	
		else
			Attack(EnemyID,0,0)
		end
	else
		Attack(EnemyID,0,0)
	end
return 1
end
