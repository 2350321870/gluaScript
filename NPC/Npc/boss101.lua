NPCINFO = {
serial="701" ,
base_name="boss101",
icon=2756,
NpcMove=2756,
name="�ط��󽫾�",
iconaddr=1 ,
butt="10|10|88" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 220000,
addmp =2500000,--BOSS����

addjz=8000, --��׼
addfy=260,	--����
addgj=440,	--����
addsd = 300,--����

isboss = 1,---��BOSS
level = 60,--BOSS�ȼ�
ca = 1,
--sp= 1,--��װ��1/30��װ��9/30��װ��20/30
move_speed =0,
att_frep =2500,	--�������������
target_type =2,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
target = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
track_range =50,--��Բ100�����ؿ�׷��
attack_range =40,--��Բ20�����ؿɹ�����
skill_count =8,  --��������
isac=2,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
skill_list="222:1 167:4 177:7 220:2 250:3 219:5 168:6 166:9",
--222���������  167�콵����  177���ǳ�   220���ֹ�Ԫ��   250����   219�����   168ħ����  166���ֻش�
win_exp = 0,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "",
camp=3,--------1Ϊ����BOSS��3Ϊ�ط�BOSS
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp>=70) then --100-70��
		if(LuaQueryVar("ref1")==0) then
			BossLocalMsg("@6��������������ŵ�����󱲣���ҪΪ�˸�������  @1���������@0")
			Attack(EnemyID,1,0)--222���������  1��   200�˺�
			LuaSetVar("ref1",1)
		elseif(bhp<=95 and LuaQueryVar("ref1")<=1) then  
			BossLocalMsg("@6����Ϣ������Ϣ�����ѳɹ�ʹ��ħ��@1�콵����@0�������׵��ϴ���")
			Attack(EnemyID,2,0) --167�콵����    4��   150�˺� 
			LuaSetVar("ref1",2)
		elseif(bhp<=88 and LuaQueryVar("ref1")<=2) then
			BossLocalMsg("@6�����ҿ��������ĸ�ɵ�������������ٺ١�  @1���ǳ�@0")
			Attack(EnemyID,3,0)--177���ǳ�   7��
			LuaSetVar("ref1",3)
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	elseif(bhp>=40) then  --70-40
		if(LuaQueryVar("ref2")==0) then
			Attack(EnemyID,0,0) --��ͨ����
			LuaSetVar("ref2",1)
		elseif(bhp<=65 and LuaQueryVar("ref2")<=1) then
			BossLocalMsg("@6��ϲ���ǣ����ڼ������ҵ�ŭ���������ҷ�ʢ�Ľ��Ͱ�  @1���ֹ�Ԫ��@0")
			Attack(EnemyID,4,0) --220���ֹ�Ԫ��  2��   3000�˺�
			LuaSetVar("ref2",2)
		elseif(bhp<=55 and LuaQueryVar("ref2")<=2) then
			Attack(EnemyID,3,0) --177���ǳ�   7��
			LuaSetVar("ref2",3)
		elseif(bhp<=45 and LuaQueryVar("ref2")<=3) then
			BossLocalMsg("@6�ط��Ľ�ʿ�ǣ������ɱ¾�ɣ��򲻻��ֵĻ���ɲ���Ŷ  @1����@0")
			Attack(EnemyID,5,0) --250����    3��   30s
			LuaSetVar("ref2",4)
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	else  --0-40  
		if(LuaQueryVar("ref3")==0) then
			BossLocalMsg("@6����Ϣ������Ϣ�����ѳɹ�ʹ��ħ��@1�콵����@0�������׵��ϴ���")
			Attack(EnemyID,2,0) --�콵����    4��   150�˺�
			LuaSetVar("ref3",1)
		elseif(bhp<=35 and LuaQueryVar("ref3")<=1) then
			BossLocalMsg("@6�ط��Ľ�ʿ�ǣ������ɱ¾�ɣ��򲻻��ֵĻ���ɲ���Ŷ  @1�����@0")
			Attack(EnemyID,6,0) --�����  5   40s
			LuaSetVar("ref3",2)
		elseif(bhp<=30 and LuaQueryVar("ref3")<=2) then
			BossLocalMsg("@6����Ϣ������Ϣ�����ѳɹ�ʹ��ħ��@1�콵����@0�������׵��ϴ���")
			Attack(EnemyID,2,0) --�콵����    4��   150�˺�
			LuaSetVar("ref3",3)
		elseif(bhp<=20 and LuaQueryVar("ref3")<=3) then
			BossLocalMsg("@6�ط���ʿ�ǣ��Ͽ�ط����ҿ���ˡ���  @1ħ����@0")
			Attack(EnemyID,7,0) --ħ����   6��
			LuaSetVar("ref3",4)
		elseif(bhp<=15 and LuaQueryVar("ref3")<=4) then
			BossLocalMsg("@6����Ϣ������Ϣ�����ѳɹ�ʹ��ħ��@1�콵����@0�������׵��ϴ���")
			Attack(EnemyID,2,0) --�콵����    4��   150�˺�
			LuaSetVar("ref3",5)
		elseif(bhp<=10 and LuaQueryVar("ref3")<=5) then
			BossLocalMsg("@6��ͣ�� ��ô�����۸���һ����Ҳ���һص�Ѫ��  @1���ֻش�@0")
			Attack(EnemyID,8,0) --���ֻش�  9��
			LuaSetVar("ref3",6)	
		elseif(bhp<=5 and LuaQueryVar("ref3")<=6) then
			BossLocalMsg("@6��ҲҪ�����汳�ģ���ʿ��Ŭ��ɱ�У�Ϊ�ұ���..  @1���ֹ�Ԫ��@0")
			Attack(EnemyID,4,0) --���ֹ�Ԫ��  2��   3000�˺�
			LuaSetVar("ref3",7)	
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	end
return 1
end