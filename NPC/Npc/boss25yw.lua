 NPCINFO ={
	serial="601" ,
	base_name="boss25yw" ,
	icon=2980,
	NpcMove=2980,   
	name="��ʦͷĿ",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
	LuaType=1,
	isboss = 1,---��BOSS
	level =25,--BOSS�ȼ�
	ca = 1,
	sp=1,   --�и��ֶΣ�װ�����������ɫ95%����ɫ5%
	
	addhp =15000,--BOSSѪ��
	addmp =2500000,--BOSS����
	addgj = 110,--����
	addfy = 100,--����
	addsd = 110,--����
	addjz = 8000,--��׼  

	move_speed = 3,--�ƶ��ٶ�
	att_frep = 3000,--�������������
	isac=0,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
	target_type = 0,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
	target = "shen",--��ʾ������ְҵ   -----------������������ 
	track_range = 200,--��Բ100�����ؿ�׷��
	attack_range =40,--��Բ20�����ؿɹ�����
	skill_count = 7,--��������
	skill_list="250:3 221:3 167:2 116:1 168:1 103:2 123:1",
	--250 ����  221 ���׺䶥   167 �콵����  116 ����  168 ħ����  103 ���� 123 ����
			------------�Ը���Ϊ��
	win_exp = 18200,
	rand = 10000,
	gold_base = 0,  --�����Ǯ����    0%��Ǯ
	win_money = 2500, --����Ǯ��
	item_base = 0,  -----��װ������    0%��װ��
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----���ϵ��伸��  100%������
	other = "o_present102:20|o_present022:10|o_present024:10|e_falchion010:8|e_sword012:16|e_fan005:24|e_clothes012:35|e_pants012:46|e_head012:65|e_earring006:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
	if(bhp<5 and LuaQueryVar("ref1")<9) then -----ʹ��
		BossLocalMsg("��������������...��һ���������")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",9)
	elseif(bhp<20 and LuaQueryVar("ref1")<8) then------ʹ�÷��� 4
		BossLocalMsg("@1����@0  ������������Ҳ�����Ҿ͵��������Լ����ٺ٣�����ϲ�������Բ��ˣ�")
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",8)
	elseif(bhp<30 and LuaQueryVar("ref1")<7) then------ʹ������ 7
		BossLocalMsg("@1����@0  �ҿ�Ӣ����������ͬ�����ˣ��ҹǸ���ѣ��Ҳ��������ô�õ����ӣ�Ӣ�ۻ����߰�,���������ˣ��һ���������...")
 		Attack(EnemyID,7,0)
		LuaSetVar("ref1",7)
	elseif(bhp<40 and LuaQueryVar("ref1")<6) then------ʹ���콵���� 3
		BossLocalMsg("@1�콵����@0  ���춼�����㣬��������..")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",6)
	elseif(bhp<50 and LuaQueryVar("ref1")<5) then -----ʹ�����׺䶥 2
		BossLocalMsg("@1���׺䶥@0  �Ϸ�������֮���ף��������Ļ����ɢ")
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",5)
	elseif(bhp<60 and LuaQueryVar("ref1")<4) then -----ʹ������ 6
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",4)
	elseif(bhp<80 and LuaQueryVar("ref1")<3) then -----ʹ������ 1
		BossLocalMsg("@1����@0  �ٺ٣����ܶ��˰�")
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",3)
	elseif(bhp<95 and LuaQueryVar("ref1")<2) then -----ʹ���콵���� 3
		BossLocalMsg("@1�콵����@0  �ҽ�����֮����ð���Ҿ͵���ð���죬����...")
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("������ʦ��֮����С�ӳ������Ǻ��ˣ���������ʦ�̵ؽ磬�����뿪..")
    else
        Attack(EnemyID,0,0)
	end
return 1
end