NPCINFO = {
serial="504",
base_name="bossfb04" ,
icon=2750,
NpcMove=2750 ,
name="弩炮" ,
iconaddr=1 ,
butt="1|1|62" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 10,
addmp = 2500000,
addjz=9000,
addfy=28,
addgj=1000,
isboss = 1,
level = 40,
ca = 1,
move_speed = 0,
att_frep = 3000,
target_type = 0,      ---0所有  3职业  1国家 2帮派  (0 3有用) 
target = "shen",   -----------主动锁定对象 
track_range = 150,
attack_range = 150,
skill_count = 1,
skill_list="105:1",--105金钟罩
win_exp = 100,
rand = 10000,
gold_base = 100,
win_money = 1,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 0,
other = "o_drug_hp3:100",
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)

     if(bhp<10) then
        Attack(EnemyID,0,0)

	 elseif(bhp<20 and LuaQueryVar("ref1") < 10) then
        Attack(EnemyID,6,0)
        LuaSetVar("ref1",10)

	 elseif(bhp<30 and LuaQueryVar("ref1") < 9) then
        Attack(EnemyID,4,0)
        LuaSetVar("ref1",9)
          
     elseif(bhp<40 and LuaQueryVar("ref1") < 8) then
        Attack(EnemyID,1,0)
        LuaSetVar("ref1",8)

     elseif(bhp<50 and LuaQueryVar("ref1") < 7) then
        Attack(EnemyID,5,0)
        LuaSetVar("ref1",7)
              
     elseif(bhp<60 and LuaQueryVar("ref1") < 6) then
        Attack(EnemyID,6,0)
        LuaSetVar("ref1",6)

     elseif(bhp<70 and LuaQueryVar("ref1") < 5) then
        Attack(EnemyID,3,1)
        LuaSetVar("ref1",5)


	 elseif(bhp<80 and LuaQueryVar("ref1") < 4) then
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",4)

	 elseif(bhp<90 and LuaQueryVar("ref1") < 3) then
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",3)

	 elseif(LuaQueryVar("ref1") ==1) then
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",2)

     elseif(bhp<98 and LuaQueryVar("ref1") < 1) then
        LuaSetVar("ref1",1)
     else
        Attack(EnemyID,0,0)

	   end
  return 1
end


