NPCINFO = {
serial="503" ,
base_name="boss003" ,
icon=2760,
NpcMove=2760,
name="ÕÚ…ﬂ" ,
iconaddr=1,
butt="10|10|88",
name_color="CEFFCE",
LuaType=1,
class = "xian",
addhp = 13230,
addmp = 2500000,
addjz=8000,
addfy = 37,
addgj = 56,
isboss = 1,
level = 30,
ca = 1,
move_speed = 4,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 120,
attack_range = 60,
skill_count = 6,
skill_list="122:3 129:3 162:3 164:3 223:3 129:5",
win_exp = 50000,
rand = 10000,
gold_base = 0,
win_money = 5500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "o_present103:8|o_present024:3|o_present026:4|e_falchion010:8|e_sword012:16|e_fan005:24|e_clothes012:35|e_pants012:46|e_head012:65|e_earring006:99|o_box002:100",
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
