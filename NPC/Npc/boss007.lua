NPCINFO = {
serial="508" ,
base_name="boss007",
icon=2977,
NpcMove=2977,
name="����",
iconaddr=1 ,
butt="10|10|30" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 257296,
addmp = 2500000,
addjz=9000,
addfy = 709,
addgj = 1079,
isboss = 1,
level = 52,
ca = 1,
sp=1,
move_speed = 5,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="103:9 104:9 109:9 124:9 127:9 128:9",----103:�Ʒ����� 104���ٳ��  109���� 124��Ѩ 127���� 128������ɱ
win_exp = 55200,
rand = 10000,
gold_base = 0,
win_money = 4500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "o_present103:12|o_present032:2|o_present030:2|e_clothes019:10|e_falchion017:20|e_sword019:30|e_pen018:40|e_book008:50|e_shield007:60|e_knife009:70|e_pants019:80|e_earring007:100",
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
