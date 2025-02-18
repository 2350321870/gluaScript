NPCINFO = {
serial="501",
base_name="bossfb01",
icon=2729,
NpcMove=2729 ,
name="牛叉" ,
iconaddr=1 ,
butt="1|1|62" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 12000,
addmp = 2500000,
addjz=9000,
addfy=10,
addgj=100,
isboss = 1,
level = 40,
ca = 1,
move_speed = 1,
att_frep = 100,
target_type = 0,      ---0所有  3职业  1国家 2帮派  (0 3有用) 
target = "shen",   -----------主动锁定对象 
track_range = 50,
attack_range = 50,
skill_count = 6,
skill_list="105:3 107:1 109:3 111:2 113:4 125:1",--105金钟罩  107疾风斩 109震晕  111无敌 113烈焰  125搏命突击
win_exp = 32200,
rand = 10000,
gold_base = 100,
win_money = 2500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 0,
other = "o_drug_hp3:100",
--other = "e_falchion004:8|e_sword004:16|e_fan002:24|e_clothes005:40|e_pants005:55|e_head005:65|e_head037:75|e_earring001:100",
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


