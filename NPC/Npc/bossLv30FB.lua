NPCINFO = {
serial="306" ,
base_name="bossLv30FB" ,
icon=2938,
NpcMove=2938,
name="а����ʦ" ,
iconaddr=1 ,
butt="1|1|60" ,
name_color="0000C8" ,
LuaType=1,
class = "shen",
addhp = 52000,
addmp = 2500000,
addjz=7000,
addfy=160,
addgj=260,
isboss = 1,
level = 35,
ca = 1,
move_speed = 8,
att_frep = 3000,
target_type = 3,
target = "shen",
track_range = 200,
attack_range = 100,
skill_count = 7,
skill_list="102:2 103:2 106:3 116:2 131:3 250:1 251:1",-- 102��������  103 �Ʒ����� 106ս������  116����  131ŭ������ boss���м��ܣ�250���� 251��ŭ
win_exp = 22200,
rand = 10000,
gold_base = 0,
win_money = 1000,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_falchion010:15|e_sword010:30|e_pen006:45|e_clothes012:60|e_pants012:85|e_head012:100",
}
--[[boss AI ˵��
1��bossר�����ܣ�250Ⱥ�Ρ�251��ŭ
2�����ɣ���ҷ�ɢ�󣬽������ܵ����⼼�ܵ��˺�
3��boss�����������ٴκ��к�Ч����--����]]


function BossAI(bhp,bmp,EnemyID,hp,mp,level)
    if(bhp<25 and bhp>10) then	--����׶Σ�ʹ�ó����˺���Ⱥ��
      ref2=LuaQueryVar("ref2")
      if(ref2==0) then
      Attack(EnemyID,7,0)
      LuaSetVar("ref2",1)
      --DoTalk(EnemyID,"Tliaotian2")--�������ӿ�
      elseif(ref2==1) then
      Attack(EnemyID,1,0)
      LuaSetVar("ref2",2)
      elseif(ref2==2) then
      Attack(EnemyID,6,0)
      LuaSetVar("ref2",3)
      elseif(ref2==3) then
      Attack(EnemyID,1,0)
      LuaSetVar("ref2",4)
      elseif(ref2==4) then
      Attack(EnemyID,2,0)
      LuaSetVar("ref2",5)
      elseif(ref2==5) then
      Attack(EnemyID,3,0)
      LuaSetVar("ref2",3)
      end
    else
    ref1=LuaQueryVar("ref1")
     if(ref1==0) then
     Attack(EnemyID,1,0)
     LuaSetVar("ref1",1)
     elseif(ref1==1) then
     Attack(EnemyID,0,0)
     LuaSetVar("ref1",2)
     --DoTalk(EnemyID,"Tliaotian1")--�������ӿ�
     elseif(ref1==2) then
     Attack(EnemyID,3,0)
     LuaSetVar("ref1",3)
     elseif(ref1==3) then
     Attack(EnemyID,4,0)
     LuaSetVar("ref1",4)
     elseif(ref1==4) then
     Attack(EnemyID,0,0)
     LuaSetVar("ref1",5)
     elseif(ref1==5) then
     Attack(EnemyID,5,0)
     LuaSetVar("ref1",6)
     elseif(ref1==6) then
     Attack(EnemyID,2,0)
     LuaSetVar("ref1",3)
     else
     Attack(EnemyID,0,0)
     end
    end
return 1
end

function do_talk(answer)
if (answer=="ask") then
AddTopSayMenuItem("1111","")
AddTopSayMenuItem("����1","Tliaotian1")
AddTopSayMenuItem("����2","Tliaotian2")
return 1

elseif(answer=="Tliaotian1") then
	LuaSay("@3а����ʦ�������޵еģ�û���ܴ���ң�����")
elseif(answer=="Tliaotian2") then
	LuaSay("@3а����ʦ���Ҳ��ܽ��������ʵ�������޵еģ�����")
	LuaSay("@3��ʾ��а����ʦ�����ˣ������ȶ㿪��")
end
LuaSendMenu()
return 1
end