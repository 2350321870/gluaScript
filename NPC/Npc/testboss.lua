--------------**演示技能专用**--------------------
NPCINFO = {
serial="401" ,
base_name="testboss" ,
icon=2728,
NpcMove=2728 ,
name="霸王龙" ,
iconaddr=1 ,
butt="1|1|52" ,
name_color="CEFFCE" ,
LuaType=1,
class = "xian",
addhp = 20000,
addmp = 25000,
addjz=1,
addfy=1000,
addgj=1,
isboss = 1,
level = 1,
ca = 1,
move_speed = 8,
att_frep = 3000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 100,
skill_count = 9,
skill_list="150:1 156:1 152:1 114:1 154:1 155:1 151:1 153:1 117:1",--这里调用技能特效好看的技能
win_exp = 10,
rand = 10000,
gold_base = 100,
win_money = 1,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 0,
other = "o_drug_hp1:50|o_drug_mp1:100",
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)	
     ref1=LuaQueryVar("ref1")
     if(ref1==0) then
          Attack(EnemyID,1,0)
	  LuaSetVar("ref1",1)
     elseif(ref1==1) then
	      Attack(EnemyID,2,0)
	      LuaSetVar("ref1",2)
     elseif(ref1==2) then
	      Attack(EnemyID,3,0)
	      LuaSetVar("ref1",3)
     elseif(ref1==3) then
	      Attack(EnemyID,4,0)
	      LuaSetVar("ref1",4)
     elseif(ref1==4) then
	      Attack(EnemyID,5,0)
	      LuaSetVar("ref1",5)
     elseif(ref1==5) then
	      Attack(EnemyID,6,0)
	      LuaSetVar("ref1",6)
     elseif(ref1==6) then
              Attack(EnemyID,7,0)
              LuaSetVar("ref1",7)
     elseif(ref1==7) then
              Attack(EnemyID,8,0)
              LuaSetVar("ref1",8)
     elseif(ref1==8) then
              Attack(EnemyID,9,0)
              LuaSetVar("ref1",9)
     elseif(ref1==9) then
	      LuaSetVar("ref1",0)
     end


  return 1
end
