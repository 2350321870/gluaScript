NPCINFO = {---新副本boss：特色技能：技能连放？提示boss发狂了
serial="702" ,
base_name="boss102",
icon=2738,
NpcMove=2738,
name="大将军",
iconaddr=1 ,
butt="10|10|68" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
not_attack_local = 1,--本国人不攻击
addhp = 150000,
addmp = 2500000,
addjz=8000,
addfy=260,
addgj=640,
isboss = 1,
level = 65,
ca = 1,
sp=1,   
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="102:9 105:9 127:9 121:9 127:9 128:9",----103威力四射 105金钟罩  127飞剑 121冰雪 127剑舞 128致命毒杀
win_exp = 55200,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_clothes022:10|e_falchion020:20|e_sword021:30|e_pen021:40|e_book009:50|e_shield009:60|e_knife011:70|e_pants022:80|e_earring009:100",
camp=1,---保卫国
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
         if(bhp<20 and LuaQueryVar("ref1") < 10) then
               Attack(EnemyID,6,0)
               LuaSetVar("ref1",10)

         elseif(bhp<30 and LuaQueryVar("ref1") < 9) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref1",9)

	     elseif(bhp<40 and LuaQueryVar("ref1") < 8) then
		       Attack(EnemyID,2,0)
		       LuaSetVar("ref1",8)

	     elseif(bhp<50 and LuaQueryVar("ref1") < 7) then
		       Attack(EnemyID,3,0)
		       LuaSetVar("ref1",7)
					      
	     elseif(bhp<60 and LuaQueryVar("ref1") < 6) then
		       Attack(EnemyID,5,0)
		       LuaSetVar("ref1",6)
					      
	     elseif(bhp<70 and LuaQueryVar("ref1") < 5) then
		       Attack(EnemyID,6,0)
		       LuaSetVar("ref1",5)
					      
	     elseif(bhp<80 and LuaQueryVar("ref1") < 4) then
		       Attack(EnemyID,2,0)
		       LuaSetVar("ref1",4)
					      
	     elseif(bhp<90 and LuaQueryVar("ref1") < 3) then
		       Attack(EnemyID,1,0)
		       LuaSetVar("ref1",3)

         elseif(LuaQueryVar("ref1") == 1) then
                Attack(EnemyID,5,1)
                LuaSetVar("ref1",2)
         elseif(LuaQueryVar("ref1") < 1) then
                LuaSetVar("ref1",1)
         else
                Attack(EnemyID,0,0)
                                                    
	     end
return 1
end