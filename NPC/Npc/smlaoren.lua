NPCINFO = { 
serial="124" ,
base_name="smlaoren",
icon=2536,
NpcMove=2536,
name="��Ĺ����" ,
iconaddr=1 ,
butt="5|5|55" ,
name_color="CEFFCE" ,
lastsay="���������ط����ţ�����һ������������",
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
	if((LuaQueryTask("Tsnpc_67")==1 or LuaQueryTask("Tsnpc_67")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_67")
		if(LuaQueryTask("Tsnpc_67")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_67")==1 or LuaQueryTask("Tenpc_67")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_67")
		if(LuaQueryTask("Tenpc_67")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T680")==1 or LuaQueryTask("T680")==2 or LuaQueryTask("T680")==3) then
		AddTopSayMenuItem("@2��Ĺ���ˡ����顿","T680")
		if(LuaItemCount("o_mission357")>0 or LuaQueryTask("T680")==1) then
		havetask2=1
		end 
	end

	if(LuaQueryTask("T712")==1)then
		AddTopSayMenuItem("@2սǰ���顾���顿","T712")
	end
	if(LuaQueryTask("T714")==1 or LuaQueryTask("T714")==2)then
 		AddTopSayMenuItem("@2���µľ�ս��BOSS��","T714")
		if(LuaQueryTask("T714")==1)then
		havetask2=1
		else
		havatask4=1
		end
 	end


	if(LuaQueryTask("Tbprw11_1")==1) then
		AddTopSayMenuItem("@2���а�񡾻�һ��","Tbprw11_1")
		havetask2=1
	end

	if(LuaQueryTask("Tbprw11_2")==1) then
		AddTopSayMenuItem("@2Ѱ�Ҹ�Դ��������","Tbprw11_2")
	end

	if(LuaQueryTask("T716")==1 )then
		AddTopSayMenuItem("@2ϡ��Ź֡�ѭ����","T716")
		if(LuaItemStatusNormalCount("o_mission018") >= 1) then
		havetask2=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T715")==1)then
		AddTopSayMenuItem("@2����ʬ��ѭ����","T715")
		havetask4=1
	end
	if(LuaQueryTask("T710")==1)then
		AddTopSayMenuItem("@2�������1�����顿","T710")
		havetask4=1
	end
	if(LuaQueryTask("T711")==1 )then
		AddTopSayMenuItem("@2�������2�����顿","T711")
		havetask4=1
	end
	if(LuaQueryTask("T713")==1)then
		AddTopSayMenuItem("@2�������¡����顿","T713")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T716")==0 and level>=56 and level<=57)then
		AddTopSayMenuItem("ϡ��Ź֡�ѭ����","T716")
		havetask1=1
	end
	if(LuaQueryTask("T710")==0 and level>=55)then
		AddTopSayMenuItem("�������1�����顿","T710")
		havetask1=1
	end	
	
	if(LuaQueryTask("T711")==0 and level>=56)then
		AddTopSayMenuItem("�������2�����顿","T711")
		havetask1=1
	end	
	if(LuaQueryTask("T712")==0 and level>=57)then
		AddTopSayMenuItem("սǰ���顾���顿","T712")
		havetask1=1
	end
	if(LuaQueryTask("T714")==0 and level>=59)then
 		AddTopSayMenuItem("���µľ�ս��BOSS��","T714")
		havetask1=1
 	end	
 	if(LuaQueryTask("T713")==0 and level>=59)then
		AddTopSayMenuItem("�������¡����顿","T713")
		havetask1=1
	end
 	if(LuaQueryTask("T715")==0 and level>=55 and level<=65)then
		AddTopSayMenuItem("����ʬ��ѭ����","T715")
		havetask1=1
	end
	if(LuaQueryTask("Tbprw11_2")==0 and LuaQueryTask("Tbprw11_1")==99) then
		AddTopSayMenuItem("@2Ѱ�Ҹ�Դ��������","Tbprw11_2")
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
	LuaSay("��Ĺ���ˣ������꣬����һ���Ϲ�ͷҲҪ������!") 
	----------------------------------��Ĺ����
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==1) then
	    LuaSay("��Ĺ���ˣ����ȵ�@4���ĺ���@0��@3��������@0���ú�@2����֮��@0���Ұ�")
		LuaSetTask("T680",2)      -------��־�����
		AddLog("��Ĺ���ˡ����顿",680)
		UpdateMenu()
    elseif(LuaQueryTask("T680")==2) then
        UpdateTopSay("�����ĺ��ǵ������������ú�����֮��")
    elseif(LuaQueryTask("T680")==3) then
    	if(LuaItemCount("o_mission357")>0) then
        	LuaSay("��Ĺ���ˣ���������û�ȹ���ô�õľ��ˣ��������۷Ź��˵������")
        	AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T680jl")
		else
			LuaSay("��Ĺ���ˣ���Ҫ�ľ��أ�") 
		end
 	elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")==0) then
 	    LuaSay("��Ĺ���ˣ����õ�@3����֮��@0�أ���ô�ᱻ��Ū���ˣ������ܼ��Ӱ���")
 	    LuaSay("��Ĺ���ˣ���ȥ@4���ĺ���@0��@3��������@0���ú�@2����֮��@0�ɡ�")
	end
elseif(answer=="T680jl") then
	if(LuaQueryTask("T680")==3) then
        LuaSetTask("T680",99)
	    DelLog("680")
	    LuaAddJx("combat_exp",1306000,"T680")
	    LuaGive("coin",3000,"T680")
		LuaAddAchievementSchedule("Task_num",1)	
	    DelItem("o_mission357",1)
	    UpdateMenu()
	end
-------------------------------------------------------------------�������1
elseif(answer=="T710")then
	if(LuaQueryTask("T710")==0) then
		LuaSay("��Ĺ���ˣ��ҿ������ӹǻ�����Ӳ�ʣ����ö�Ӷ�������ȥ����@4������@0�е�@2���35ֻ@0")
		LuaSetTask("T710",1)
		AddLog("�������1�����顿",710)
		LuaSetTask("task_kill/mon_042/T710",1)
		UpdateMenu()
	elseif(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
			LuaSay("��Ĺ���ˣ����������������Ѿ��õ��ܴ��������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T710jl")
		else
			LuaSay("��Ĺ���ˣ�����@4������@0�е�@2���35ֻ@0")
		end	
	end	
		
		
	elseif(answer=="T710jl")then
	if(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
		LuaSetTask("T710",99)
		DelLog("710")
		LuaAddJx("combat_exp",1306000,"T710")
		LuaGive("coin",3700,"T710")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaDelTask("task_kill/mon_042/T710")
		UpdateMenu()
		end
		end
-------------------------------------------------------------------�������2
elseif(answer=="T711")then
	if(LuaQueryTask("T711")==0)then
		LuaSay("��Ĺ���ˣ��ҿ���ʵ��������Ϊ�˱��գ���@3ʮ�����֮��@0������@2����35ֻ@0")
		LuaSetTask("T711",1)
		AddLog("�������2�����顿",711)	
		local time=GetCurrentTime()
		LuaSetTask("711time",time)
		LuaSetTask("task_kill/mon_043/T711",1)
		UpdateMenu()
	elseif(LuaQueryTask("T711")==1)then
		local shijiancha=( GetCurrentTime()-LuaQueryTask("711time"))
		if(shijiancha<=900)then
			if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
				LuaSay("��Ĺ���ˣ�����ж��Ѿ�֤�������ʵ����")	
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T711jl")
			else
				LuaSay("��Ĺ���ˣ���@3ʮ�����֮��@0������@2����@0@435ֻ@0")
			end 
		elseif(LuaQueryTask("T711sum")==0)then
				LuaSay("��Ĺ���ˣ�ʱ���Ѿ����˺ܾ��ˡ��������¸���һ�λ��ᣬ��סֻ��һ�λ���Ŷ")
				AddMenuItem("@7��ѡ��","")
				AddMenuItem("����һ��","T711yes")
				AddMenuItem("��������","T711no")
			else
				LuaSay("��Ĺ���ˣ��㳬ʱ�ˣ�")
				LuaSetTask("T711",99)
				UpdateMenu()
		end
	end
	
	

	elseif(answer=="T711yes")then
		LuaSetTask("T711",0)
		LuaSetTask("T711sum",1)
	    UpdateMenu()
	elseif(answer=="T711no") then
		LuaSetTask("T711",99)
		UpdateMenu()
	elseif(answer=="T711jl") then
		if(LuaQueryTask("T711")==1)then
			if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
		LuaSetTask("T711",99)
	    DelLog("711")
	    LuaAddJx("combat_exp",1391000,"T711")
	    LuaGive("coin",4000,"T711")
		LuaAddAchievementSchedule("Task_num",1)	
	    LuaDelTask("task_kill/mon_043/T711")
	    UpdateMenu()
	    end
	    end
		
---------------------------------------------------սǰ���顾���顿	
elseif(answer=="T712")then
	if(LuaQueryTask("T712")==0)	then
		LuaSay(""..LuaQueryStr("name").."�������ҿ���ȥɱ��@2���꽫��@0�˰�")
		LuaSay("��Ĺ���ˣ�������Ĺ�û�̫�����˽�����ֻҪ���˴������ͻ�����֪������ȥ�����������Բ�")
		LuaSetTask("T712",1)
		AddLog("սǰ���顾���顿",712)
		UpdateMenu()
		UpdateNPCMenu("yanwang") 
	elseif(LuaQueryTask("T712")==1)then
		LuaSay("��Ĺ���ˣ�ȥ��@3����@0�����Բ�")
	end 


---------------------------------------------------���µľ�ս
elseif(answer=="T714")then
	if(LuaQueryTask("T714")==0)then
	    LuaSay("��Ĺ���ˣ�����ʱ���Ѿ�������ȥ����@3������Ѩ@0�е�@2���꽫��@0��")
	    LuaSetTask("T714",1)
	    AddLog("���µľ�ս��BOSS��",714)
	    UpdateMenu()
	elseif(LuaQueryTask("T714")==1)then
        	LuaSay("��Ĺ���ˣ�������ȥ����@3������Ѩ@0�е�@2���꽫��@0��������֮���������Ұɡ�")
	elseif(LuaQueryTask("T714")==2)then
        	LuaSay("��Ĺ���ˣ���Ȼ����������������֪�������ϢҲ��ܿ��ĵġ�")
                AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T714jl")
	end
    
    
    elseif(answer=="T714jl")then
	if(LuaQueryTask("T714")==2)then
		LuaSetTask("T714",99)
		DelLog("714")
		LuaAddJx("combat_exp",2400000,"T714")
		LuaGive("coin",12000,"T714")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
	end
---------------------------------------------------------
elseif(answer=="T713")then                       ---------------------------�������¡����顿
	if(LuaQueryTask("T713")==0)then
		LuaSay("��Ĺ���ˣ�������Ѿ��õ���@3��̫��@0������������̫�ļ�����ȥ��ɱ@4������Ĺ@0��@2����ʬ��Ѫ��ʬ��20��@0��ظ���")
		LuaSetTask("T713",1)
		LuaSetTask("task_kill/mon_044/T713",1)
		LuaSetTask("task_kill/mon_045/T713",1)
		AddLog("�������¡����顿",713)
		UpdateMenu()
		UpdateTopSay("��ɱ����ʬ��Ѫ��ʬ��20����ظ���Ĺ����")
		

	elseif(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")>20 and LuaQueryTask("task_kill/mon_045/T713")>20)then
			LuaSay("��Ĺ���ˣ������˹�Ȼ�������ڴ���Ľ�����")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T713jl")
		else
			LuaSay("��Ĺ���ˣ����ɱ��@2"..LuaQueryTask("task_kill/mon_044/T713").."������ʬ��"..LuaQueryTask("task_kill/mon_045/T713").."��Ѫ��ʬ@0����ȥ��ɱ@220������ʬ��Ѫ��ʬ@0�ɣ�")
		end
	end

	elseif(answer=="T713jl")then               ----------------------------713����
		if(LuaQueryTask("T713")==1)then
			if(LuaQueryTask("task_kill/mon_044/T713")>20 and LuaQueryTask("task_kill/mon_045/T713")>20)then
				LuaSetTask("T713",99)
				DelLog("713")
				LuaDelTask("task_kill/mon_044/T713")
				LuaDelTask("task_kill/mon_045/T713") 
				LuaAddJx("combat_exp",1707000,"T713")
				LuaGive("coin",3500,"T713")
				LuaAddAchievementSchedule("Task_num",1)	
				UpdateMenu()
			end
		end		

elseif(answer=="T710")then
	if(LuaQueryTask("T710")==0) then
		LuaSay("��Ĺ���ˣ��ҿ������ӹǻ�����Ӳ�ʣ����ö�Ӷ�������ȥ����@4������@0�е�@2���35ֻ@0")
		LuaSetTask("T710",1)
		AddLog("�����𡾾��顿",710)
		LuaSetTask("task_kill/mon_042/T710",1)
		UpdateMenu()
	elseif(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
			LuaSay("��Ĺ���ˣ����������������Ѿ��õ��ܴ��������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T710jl")
		else
			LuaSay("��Ĺ���ˣ�����������������������")
		end	
	end	
		
		
	elseif(answer=="T710jl")then
	if(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
		LuaSetTask("T710",99)
		DelLog("710")
		LuaAddJx("combat_exp",1306000,"T710")
		LuaGive("coin",2000,"T710")
		LuaDelTask("task_kill/mon_042/T710")
		UpdateMenu()
		end
		end
 
elseif(answer=="T715")then  ---------------------------����ʬ��ѭ����
	if(LuaQueryStrTask("715day")~=GetCurrentDay())then
			LuaDelTask("T715num")
	end
	if(LuaQueryTask("T715")==0)then
		LuaSay("��Ĺ���ˣ�������Ĺ�еĽ�ʬ�������ͣ��Ѿ���ʼ���������ˣ�����Ӣ��Ϊ�������ȥ����@2����ʬ��Ѫ��ʬ��20��@0�ɡ�")
		LuaSetTask("T715",1)
		LuaSetTask("task_kill/mon_044/T715",1)
		LuaSetTask("task_kill/mon_045/T715",1)
		LuaSetTask("715day",GetCurrentDay())
		LuaAddTask("T715num",1)
		AddLog("����ʬ��ѭ����",715)
		UpdateMenu()
		UpdateTopSay("��ɱ����ʬ��Ѫ��ʬ��20����ظ���Ĺ����")
		

	elseif(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")>20 and LuaQueryTask("task_kill/mon_045/T715")>20)then
			LuaSay("��Ĺ���ˣ������˹�Ȼ�������ڴ���Ľ�����")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T715jl")
		else
			local a=LuaQueryTask("task_kill/mon_044/T715")-1
			local b=LuaQueryTask("task_kill/mon_045/T715")-1
			LuaSay("��Ĺ���ˣ����ɱ��@2"..a.."������ʬ��"..b.."��Ѫ��ʬ@0����ȥ��ɱ@220������ʬ��Ѫ��ʬ@0�ɣ�")
		end
	end

	elseif(answer=="T715jl")then               ----------------------------715����
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T715")==1)then
			if(LuaQueryTask("task_kill/mon_044/T715")>20 and LuaQueryTask("task_kill/mon_045/T715")>20)then
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
				local jingyan
				LuaDelTask("T715")
				DelLog("715")
				LuaDelTask("task_kill/mon_044/T715")
				LuaDelTask("task_kill/mon_045/T715") 
				if(LuaQueryTask("T715num")<=30)then
				jingyan=(167000+level^2*20)
				LuaGive("coin",money,"T715")
				else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jingyan=(167000+level^2*20)/2
				end
				LuaAddJx("combat_exp",jingyan,"T715")
				if(LuaQueryTask("T715_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T715_a",99)
				end
	
				UpdateMenu()
			end
		end
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay(""..LuaQueryStr("name").."���������Թ�������а�ﾡ������������̽��û�н��а��İ취��")
		LuaSay("��Ĺ���ˣ���˵������һ����Ĺ���Ӵ�������а�����õĽ��֮������û�С�")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","Tbprw11_1jl")
	end
elseif(answer=="Tbprw11_1jl")then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tbprw11_1")==1)then
	local jinyan=level*1000+level*level*20
		LuaSetTask("Tbprw11_1",99)
		LuaAddJx("combat_exp",jinyan,"Tbprw11_1")
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",5)
		LuaPartyMsg(""..LuaQueryStr("name").."��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		UpdateMenu()
	end

elseif(answer=="Tbprw11_2")then                      
	if(LuaQueryTask("Tbprw11_2")==0)then
		LuaSay("��Ĺ���ˣ���֪��@4������Ĺ@0����һ���˾��Ǳ�а���������@3����@0�ġ�")
		LuaSay("��Ĺ���ˣ���ȥ��������û�а취��")
		LuaSetTask("Tbprw11_2",1)
		UpdateTopSay("��������Ĺ�Һ���")
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_2")==1)then
		LuaSay("��Ĺ���ˣ���ȥ��@4������Ĺ@0��@3����@0���ʰɡ�")
	end

elseif(answer=="T716")then
	if(LuaQueryTask("T716")==0)then
		LuaSay("��Ĺ���ˣ�����ϲ��ŪЩϡ��Źֵ����⣬��ȥ������һ��@2�ƾɹŶ�@0��")
	        LuaSay("��Ĺ���ˣ��ƾɹŶ���ʹ�òر�ͼ��̽����Ѱ����ʱ����һ�����ʻ�ã�Ҳ���Դ�������Ҵ�����")
		LuaSetTask("T716",1)
		AddLog("ϡ��Ź֡�ѭ����",716)
		UpdateMenu()
		UpdateMenu("����ȥ�ռ�һ���ƾɹŶ�")
	elseif(LuaQueryTask("T716")==1)then
		if(LuaItemStatusNormalCount("o_mission018") >= 1) then
			LuaSay("��Ĺ���ˣ���������������ˣ�����Ҳ������ô��������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T716jl")
		else
			LuaSay("��Ĺ���ˣ����Ͼ�����������Щ�����˵������ˣ��ƾɹŶ���������")
		end
	end
	elseif(answer=="T716jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission018") >= 1 ) then
			LuaSetTask("T716",0)
			LuaGive("coin",2000,"T716")
			local jingyan=(103000+level^2*20)
			LuaAddJx("combat_exp",jingyan,"T716")
			if(LuaQueryTask("T716_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T716_a",99)
			end

			DelItem("o_mission018",1)
			DelLog("716")
			UpdateMenu()
		end
elseif(answer=="Tsnpc_67")then
	if(LuaQueryTask("Tsnpc_67")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��Ĺ���ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_67",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_67")==2)then
		LuaSay("��Ĺ���ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_67")then
	if(LuaQueryTask("Tenpc_67")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��Ĺ���ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_67",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_67")==2)then
		LuaSay("��Ĺ���ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end 

