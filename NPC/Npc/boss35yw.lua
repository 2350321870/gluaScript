 NPCINFO ={
	serial="602" ,
	base_name="boss35yw" ,
	icon=2986,
	NpcMove=2986,   
	name="�����",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
	LuaType=1,
	isboss = 1,---��BOSS
	level =35,--BOSS�ȼ�
	ca = 1,
	sp=1,   --�и��ֶΣ�װ�����������ɫ95%����ɫ5%
	
	addhp =28000,--BOSSѪ��
	addmp =2500000,--BOSS����
	addgj = 130,--����
	addfy = 110,--����
	addsd = 300,--����
	addjz = 8000,--��׼  

	move_speed = 3,--�ƶ��ٶ�
	att_frep = 2000,--�������������
	isac=0,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
	target_type = 0,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
	target = "shen",--��ʾ������ְҵ   -----------������������ 
	track_range = 200,--��Բ100�����ؿ�׷��
	attack_range =40,--��Բ20�����ؿɹ�����
	skill_count = 9,--��������
	skill_list="132:1 167:3 168:1 169:1 219:3 177:1 221:2 222:3 166:1",
	--132 ��ħ   167 �콵����   168 ħ����   169 �������   219 �����   177 ���ǳ�   221 ���׺䶥(���˺�)   222 ���������     166 ���ֻش�
	win_exp = 28200,
	rand = 10000,
	gold_base = 0,  --�����Ǯ����    0%��Ǯ
	win_money = 2500, --����Ǯ��
	item_base = 0,  -----��װ������    0%��װ��
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----���ϵ��伸��  100%������
	other = "e_falchion013:8|e_sword014:16|e_fan007:24|e_clothes015:35|e_pants015:46|e_head015:65|e_earring008:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp>=70) then --100-70��
		if(LuaQueryVar("ref1")==0) then
			BossLocalMsg("���˴˵�ɢ�ݣ���ƽ���޹������鷳���Ǻε���")
			Attack(EnemyID,0,0) --��ͨ����
			LuaSetVar("ref1",1)
		elseif(bhp<=95 and LuaQueryVar("ref1")<=1) then  
			Attack(EnemyID,1,0) --��ħ
			LuaSetVar("ref1",2)
			BossLocalMsg("@1��ħ@0  �������ò��˼��ܿ�����ô����@!")
		elseif(bhp<=80 and LuaQueryVar("ref1")<=2) then
			Attack(EnemyID,2,0) --�콵����
			LuaSetVar("ref1",3)
			BossLocalMsg("@1�콵����@0  ��...��������ô��Ѫ����������֮����Ҫ��ѪծѪ��")
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	elseif(bhp>=40) then  --70-40
		if(LuaQueryVar("ref2")==0) then
			Attack(EnemyID,0,0) --��ͨ����
			LuaSetVar("ref2",1)
		elseif(bhp<=65 and LuaQueryVar("ref2")<=1) then
			Attack(EnemyID,3,0) --ħ����
			LuaSetVar("ref2",2)
			BossLocalMsg("@1ħ����@0  �ٺ�...����ħ���ܣ�����ֻ����һ�����һ���֣�ˬ��")
		elseif(bhp<=55 and LuaQueryVar("ref2")<=2) then
			Attack(EnemyID,4,0) --�������
			LuaSetVar("ref2",3)
		elseif(bhp<=45 and LuaQueryVar("ref2")<=3) then
			Attack(EnemyID,5,0) --�����
			LuaSetVar("ref2",4)
			BossLocalMsg("@1�����@0���ߣ��������˰ɣ����㻹��ô����....")
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	else  --0-40  --���� �عⷵ�� ���׺䶥(���˺�)
		if(LuaQueryVar("ref3")==0) then
			Attack(EnemyID,0,0) --��ͨ����
			LuaSetVar("ref3",1)
		elseif(bhp<=35 and LuaQueryVar("ref3")<=1) then
			Attack(EnemyID,6,0) --�ǳ���
			LuaSetVar("ref3",2)
		elseif(bhp<=20 and LuaQueryVar("ref3")<=2) then
			Attack(EnemyID,7,0) --���׺䶥(���˺�)
			LuaSetVar("ref3",3)
			BossLocalMsg("�󱲣��������Ϊ���ǿ�����˺����������˺�����ʧȥ��������ȥ����Ȥ")
		elseif(bhp<=10 and LuaQueryVar("ref3")<=3) then
			Attack(EnemyID,8,0) --���������
			LuaSetVar("ref3",4)
			BossLocalMsg("@1���������@0��ΰ�������ô�������﷭�����������..")
		elseif(bhp<=5 and LuaQueryVar("ref3")<=4) then
			Attack(EnemyID,9,0) --���ֻش�
			LuaSetVar("ref3",5)
			BossLocalMsg("@1���ֻش�@0�������ܣ����Ǿ��Բ��������...")
		else
			Attack(EnemyID,0,0) --��ͨ����
		end
	end
return 1
end