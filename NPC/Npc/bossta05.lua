 NPCINFO ={
	serial="317" ,
	base_name="bossta05" ,
	icon=2985,
	NpcMove=2985,   
	name="ʳ��ħ���񻯡�",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
	LuaType=1,
	isboss = 1,---��BOSS
	level =60,--BOSS�ȼ�
	ca = 1,
	sp=1,   --�и��ֶΣ�װ�����������ɫ95%����ɫ5%	
	addhp = 73483,
	addmp = 2500000,
	addjz=8000,
	addfy = 523,
	addgj = 730,
	move_speed =3,--�ƶ��ٶ�
	att_frep = 1000,
	isac=0,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
	target_type = 0,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
	target = "shen",--��ʾ������ְҵ   -----------������������ 
	track_range = 40,--��Բ40�����ؿ�׷��
	attack_range =40,--��Բ40�����ؿɹ�����
	skill_count =4,--��������
	skill_list="103:2 106:3 122:3 251:1",--103 �Ʒ����� 106ս������ 122 ����ն boss���м��ܣ�251 ��ŭ   
	win_exp = 50000,
	rand = 10000,
	gold_base = 0,  --�����Ǯ����    0%��Ǯ             ./set_level 60
	win_money = 5000, --����Ǯ��
	item_base = 0,  -----��װ������    0%��װ��
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----���ϵ��伸��  100%������
  other = "o_present104:10|o_huangjin:1|e_falchion020:10|e_sword022:20|e_fan010:30|e_shield007:40|e_knife009:50|e_falchion156:53|e_shield156:56|e_sword156:60|e_knife156:63|e_pen156:66|e_book156:70|e_head156:75|e_clothes156:80|e_pants156:85|e_shoes156:90|e_earring156:95|e_necklace156:100"
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)  
	if(bhp<80 and bhp>=60)then
		local ref1=LuaQueryVar("ref1")
		if(ref1==0)then
			BossLocalMsg("�������þ�û�����ˣ����ɣ����ҳ����㣡")
			Attack(EnemyID,1,0)
			LuaSetVar("ref1",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<60 and bhp>=40)then
		local ref2=LuaQueryVar("ref2")
		if(ref2==0)then
			BossLocalMsg("�ҵ���Ƥ�ֺ��ִ֣���һ�����Ǵ����ҵģ�������")
			Attack(EnemyID,2,0)
			LuaSetVar("ref2",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<40 and bhp>=25)then
		local ref3=LuaQueryVar("ref3")
		if(ref3==0)then
			BossLocalMsg("�ҿ�����������ô��Ѫ������N�����Ѫ����ô�����û�ˣ���Ҫ�����㣬�������Ѫ��")
			Attack(EnemyID,4,0)
			LuaSetVar("ref3",1)
		else
			Attack(EnemyID,0,0)
		end
	elseif(bhp<25 and bhp>=10)then
		local ref4=LuaQueryVar("ref4")
		if(ref4==0)then
			BossLocalMsg("���ǰɣ��ⶼ�����㣬�����������������Ҫ����ˣ�����...")
			Attack(EnemyID,4,0)
			LuaSetVar("ref4",1)	
		else
			Attack(EnemyID,3,0)
		end
	elseif(bhp<10)then
		local ref5=LuaQueryVar("ref5")
		if(ref5==0)then
			BossLocalMsg("������̫���ˣ������˲����ˣ��쿸��ס�ˣ�")
			Attack(EnemyID,1,0)
			LuaSetVar("ref5",1)
		
		else
			Attack(EnemyID,0,0)
		end
	else
		Attack(EnemyID,0,0)
	end
--end
return 1
end
