NPCINFO = {
serial="501" ,
base_name="boss001" ,
icon=2757,
NpcMove=2757,
name="������ʿ" ,
iconaddr=1 ,
butt="1|1|85" ,
name_color="CEFFCE" ,
LuaType=1,
class = "wu",
addhp = 3000,
addmp = 2500000,
addjz=1,
addfy = 9,
addgj = 13,
isboss = 1,
level = 8,
ca = 1,
move_speed = 8,
att_frep = 1000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 30,
skill_count = 5,
skill_list="122:1 129:1 162:1 164:1 223:1",--122 ����ն  129 ����֮������Χ���ܣ� 162 ����  164 ������  223 ǿ������  
win_exp = 22200,
rand = 10000,
gold_base = 0,
win_money = 1000,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "o_present102:8|o_present022:88|o_present024:12",--,10Ԫ��,1�����ϰ�,2�����ϰ�,
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
     if(bhp<10) then
          Attack(EnemyID,0,0)
     --elseif(bhp<20 and LuaQueryVar("ref1") < 10) then
         -- Attack(EnemyID,3,0)
         -- LuaSetVar("ref1",10)
     --elseif(bhp<30 and LuaQueryVar("ref1") < 9) then
              --Attack(EnemyID,4,0)
              --LuaSetVar("ref1",9)
     elseif(bhp< 20 and LuaQueryVar("ref1") < 6) then
	      BossLocalMsg("�����������Ѿ�5��ûˢ���� ���ҵĿڳ�����Ѭ����500��Ѫ����ô��,�ѵ�һ�㶼������")
	      Attack(EnemyID,5,0)
	      LuaSetVar("ref1",6)
     elseif(bhp<65 and LuaQueryVar("ref1") < 5) then
	      Attack(EnemyID,2,0)
	      LuaSetVar("ref1",5)
     elseif(bhp<80 and LuaQueryVar("ref1") < 4) then
	      BossLocalMsg("��Ҫ�������ÿ�ݳ�ҩ�����ᣬ�ǲ�����ɱ���ҵ�,���и��ʵ���10Ԫ��,1��,2�����ϰ�����ͷ��@3���鳤@0����ѧϰһ����ɣ�����!")
	      Attack(EnemyID,0,0)
	      LuaSetVar("ref1",4)
     elseif(bhp<95 and LuaQueryVar("ref1") < 3) then
	      Attack(EnemyID,1,0)
	      LuaSetVar("ref1",3)
     elseif(LuaQueryVar("ref1") == 1) then
              Attack(EnemyID,0,0)
              LuaSetVar("ref1",2)
     elseif(LuaQueryVar("ref1") < 1) then
              LuaSetVar("ref1",1)
     else
              Attack(EnemyID,0,0)
    end
  return 1
end


