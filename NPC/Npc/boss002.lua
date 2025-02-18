NPCINFO = {
serial="502" ,
base_name="boss002" ,
icon=2759,
NpcMove=2759,
name="孙恩邪体" ,
iconaddr=1 ,
butt="1|1|80" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 6300,
addmp = 2500000,
addjz=8000,
addfy = 18,
addgj = 27,
isboss = 1,
level = 20,
ca = 1,
move_speed = 5,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="122:2 129:2 162:2 164:2 223:2 129:3",
win_exp = 32200,
rand = 10000,
gold_base = 0,
win_money = 2500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--other = "e_falchion005:20|e_clothes006:40|e_pants006:70|e_head006:100",
other = "o_present103:8|o_present022:4|o_present024:4|e_falchion005:8|e_sword005:16|e_fan003:24|e_clothes005:40|e_pants005:55|e_head005:70|e_earring004:100",
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
      if(bhp<20 and LuaQueryVar("ref1") < 10) then
        BossLocalMsg("看来我只好使出绝招了，大侠饶命啊！大侠饶命啊！")
        Attack(EnemyID,6,0)
        LuaSetVar("ref1",10)

      elseif(bhp<30 and LuaQueryVar("ref1") < 9) then
        Attack(EnemyID,1,0)
        LuaSetVar("ref1",9)

	  elseif(bhp<40 and LuaQueryVar("ref1") < 8) then
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",8)

	  elseif(bhp<50 and LuaQueryVar("ref1") < 7) then
	    BossLocalMsg("都是你逼我的，菊爆一指！啊？失灵了！！！")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",7)
					      
	  elseif(bhp<60 and LuaQueryVar("ref1") < 6) then
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
					      
	  elseif(bhp<70 and LuaQueryVar("ref1") < 5) then
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",5)
					      
	  elseif(bhp<80 and LuaQueryVar("ref1") < 4) then
	 	BossLocalMsg("般若波罗密，呔！看我一掌拍掉你1000血！哈哈!骗你的！")
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
