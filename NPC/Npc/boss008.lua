NPCINFO = {
serial="509" ,
base_name="boss008",
icon=2993,
NpcMove=2993,
name="×ÚÊ¸Íõ",
iconaddr=1 ,
butt="10|10|82" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 540321,
addmp = 9500000,
addjz=9000,
addfy = 1488,
addgj = 2265,
isboss = 1,
level = 55,
ca = 1,
sp=1,   
move_speed = 5,
att_frep = 1000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 6,
skill_list="103:9 104:9 109:9 124:9 127:9 128:9",----103:ÆÆ·À¹¥»÷ 104¼ÓËÙ³å·æ  109ÕðÔÎ 124µãÑ¨ 127½£Îè 128ÖÂÃü¶¾É±
win_exp = 55200,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--60¼¶Ì××°--
other = "o_present103:8|o_present032:3|o_present030:4|e_falchion017:10|e_sword019:20|e_pen018:30|e_shield007:40|e_knife009:50|e_falchion156:53|e_shield156:56|e_sword156:60|e_knife156:63|e_pen156:66|e_book156:70|e_head156:75|e_clothes156:80|e_pants156:85|e_shoes156:90|e_earring156:95|e_necklace156:100"
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
