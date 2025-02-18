NPCINFO = {
serial="605" ,
base_name="boss10yw" ,
icon=2755,
NpcMove=2755,
name="异族斥候" ,
iconaddr=1 ,
butt="1|1|85" ,
name_color="CEFFCE" ,
LuaType=1,
class = "wu",
addhp = 3000,
addmp = 2500000,
addjz=7000,
addfy=22,
addgj=19,
isboss = 1,
level = 8,
ca = 1,
move_speed = 3,
att_frep = 5000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 30,
skill_count = 6,
skill_list="121:1 174:1 167:1 121:1 168:1 177:1",
--121剑雨   174裂心神   167天降神雷   剑雨   168魔法盾  177碎星辰   121剑雨   
win_exp = 5200,
rand = 10000,
gold_base = 0,
win_money = 1000,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_falchion003:15|e_sword003:30|e_pen002:45|e_clothes004:60|e_pants004:85|e_head004:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<8) then -----使用狮子吼 3
		BossLocalMsg("@1剑雨@0  啊，为什么英雄如此仇视我异族，等着我异族的报复吧，哈哈...")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",8)
	elseif(bhp<15 and LuaQueryVar("ref1")<7) then -----使用狮子吼 3
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",7)
	elseif(bhp<35 and LuaQueryVar("ref1")<6) then------使用狂怒 2
 		BossLocalMsg("@1魔法盾@0  啊，不行，我一定要保命把情报送到我异族族长手里")
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
	elseif(bhp<50 and LuaQueryVar("ref1")<5) then -----使用猛击 1
		BossLocalMsg("@1剑雨@0  迟则生变，速战速决，试试我的加强版拿手技能")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",5)
	elseif(bhp<65 and LuaQueryVar("ref1")<4) then -----使用狮子吼 3
		BossLocalMsg("@1天降神雷@0  哈哈，吃亏了吧，不要小看我...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----使用嘲讽 4
		BossLocalMsg("@1裂心神@0  尝尝我族长老传我的新技能，嘿嘿，动不了了吧..")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then 
		BossLocalMsg("@1剑雨@0  哼，我异族强悍如铁似钢，岂是尔就能攻破的..")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("我乃异族斥候，前来打探军情，既然被发现了，还请英雄放我一马，来日必定大谢")
    else
        Attack(EnemyID,0,0)
	end
return 1
end