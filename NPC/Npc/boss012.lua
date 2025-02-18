NPCINFO = {
serial="510" ,
base_name="boss012",
icon=2756,
NpcMove=2756,
name="²ÔÁú",
iconaddr=1 ,
butt="10|10|48" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 10508213,
addmp = 25000000,
addjz=8000,
addfy = 28929,
addgj = 44041,
isboss = 1,
level = 90,
ca = 1,
sp=1,   
move_speed = 8,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="102:9 105:9 127:9 121:9 127:9 128:9",
win_exp = 95200,
rand = 10000,
gold_base = 0,
win_money = 3750,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "o_present105:4|o_present045:1|o_present031:1|e_clothes022:6|e_falchion020:11|e_sword021:16|e_pen021:22|e_book009:27|e_shield009:32|e_knife011:38|e_pants022:44|e_earring009:50|e_falchion158:53|e_shield158:56|e_sword158:60|e_knife158:63|e_pen158:66|e_book158:70|e_head158:75|e_clothes158:80|e_pants158:85|e_shoes158:90|e_earring158:95|e_necklace158:100",
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
