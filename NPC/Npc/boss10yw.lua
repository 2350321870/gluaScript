NPCINFO = {
serial="605" ,
base_name="boss10yw" ,
icon=2755,
NpcMove=2755,
name="������" ,
iconaddr=1 ,
butt="1|1|85" ,
name_color="CEFFCE" ,
LuaType=1,
class = "wu",
addhp = 3000,
addmp = 2500000,
addjz=7000,
addfy=22,
addgj=19,
isboss = 1,
level = 8,
ca = 1,
move_speed = 3,
att_frep = 5000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 30,
skill_count = 6,
skill_list="121:1 174:1 167:1 121:1 168:1 177:1",
--121����   174������   167�콵����   ����   168ħ����  177���ǳ�   121����   
win_exp = 5200,
rand = 10000,
gold_base = 0,
win_money = 1000,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_falchion003:15|e_sword003:30|e_pen002:45|e_clothes004:60|e_pants004:85|e_head004:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<8) then -----ʹ��ʨ�Ӻ� 3
		BossLocalMsg("@1����@0  ����ΪʲôӢ����˳��������壬����������ı����ɣ�����...")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",8)
	elseif(bhp<15 and LuaQueryVar("ref1")<7) then -----ʹ��ʨ�Ӻ� 3
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",7)
	elseif(bhp<35 and LuaQueryVar("ref1")<6) then------ʹ�ÿ�ŭ 2
 		BossLocalMsg("@1ħ����@0  �������У���һ��Ҫ�������鱨�͵��������峤����")
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
	elseif(bhp<50 and LuaQueryVar("ref1")<5) then -----ʹ���ͻ� 1
		BossLocalMsg("@1����@0  �������䣬��ս�پ��������ҵļ�ǿ�����ּ���")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",5)
	elseif(bhp<65 and LuaQueryVar("ref1")<4) then -----ʹ��ʨ�Ӻ� 3
		BossLocalMsg("@1�콵����@0  �������Կ��˰ɣ���ҪС����...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----ʹ�ó��� 4
		BossLocalMsg("@1������@0  �������峤�ϴ��ҵ��¼��ܣ��ٺ٣��������˰�..")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then 
		BossLocalMsg("@1����@0  �ߣ�������ǿ�������Ƹ֣����Ƕ����ܹ��Ƶ�..")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("����������ǰ����̽���飬��Ȼ�������ˣ�����Ӣ�۷���һ�����ձض���л")
    else
        Attack(EnemyID,0,0)
	end
return 1
end