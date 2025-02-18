NPCINFO = {
serial="522" ,
base_name="bossfb31" ,
icon=2918,
NpcMove=2918,
name="¾Þ¸«ÓÂÊ¿" ,
iconaddr=1 ,
butt="1|1|50" ,
name_color="0000C8" ,
LuaType=1,
class = "shen",
addhp = 20000,
addmp = 2500000,
addjz=9000,
addfy=250,
addgj=230,
isboss = 1,
level = 35,
ca = 1,
move_speed = 0,
att_frep = 3000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 100,
skill_count = 4,
skill_list="103:6 106:4 116:5 131:6",--103 ÆÆ·À¹¥»÷ 106Õ½Àõ¾ªÐÄ  116×çÖä  131Å­»ðÉÕÐÄ 
win_exp = 22200,
rand = 10000,
gold_base = 0,
win_money = 1000,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "o_material_13:33|o_material_22:66|o_material_31:100",
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
     LuaSetVar("ref1",0)
     else
     Attack(EnemyID,0,0)
     end

return 1
end