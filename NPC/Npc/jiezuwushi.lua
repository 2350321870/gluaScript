NPCINFO = { 
serial="71" ,
base_name="jiezuwushi",
icon=2527,
NpcMove=2527 ,
name="������ʦ" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="ֻҪ��������һ����Ʊ�ɫ",
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

	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_55")==1 or LuaQueryTask("Tsnpc_55")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_55")
		if(LuaQueryTask("Tsnpc_55")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_55")==1 or LuaQueryTask("Tenpc_55")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_55")
		if(LuaQueryTask("Tenpc_55")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T593")==2)then
		AddTopSayMenuItem("@2��ħ�Žǡ����顿","T593")
		if(LuaItemCount("o_mission353")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T612")==1 or LuaQueryTask("T612")==2)then
		AddTopSayMenuItem("@2���̱ƹ������顿","T612")
		if(LuaQueryTask("T612")==1) then
			havetask2=1
		elseif(LuaQueryTask("T612")==2) then
			if(LuaItemCount("o_mission322")>=10) then
				havetask2=1
			else
				havetask4=1
			end
		end
	end
	if(LuaQueryTask("T601")==1)then
		AddTopSayMenuItem("@2�������꡾���顿","T601")
	end
	if(LuaQueryTask("T602")==3) then
		AddTopSayMenuItem("@2��̽��ʦ�����顿","T602")
		havetask2=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T604")==1)then
		AddTopSayMenuItem("@2��ʦ�ĵ��ѡ�ѭ����","T604")
		havetask4=1
	end
	if(LuaQueryTask("T600")==1)then
		AddTopSayMenuItem("@2��ʦ��ı�����顿","T600")
		havetask4=1
	end
--����Ϊ��ɫ����
	if(level>=37 and LuaQueryTask("T600")==0)then
		AddTopSayMenuItem("��ʦ��ı�����顿","T600")
		havetask1=1 
	end	
	if(level>=37 and LuaQueryTask("T601")==0)then
		AddTopSayMenuItem("�������꡾���顿","T601")
		havetask1=1
	end
	if(LuaQueryTask("T604")==0 and level>=35 and level<40)then
		AddTopSayMenuItem("��ʦ�ĵ��ѡ�ѭ����","T604")
		havetask1=1
	end
--����Ϊ��ɫ��̾�Ų���
	
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
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
-----------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("������ʦ�����������!����������Ŷ��ŶŶ������������飡") 
elseif(answer=="T600")then
	if(LuaQueryTask("T600")==0)then
		LuaSay("������ʦ�������Ҵ�ææ�к��£�")
		LuaSay(""..LuaQueryStr("name").."������˵�У����������Ϊ��@3�����@0���������������")
		LuaSay("������ʦ���������������@315@0����������20��������20�������ҿ��Կ��ǣ����Ǿ���@3ʳ�˹�@0.")
		LuaSetTask("T600",1)
		UpdateTopSay("��ʳ�˹�15����������20��������20������")
		AddLog("��ʦ��ı�����顿",600)
		LuaSetTask("task_kill/mon_031/T600",1)             -- ���������� 
		LuaSetTask("task_kill/mon_032/T600",1)             -- ���ü����� 
		LuaSetTask("T600time",GetCurrentTime())            --��ȡ��ǰʱ��
		UpdateMenu()
	elseif(LuaQueryTask("T600")==1)then
		local shijiancha= GetCurrentTime() - LuaQueryTask("T600time") --�ж�ʱ��� 
		if(shijiancha<=900) then
			if( LuaQueryTask("task_kill/mon_031/T600")>=21 and LuaQueryTask("task_kill/mon_032/T600")>=21)  then
			LuaSay(""..LuaQueryStr("name").."���һ����ˣ�������Ѫ��.")
			LuaSay("������ʦ�����������֮�ֳ����㣬û�뵽������ô���������@3�����@0����������.")
			LuaSay(""..LuaQueryStr("name").."����...û�뵽���¾������֮�ˣ�������Ӧ����ô�죿����ȥ��@3�����@0��!")
			AddMenuItem("@7�������","")
		    	AddMenuItem("��ȡ����","T600jl")
			else
			LuaSay("������ʦ��С�ӣ���û����15����������20��������20�����ã��ͱ������@3�����@0.")
			end
		else
			LuaSay("������ʦ:��15���ӹ�ȥ�ˣ��㻹û����20��������20�����ã��㻹���@3�����@0����")
			LuaSay("������ʦ�����ٸ���һ�λ��ᣬ��Ҫ��û���������������ȥ�ɣ�")
			LuaDelTask("T600")
			LuaDelTask("T600time")
			LuaDelTask("task_kill/mon_031/T600") --ɾ��mon_031������ 
			LuaDelTask("task_kill/mon_032/T600") --ɾ��mon_032������ 
			UpdateMenu()  
		end
	end 
	
	elseif(answer=="T600jl")  then
		if(LuaQueryTask("task_kill/mon_031/T600")>=21 and LuaQueryTask("task_kill/mon_032/T600")>=21) then
			LuaSay("��ܰ��ʾ:��Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װ@!")
			LuaGive("e_pants013",1,1,"T600")
			LuaAddJx("combat_exp",339000,"T600") --ԭ349000��272039
			LuaGive("coin",2200,"T600")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T600",99)
			LuaDelTask("T600time") --ɾ��T600time 
			DelLog("600")     --ɾ��������־ 
			LuaDelTask("task_kill/mon_031/T600") --ɾ��mon_031������ 
			LuaDelTask("task_kill/mon_032/T600") --ɾ��mon_032������ 
			UpdateMenu()
		end 
		
-------------------------------------------------
elseif(answer=="T593")then
	if(LuaQueryTask("T593")==2) then
        LuaSay(""..LuaQueryStr("name").."����ʦ���㻹�����־���������@2����Ž�@0�ڴˣ�")
        if(LuaItemCount("o_mission353")>=1) then
		LuaSay("������ʦ������������С��֪��@3�����@0������@4�׹Ƕ�@0���׼��ˣ�������������Ұɣ�")
		LuaSay(""..LuaQueryStr("name").."������������������Ĺ��㣡")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T593jl")
	else
		LuaSay("������ʦ��С�ӣ�����Ϊ��˵���Ҿͻᱻ���ŵ��𣿹�����������")
        end
	end
	elseif(answer=="T593jl") then
	if(LuaQueryTask("T593")==2) then
        if(LuaItemCount("o_mission353")==1) then
		LuaAddJx("combat_exp",339000,"T593") --ԭ349000��272039
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T593",99)
		DelItem("o_mission353",1)
		DelLog("593")
		UpdateMenu()
	end
	end
		
-------------------------------------------------
elseif(answer=="T612") then
	if(LuaQueryTask("T612")==1) then
		LuaSay(""..LuaQueryStr("name").."������Ҫѹ�ư׹Ƕ���Թ���������˵�����˼��а취��")
		LuaSay("������ʦ��Ӣ�۰����Ǵ������־�޷��ı䣬����Ҳ��Ī������")
		LuaSay(""..LuaQueryStr("name").."�뵽����ƥ��ʲô��ͷ�˻��ô��������ң�����@210����ڶ�@0�Ͳ����㲻�ͷ���")
		LuaSetTask("T612",2)
		AddLog("���̱ƹ������顿",612)
		UpdateMenu()
	elseif(LuaQueryTask("T612")==2 and LuaItemCount("o_mission322")<10) then
		LuaSay("ȥ��������ɱ@2��ڹ��ռ�10����ڶ���")
	elseif(LuaQueryTask("T612")==2 and LuaItemCount("o_mission322")>=10) then
		LuaSay("��ʾ��"..LuaQueryStr("name").."��������ʦ��ע���ʱ�򣬰���ڶ�ǿ�и�������ʦ����")
		LuaSay("��ʾ����������ʦ��Ӧ������ʱ���Ѿ����о綾�������ƿڴ��#0&3��#")
		LuaSay("������ʦ���ðɣ�����������֤�Ժ�������Ұ���ľ��ƣ����ܿ�����")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T612jl")	 
	end		       
elseif(answer=="T612jl")then
	if(LuaQueryTask("T612")==2) then
		LuaAddJx("combat_exp",391000,"T612") --ԭ371000��334555
		LuaGive("coin",2100,"T612") 
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T612",99)
		DelLog("612")-------��־��ɾ��
		UpdateMenu()
		UpdateTopSay("������Ȼ���ִ�ţ��Ϸ������ȥ��һ���ˡ�") 
  	end
elseif(answer=="T601") then
	if(LuaQueryTask("T601")==0) then
		LuaSay("������ʦ�����������ֻ�ж�������о�֮�˲��ܾ������꣡")
		LuaSay(""..LuaQueryStr("name").."��������Ǹ����еģ�Ī����@3������@0��")
		LuaSay("������ʦ:�������Ǵϻ۹��ˣ�ֻ��������֮����ܼ���@3������@0��Ҫ��������͵ø�������") 
		LuaSay("��ʾ���������ɫ����֮��ѡ�������������ɽ����������������ϣ���Ȼ��Ҳ����ͬ�����紫��@!��")
		LuaSetTask("T601",1)
		AddLog("�������꡾���顿",601)-------��־�����
		UpdateMenu()
	elseif(LuaQueryTask("T601")==1) then
		LuaSay("ȥ@4����@0��@3������@0��������ѡ��@2��������@0�����ɽ�������")
	end 	
-----	-------------------------------------------------���鲿��
    elseif(answer=="T602")then
	if(LuaQueryTask("T602")==3)then
		LuaSay(""..LuaQueryStr("name").."��������ר�����ݷ���ʦ�ġ�")
		LuaSay("������ʦ���ҿ������б������ɣ���������ЩС��ඵĻ������ǵĻ��������š�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T602jl")
	end	
	elseif(answer=="T602jl")then
	if(LuaQueryTask("T602")==3)then	 
		LuaAddJx("combat_exp",369000,"T602")--ԭ341000��334555 
		LuaSetTask("T602",99)
		DelLog("602")-------��־��ɾ��
		UpdateMenu()
		end
		       
elseif(answer=="T604")then
	if(LuaQueryStrTask("604day")~=GetCurrentDay())then
		LuaDelTask("T604num")
	end
	if(LuaQueryTask("T604")==0)then
			LuaSay("������ʦ��С�ӣ��������СҲ����@4ʳ�˹�@0���ߺߣ���ȥ����@230ֻ����@0���������������ң�")
			LuaSetTask("T604",1)
			UpdateTopSay("����30ֻ������������")
			AddLog("��ʦ�ĵ��ѡ�ѭ����",604)
			LuaSetTask("604day",GetCurrentDay())
			LuaAddTask("T604num",1)
			LuaSetTask("task_kill/mon_031/T604",1)             -- ���������� 
			UpdateMenu()

	elseif(LuaQueryTask("T604")==1)then
			if( LuaQueryTask("task_kill/mon_031/T604")>=31)  then
			LuaSay("������ʦ���ߺߣ�����Ϊ�е�С���¾����������㣡")
			AddMenuItem("@7�������","")
		    	AddMenuItem("��ȡ����","T604jl")
			else
			LuaSay("������ʦ��С�ӣ��㻹û������30ֻ�����أ��������������ҡ�")
			end
	end 
	elseif(answer=="T604jl")  then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("task_kill/mon_031/T604")>=31) then
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
		

		if(LuaQueryTask("T604num")<=30)then
			LuaGive("coin",money,"T604")
			jingyan=(27569+level^2*20)
		else
			LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jingyan=(27569+level^2*20)/2
		end
		LuaAddJx("combat_exp",jingyan,"T604")
		if(LuaQueryTask("T604_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T604_a",99)
		end
	
                LuaDelTask("T604")
		DelLog("604")     --ɾ��������־ 
		LuaDelTask("task_kill/mon_031/T604") --ɾ��mon_031������ 
                UpdateMenu()
		end 
elseif(answer=="Tsnpc_55")then
	if(LuaQueryTask("Tsnpc_55")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("������ʦ�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_55",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_55")==2)then
		LuaSay("������ʦ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_55")then
	if(LuaQueryTask("Tenpc_55")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ʦ���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_55",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_55")==2)then
		LuaSay("������ʦ�����Ѿ������ˣ����ȥ��ȡ������")
	end
	

end
LuaSendMenu()
return 1
end 

