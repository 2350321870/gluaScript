 NPCINFO ={
	serial="316" ,
	base_name="bossta04" ,
	icon=2980,
	NpcMove=2980,   
	name="�ڰ�ħ��",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss��ְҵ�����ݴ��ֶε��ù�ʽ
	LuaType=1,
	isboss = 1,---��BOSS
	level =50,--BOSS�ȼ�
	ca = 1,
	sp=1,   --�и��ֶΣ�װ�����������ɫ95%����ɫ5%
	addhp = 40824,
	addmp = 2500000,
	addjz=8000,
	addfy = 291,
	addgj = 406,
	move_speed =7,--�ƶ��ٶ�
	att_frep = 1000,
	isac=0,--����Ŀ�꣬������(0)����boss���ҽ�ɫ(1)����boss���ɽ�ɫ(2)��ϵͳ����Ľ�ɫĿ��(3)
	target_type = 0,--1.������� 2.������� 3.����ְҵ 0.��ʾû�У�����ѡ��Ŀ����ж�   ---0����  3ְҵ  1���� 2����  (0 3����) 
	target = "shen",--��ʾ������ְҵ   -----------������������ 
	track_range = 100,--��Բ100�����ؿ�׷��
	attack_range =100,--��Բ20�����ؿɹ�����
	skill_count = 9,--��������
	skill_list="122:4 174:4 223:3 167:5 221:4 122:5 174:4 166:3 122:6 167:7",
	--122 ����ն   174 ������   223 ǿ������   167 �콵����  221 ���׺䶥  122 ����ն  174 ������   166 ���ֻش�   122 ����ն   167 �콵����     
	win_exp = 68200,
	rand = 10000,
	gold_base = 0,  --�����Ǯ����    0%��Ǯ
	win_money = 2500, --����Ǯ��
	item_base = 0,  -----��װ������    0%��װ��
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----���ϵ��伸��  100%������
 other = "o_present103:10|o_baiyin:1|e_falchion017:10|e_sword019:20|e_fan009:30|e_shield007:40|e_knife009:50|e_falchion152:53|e_shield152:56|e_sword152:60|e_knife152:63|e_pen152:66|e_book152:70|e_head152:75|e_clothes152:80|e_pants152:85|e_shoes152:90|e_earring152:95|e_necklace152:100"
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)   
	if(bhp<=5 and LuaQueryVar("ref1")<11) then --�콵����
		Attack(EnemyID,10,0)
		LuaSetVar("ref1",11)
		BossLocalMsg("@1���׺䶥@0  ��Ͷ����,��Ͷ����!������������")
	elseif(bhp<=15 and LuaQueryVar("ref1")<10) then --����ն
		Attack(EnemyID,9,0)
		LuaSetVar("ref1",10)
	elseif(bhp<=20 and LuaQueryVar("ref1")<9) then --���ֻش�
		Attack(EnemyID,8,0)
		LuaSetVar("ref1",9)
		BossLocalMsg("@1���ֻش�@0  ������һ���������������ô��Ѫ�����ֱ�����һ���")
	elseif(bhp<=30 and LuaQueryVar("ref1")<8) then --������
		Attack(EnemyID,7,0)
		LuaSetVar("ref1",8)
		BossLocalMsg("@1������@0  ��Ŷ��������...")
	elseif(bhp<=40 and LuaQueryVar("ref1")<7) then --����ն
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",7)
	elseif(bhp<=50 and LuaQueryVar("ref1")<6) then --���׺䶥
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
		BossLocalMsg("@1���׺䶥@0  ���֮�����ݿ��ܣ����ӣ��ع�����Ļ�����")
	elseif(bhp<=60 and LuaQueryVar("ref1")<5) then --�콵����
		Attack(EnemyID,4,0)
		LuaSetVar("ref1",5)
	elseif(bhp<=70 and LuaQueryVar("ref1")<4) then --ǿ������
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",4)
		BossLocalMsg("@1ǿ������@0  ���Ҷ��ž���������������ô�࿴�㻹��������������")
	elseif(bhp<=80 and LuaQueryVar("ref1")<3) then --������
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",3)
		BossLocalMsg("@1������@0  �����Һڰ�ħ�����ٺ٣����ܶ����˴��Ų�ˬ...")
	elseif(bhp<=95 and LuaQueryVar("ref1")<2) then --����ն
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",2)
	elseif(LuaQueryVar("ref1")<1) then
        LuaSetVar("ref1",1)
		BossLocalMsg("�������������������������ɶ�......")
    else
        Attack(EnemyID,0,0)
	end
return 1
end
