NPCINFO = {
serial="504",
base_name="boss004",
icon=2904,
NpcMove=2904,
name="ÐÞÂÞÄ¢¹½",
iconaddr=1,
butt="10|10|73",
name_color="CEFFCE",
LuaType=1,
class = "xian",
addhp = 27783,
addmp = 2500000,
addjz=8000,
addfy = 77,
addgj = 117,
isboss = 1,
level = 38,
ca = 1,
move_speed = 4,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 120,
attack_range = 60,
skill_count = 6,
skill_list="122:4 129:4 162:4 164:6 223:4 129:6",
win_exp = 50000,
rand = 10000,
gold_base = 0,
win_money = 5500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--other = "e_falchion006:20|e_clothes007:40|e_pants006:70|e_head007:100",
other = "o_present103:8|o_present028:3|o_present026:4|e_falchion013:8|e_sword014:16|e_fan007:24|e_clothes015:35|e_pants015:46|e_head015:65|e_earring008:99|o_box002:100",
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







