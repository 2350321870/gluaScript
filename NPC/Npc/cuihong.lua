NPCINFO = { 
serial="127" ,
base_name="cuihong",
icon=2573,
NpcMove=2573,
name="�޺�" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="˭��ʶ��ǧ����",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level= LuaQuery("level")
	local T736=LuaQueryTask("T736")
	local T750=LuaQueryTask("T750")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_68")==1 or LuaQueryTask("Tsnpc_68")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_68")
		if(LuaQueryTask("Tsnpc_68")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_68")==1 or LuaQueryTask("Tenpc_68")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_68")
		if(LuaQueryTask("Tenpc_68")==1)then
			havetask2=1
		end
	end
	if(T736==2 )then
		AddTopSayMenuItem("@2�����޺꡾���顿","T736")
		havetask2=1
	end

	if(T750==1 or T750==2 or T750==3 or T750==4)then
		AddTopSayMenuItem("@2������ս�����顿@0","T750")
		if(LuaQueryTask("T750")==3)then
			havetask2=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T751")==1)then
		AddTopSayMenuItem("@2��ս��ԭ��ѭ����","T751")
		havetask4=1
	end
	if(T736==3)then
		AddTopSayMenuItem("@2�����޺꡾���顿","T736")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T750==0 and level>=59)then
		AddTopSayMenuItem("������ս�����顿","T750")
		havetask1=1
	end
	if(LuaQueryTask("T751")==0 and level>=47 and level<=50)then
		AddTopSayMenuItem("��ս��ԭ��ѭ����","T751")
		havetask1=1
	end
--����Ϊ��ɫ�ʺŲ���

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("�޺꣺һ��������Ѱ��������") 

elseif(answer=="T736")then            ----------------------------------------------�����޺꡾���顿
	if(LuaQueryTask("T736")==2)then
		LuaSay(LuaQueryStr("name").."����˵�������а����һ���Ľ������ɷ�ָ��һ������")
		LuaSay("�޺꣺���԰���а����������֮�أ�����ȥ�Կ��ҵ��𰸣���ϧ@4����@0��������@3��ԭ��@0���ܲ���ȫ������ȥ����@220ֻ��ԭ��@0�������ظ���")
		LuaSetTask("T736",3)
		LuaSetTask("task_kill/mon_049/T736",1)
		AddLog("�����޺꡾���顿",736)
		UpdateTopSay("����20ֻ��ԭ��")
		UpdateMenu()
	elseif(LuaQueryTask("T736")==3)then
		local a=LuaQueryTask("task_kill/mon_049/T736")-1
		if(a>=20)then
			LuaSay("�޺꣺�ǳ�Ư��������Ҫ��������Ӣ�ۣ�")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T736jl")
		else
			LuaSay("�޺꣺���ɱ��@2"..a.."ֻ��ԭ��@0����ȥ����@220ֻ��ԭ��@0�ɣ�")
		end
	end
	elseif(answer=="T736jl")then     ---------------------------------736����
		if(LuaQueryTask("task_kill/mon_049/T736")>=21)then
			LuaSetTask("T736",99)
			DelLog("736")
			LuaAddJx("combat_exp",707000,"T736")
			LuaGive("coin",4000,"T736")
			LuaAddAchievementSchedule("Task_num",1)	
			UpdateMenu()
		end

elseif(answer=="T750")then                 --------------------------------------������ս�����顿
	if(LuaQueryTask("T750")==0)then
		LuaSay("�޺꣺���ͳһ��ҵ��δ��ɣ������쳣���ӡ���ȥ@3�޼�@0����ɣ�")
		LuaSetTask("T750",1)
		AddLog("������ս�����顿",750)
		UpdateTopSay("ȥ���޼�")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==1)then
		LuaSay("�޺꣺��ȥ��@3�޼�@0�ɣ�")
	elseif(LuaQueryTask("T750")==3)then
		LuaSay(LuaQueryStr("name").."��@3�޼������@0�ȶ�֧�������ͳһ��ҵ�������ڱ������ƻ��Ǻ���⣬��....")
		LuaSay("�޺꣺û������Ҫ�����ͳһ��ҵ���͵�ƽ����������@4���г�@0��@3�ذϹ�@0ȥ�����ɣ�")
		LuaSetTask("T750",4)
		AddLog("������ս�����顿",750)
		UpdateTopSay("ȥ���г����ذϹ�")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==4)then
		LuaSay("�޺꣺��ȥ@4���г�@0��@3�ذϹ�@0��")
	end

elseif(answer=="T751")then ----------------------------------------------��ս��ԭ��ѭ����
	if(LuaQueryStrTask("751day")~=GetCurrentDay())then
			LuaDelTask("T751num")
	end
	if(LuaQueryTask("T751")==0)then
		LuaSay("�޺꣺����ȥ����Ͷ���ذ��ϣ����α���ԭ������ٴΡ��ҵ�СӢ����ǰ������������@235ֻ��ԭ��@0�ɣ�������л��")
		LuaSetTask("T751",1)
		LuaSetTask("task_kill/mon_049/T751",1)
		LuaAddTask("T751num",1)
		LuaSetTask("751day",GetCurrentDay())
		AddLog("��ս��ԭ��ѭ����",751)
		UpdateTopSay("����35ֻ��ԭ�ܺ�ظ���")
		UpdateMenu()
	elseif(LuaQueryTask("T751")==1)then
		local a=LuaQueryTask("task_kill/mon_049/T751")-1
		if(a>19)then
			LuaSay("�޺꣺Ӣ������Ȼ���£������ԭ��ɱ֮���������ȸ���Щ����ɡ�")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T751jl")
		else
			LuaSay("�޺꣺���ɱ��@2"..a.."ֻ��ԭ��@0����ȥ����@235ֻ��ԭ��@0�������Ұɣ�")
		end
	end
	elseif(answer=="T751jl")then     ---------------------------------751����
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T751")==1 and LuaQueryTask("task_kill/mon_049/T751")>=36)then
			local jingyan
			local money
			if(LuaQuery("level")<20)then
				money=200
			elseif(LuaQuery("level")<30)then
				money=300
			elseif(LuaQuery("level")<40)then
				money=400
			elseif(LuaQuery("level")<50)then
				money=500
			elseif(LuaQuery("level")<100)then
				money=600
			end
			LuaGive("coin",money,"T751")
			if(LuaQueryTask("T751num")<=30)then	
				jingyan=(88126+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jingyan=(88126+level^2*20)/2
			end
			LuaAddJx("combat_exp",jingyan,"T751")
			if(LuaQueryTask("T751_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T751_a",99)
			end

			DelLog("751")
			LuaSetTask("T751",0)
			UpdateMenu()
		end
elseif(answer=="Tsnpc_68")then
	if(LuaQueryTask("Tsnpc_68")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�޺꣺���ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_68",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_68")==2)then
		LuaSay("�޺꣺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_68")then
	if(LuaQueryTask("Tenpc_68")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�޺꣺�ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_68",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_68")==2)then
		LuaSay("�޺꣺���Ѿ������ˣ����ȥ��ȡ������")
	end
end
LuaSendMenu()
return 1
end 

