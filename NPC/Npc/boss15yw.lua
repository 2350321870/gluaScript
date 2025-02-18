 NPCINFO ={
	serial="600" ,
	base_name="boss15yw" ,
	icon=2982,
	NpcMove=2982,   
	name="天师守护兽",
	iconaddr=1 ,
	butt="1|1|65" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =15,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	
	addhp =7500,--BOSS血量
	addmp =2500000,--BOSS蓝条
	addgj = 60,--攻击
	addfy = 50,--防御
	addsd = 80,--闪躲
	addjz = 8000,--精准  

	move_speed = 6,--移动速度
	att_frep = 2500,--攻击间隔，毫秒
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 80,--方圆100个像素可追到
	attack_range =30,--方圆20个像素可攻击到
	skill_count = 4,--技能种类
	skill_list="104:1 107:1 109:2 113:1",
	--104 猛击  107 狂怒  109 狮子吼  113  嘲讽
	win_exp = 8820,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
	other = "e_falchion005:8|e_sword005:16|e_fan003:24|e_clothes005:40|e_pants005:55|e_head005:70|e_earring004:100",
} 
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<6) then -----使用狮子吼 3
		BossLocalMsg("@1狮子吼@0  为什么天师教会惹上你这种无赖，天亡我天师教啊  55555...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",6)
	elseif(bhp<30 and LuaQueryVar("ref1")<5) then------使用狂怒 2
 		BossLocalMsg("@1狂怒@0  我就是拼了性命也要保住天师教，鼠辈，受死...")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",5)
	elseif(bhp<55 and LuaQueryVar("ref1")<4) then -----使用猛击 1
		BossLocalMsg("@1猛击@0  天师教为何惹上你这种劲敌，哎，天师教没想到连审时度势的能力都没了")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----使用狮子吼 3
		BossLocalMsg("@1狮子吼@0  哼，虽说天师教如今破败不堪，但也不是你们这些阿猫阿狗能惹得起的")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then -----使用嘲讽 4
		BossLocalMsg("@1嘲讽@0  看你那身板，还来找我天师教麻烦，自不量力.....")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("我乃天师教之山门守护兽，犯我天师教者，杀无赦..")
    else
        Attack(EnemyID,0,0)
	end
return 1
end