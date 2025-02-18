 NPCINFO ={
	serial="321" ,
	base_name="bossta15" ,
	icon=2980,
	NpcMove=2980,   
	name="黑暗魔王【绝世+6】",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =100,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	addhp = 16236702,
	addmp = 2500000,
	addjz=8000,
	addfy = 153615,
	addgj = 154765,
	move_speed =7,--移动速度
	att_frep = 1100,
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 100,--方圆100个像素可追到
	attack_range =100,--方圆20个像素可攻击到
	skill_count = 9,--技能种类
	skill_list="122:4 174:4 223:3 167:5 221:4 122:5 174:4 166:3 122:6 167:7",
	--122 半月斩   174 裂心神   223 强力弱甲   167 天降神雷  221 五雷轰顶  122 半月斩  174 裂心神   166 妙手回春   122 半月斩   167 天降神雷     
	win_exp = 68200,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
	other = "o_present105:10|o_huangjin:1|e_clothes022:6|e_falchion020:11|e_sword021:16|e_pen021:22|e_book009:27|e_shield009:32|e_knife011:38|e_pants022:44|e_earring009:50|e_falchion158:53|e_shield158:56|e_sword158:60|e_knife158:63|e_pen158:66|e_book158:70|e_head158:75|e_clothes158:80|e_pants158:85|e_shoes158:90|e_earring158:95|e_necklace158:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp<=5 and LuaQueryVar("ref1")<11) then --天降神雷
		Attack(EnemyID,10,0)
		LuaSetVar("ref1",11)
		BossLocalMsg("@1五雷轰顶@0  我投降了,我投降了!大侠饶命啊！")
	elseif(bhp<=15 and LuaQueryVar("ref1")<10) then --半月斩
		Attack(EnemyID,9,0)
		LuaSetVar("ref1",10)
	elseif(bhp<=20 and LuaQueryVar("ref1")<9) then --妙手回春
		Attack(EnemyID,8,0)
		LuaSetVar("ref1",9)
		BossLocalMsg("@1妙手回春@0  该死，一个大意让你打了这么多血，有种别打，让我回满")
	elseif(bhp<=30 and LuaQueryVar("ref1")<8) then --裂心神
		Attack(EnemyID,7,0)
		LuaSetVar("ref1",8)
		BossLocalMsg("@1裂心神@0  噢哦，又晕了...")
	elseif(bhp<=40 and LuaQueryVar("ref1")<7) then --半月斩
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",7)
	elseif(bhp<=50 and LuaQueryVar("ref1")<6) then --五雷轰顶
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
		BossLocalMsg("@1五雷轰顶@0  天道之力不容抗拒，孩子，回归地狱的怀抱吧")
	elseif(bhp<=60 and LuaQueryVar("ref1")<5) then --天降神雷
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",5)
	elseif(bhp<=70 and LuaQueryVar("ref1")<4) then --强力弱甲
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",4)
		BossLocalMsg("@1强力弱甲@0  看我独门绝技，防御减少这么多看你还顶不顶，领死吧")
	elseif(bhp<=80 and LuaQueryVar("ref1")<3) then --裂心神
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",3)
		BossLocalMsg("@1裂心神@0  敢惹我黑暗魔王，嘿嘿，不能动的人打着才爽...")
	elseif(bhp<=95 and LuaQueryVar("ref1")<2) then --半月斩
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("啊、啊、啊！呃啊！！！！可恶......")
    else
        Attack(EnemyID,0,0)
	end
return 1
end
