 NPCINFO ={
	serial="600" ,
	base_name="boss15yw" ,
	icon=2982,
	NpcMove=2982,   
	name="��ʦ�ػ���",
	iconaddr=1 ,
	butt="1|1|65" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
	LuaType=1,
	isboss = 1,---��BOSS
	level =15,--BOSS�ȼ�
	ca = 1,
	sp=1,   --�и��ֶΣ�װ�����������ɫ95%����ɫ5%
	
	addhp =7500,--BOSSѪ��
	addmp =2500000,--BOSS����
	addgj = 60,--����
	addfy = 50,--����
	addsd = 80,--����
	addjz = 8000,--��׼  

	move_speed = 6,--�ƶ��ٶ�
	att_frep = 2500,--�������������
	isac=0,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
	target_type = 0,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
	target = "shen",--��ʾ������ְҵ   -----------������������ 
	track_range = 80,--��Բ100�����ؿ�׷��
	attack_range =30,--��Բ20�����ؿɹ�����
	skill_count = 4,--��������
	skill_list="104:1 107:1 109:2 113:1",
	--104 �ͻ�  107 ��ŭ  109 ʨ�Ӻ�  113  ����
	win_exp = 8820,
	rand = 10000,
	gold_base = 0,  --�����Ǯ����    0%��Ǯ
	win_money = 2500, --����Ǯ��
	item_base = 0,  -----��װ������    0%��װ��
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----���ϵ��伸��  100%������
	other = "e_falchion005:8|e_sword005:16|e_fan003:24|e_clothes005:40|e_pants005:55|e_head005:70|e_earring004:100",
} 
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<6) then -----ʹ��ʨ�Ӻ� 3
		BossLocalMsg("@1ʨ�Ӻ�@0  Ϊʲô��ʦ�̻�������������������������ʦ�̰�  55555...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",6)
	elseif(bhp<30 and LuaQueryVar("ref1")<5) then------ʹ�ÿ�ŭ 2
 		BossLocalMsg("@1��ŭ@0  �Ҿ���ƴ������ҲҪ��ס��ʦ�̣��󱲣�����...")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",5)
	elseif(bhp<55 and LuaQueryVar("ref1")<4) then -----ʹ���ͻ� 1
		BossLocalMsg("@1�ͻ�@0  ��ʦ��Ϊ�����������־��У�������ʦ��û�뵽����ʱ���Ƶ�������û��")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----ʹ��ʨ�Ӻ� 3
		BossLocalMsg("@1ʨ�Ӻ�@0  �ߣ���˵��ʦ������ưܲ�������Ҳ����������Щ��è�������ǵ����")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then -----ʹ�ó��� 4
		BossLocalMsg("@1����@0  ��������壬����������ʦ���鷳���Բ�����.....")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("������ʦ��֮ɽ���ػ��ޣ�������ʦ���ߣ�ɱ����..")
    else
        Attack(EnemyID,0,0)
	end
return 1
end