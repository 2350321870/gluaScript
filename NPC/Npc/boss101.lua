NPCINFO = {
serial="701" ,
base_name="boss101",
icon=2756,
NpcMove=2756,
name="守方大将军",
iconaddr=1 ,
butt="10|10|88" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 220000,
addmp =2500000,--BOSS蓝条

addjz=8000, --精准
addfy=260,	--防御
addgj=440,	--攻击
addsd = 300,--闪躲

isboss = 1,---是BOSS
level = 60,--BOSS等级
ca = 1,
--sp= 1,--金装是1/30蓝装是9/30绿装是20/30
move_speed =0,
att_frep =2500,	--攻击间隔，毫秒
target_type =2,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
target = "wu",--boss的职业，根据此字段调用公式
track_range =50,--方圆100个像素可追到
attack_range =40,--方圆20个像素可攻击到
skill_count =8,  --技能总数
isac=2,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
skill_list="222:1 167:4 177:7 220:2 250:3 219:5 168:6 166:9",
--222倾国银弹波  167天降神雷  177碎星辰   220三分归元气   250震晕   219灭魂狂飙   168魔法盾  166妙手回春
win_exp = 0,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "",
camp=3,--------1为宣方BOSS，3为守方BOSS
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp>=70) then --100-70段
		if(LuaQueryVar("ref1")==0) then
			BossLocalMsg("@6你打扰了我养尊处优的生活，鼠辈，你要为此付出代价  @1倾国银弹波@0")
			Attack(EnemyID,1,0)--222倾国银弹波  1级   200伤害
			LuaSetVar("ref1",1)
		elseif(bhp<=95 and LuaQueryVar("ref1")<=1) then  
			BossLocalMsg("@6好消息，好消息，我已成功使用魔法@1天降神雷@0，享受雷电的洗礼吧")
			Attack(EnemyID,2,0) --167天降神雷    4级   150伤害 
			LuaSetVar("ref1",2)
		elseif(bhp<=88 and LuaQueryVar("ref1")<=2) then
			BossLocalMsg("@6敢拿我开刀，让哪个傻蛋尝尝厉害，嘿嘿…  @1碎星辰@0")
			Attack(EnemyID,3,0)--177碎星辰   7级
			LuaSetVar("ref1",3)
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	elseif(bhp>=40) then  --70-40
		if(LuaQueryVar("ref2")==0) then
			Attack(EnemyID,0,0) --普通攻击
			LuaSetVar("ref2",1)
		elseif(bhp<=65 and LuaQueryVar("ref2")<=1) then
			BossLocalMsg("@6恭喜你们，终于激起了我的怒气，接受我丰盛的奖赏吧  @1三分归元气@0")
			Attack(EnemyID,4,0) --220三分归元气  2级   3000伤害
			LuaSetVar("ref2",2)
		elseif(bhp<=55 and LuaQueryVar("ref2")<=2) then
			Attack(EnemyID,3,0) --177碎星辰   7级
			LuaSetVar("ref2",3)
		elseif(bhp<=45 and LuaQueryVar("ref2")<=3) then
			BossLocalMsg("@6守方的将士们，尽情的杀戮吧，打不还手的机会可不多哦  @1震晕@0")
			Attack(EnemyID,5,0) --250震晕    3级   30s
			LuaSetVar("ref2",4)
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	else  --0-40  
		if(LuaQueryVar("ref3")==0) then
			BossLocalMsg("@6好消息，好消息，我已成功使用魔法@1天降神雷@0，享受雷电的洗礼吧")
			Attack(EnemyID,2,0) --天降神雷    4级   150伤害
			LuaSetVar("ref3",1)
		elseif(bhp<=35 and LuaQueryVar("ref3")<=1) then
			BossLocalMsg("@6守方的将士们，尽情的杀戮吧，打不还手的机会可不多哦  @1灭魂狂飙@0")
			Attack(EnemyID,6,0) --灭魂狂飙  5   40s
			LuaSetVar("ref3",2)
		elseif(bhp<=30 and LuaQueryVar("ref3")<=2) then
			BossLocalMsg("@6好消息，好消息，我已成功使用魔法@1天降神雷@0，享受雷电的洗礼吧")
			Attack(EnemyID,2,0) --天降神雷    4级   150伤害
			LuaSetVar("ref3",3)
		elseif(bhp<=20 and LuaQueryVar("ref3")<=3) then
			BossLocalMsg("@6守方将士们，赶快回防，我快挂了……  @1魔法盾@0")
			Attack(EnemyID,7,0) --魔法盾   6级
			LuaSetVar("ref3",4)
		elseif(bhp<=15 and LuaQueryVar("ref3")<=4) then
			BossLocalMsg("@6好消息，好消息，我已成功使用魔法@1天降神雷@0，享受雷电的洗礼吧")
			Attack(EnemyID,2,0) --天降神雷    4级   150伤害
			LuaSetVar("ref3",5)
		elseif(bhp<=10 and LuaQueryVar("ref3")<=5) then
			BossLocalMsg("@6暂停… 这么多人欺负我一个，也让我回点血嘛  @1妙手回春@0")
			Attack(EnemyID,8,0) --妙手回春  9级
			LuaSetVar("ref3",6)	
		elseif(bhp<=5 and LuaQueryVar("ref3")<=6) then
			BossLocalMsg("@6死也要拉个垫背的，将士们努力杀敌，为我报仇..  @1三分归元气@0")
			Attack(EnemyID,4,0) --三分归元气  2级   3000伤害
			LuaSetVar("ref3",7)	
		else
			Attack(EnemyID,0,0) --普通攻击
		end
	end
return 1
end