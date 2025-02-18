NPCINFO = {		
serial="505" ,
base_name="boss005" ,
icon=2762,
NpcMove=2762,
name="玄武兽" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 58344,
addmp = 2500000,
addjz=9000,
addfy = 161,
addgj = 245,
isboss = 1,
level = 43,
ca = 1,
sp=1,  --有该字段，装备掉落规则：绿67%，蓝30%，黄3%；没有sp字段，绿89%，蓝10%，黄1%
move_speed = 5,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="122:4 129:4 162:4 164:4 223:4 129:7",
win_exp = 55200,
rand = 10000,
gold_base = 0,
win_money = 2500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,

other ="o_present103:8|o_present028:8|o_present030:4|e_clothes016:10|e_falchion013:20|e_sword015:30|e_pen008:40|e_book007:50|e_shield007:60|e_knife008:70|e_pants016:80|e_earring008:99|o_box002:100",
}

--boss特色：

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
