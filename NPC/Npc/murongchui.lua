NPCINFO = {
serial="74" ,
base_name="murongchui",
icon=2587,
NpcMove=2587,
name="Ľ�ݴ�" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��Ľ�ݸ��ӵ��׺�ʱ���ܱ���ǰ��",
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

	


	if(LuaQueryTask("T632")==1) then
		AddTopSayMenuItem("@2�ϵ۾��������顿","T632")
	end


	if((LuaQueryTask("Tsnpc_59")==1 or LuaQueryTask("Tsnpc_59")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_59")
		if(LuaQueryTask("Tsnpc_59")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_59")==1 or LuaQueryTask("Tenpc_59")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_59")
		if(LuaQueryTask("Tenpc_59")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T630")==1)then
		AddTopSayMenuItem("@2���׵Ľ��͡����顿","T630")
	end
	if(LuaQueryTask("T631")==1 or LuaQueryTask("T631")==2)then
		AddTopSayMenuItem("@2��������顿","T631")
		if(LuaQueryTask("T631")==2)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T645")==2 or LuaQueryTask("T645")==3)then
		AddTopSayMenuItem("@2����������顿","T645")
		if(LuaQueryTask("T645")==2)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T633")==1)then
		AddTopSayMenuItem("@2���ս����ѭ����","T633")
		if(LuaItemStatusNormalCount("o_mission145") >= 1  ) then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T634")==1)then
		AddTopSayMenuItem("@2��������⡾���顿","T634")
	end

	if(LuaQueryTask("T636")==1 or LuaQueryTask("T636")==2)then
		AddTopSayMenuItem("@2����֮�顾���顿","T636")
		if(LuaQueryTask("T636")==2 ) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T651")==2 ) then
		AddTopSayMenuItem("@2��ı�����ࡾ���顿","T651")
		havetask2 =1
	end
	if(LuaQueryTask("T637")==1 ) then
		AddTopSayMenuItem("@2Ԯ��ʯԽ�����顿","T637")
	end
	if(LuaQueryTask("T638")==1 ) then
		AddTopSayMenuItem("@2Ȱ��֮�������顿","T638")
	end
	if(LuaQueryTask("T644")==1 or LuaQueryTask("T644")==2) then
		AddTopSayMenuItem("@2���Ӻ��������顿","T644")
		if(LuaQueryTask("T644")==1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T733")==1)then
		AddTopSayMenuItem("@2Ԯ��̫�о������顿","T733")
		havetask2 =1
	end
	if(LuaQueryTask("T744")==2 or LuaQueryTask("T744")==3) then
		AddTopSayMenuItem("@2���̵Ĺ��¡����顿","T744")
		if(LuaQueryTask("T744")==2)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T690")==1 or LuaQueryTask("T690")==2 or LuaQueryTask("T690")==3)then   
		AddTopSayMenuItem("@2Ľ�ݴ�֮ŵ�����顿","T690")
		if(LuaQueryTask("T690")==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T691")==1 or LuaQueryTask("T691")==2 or LuaQueryTask("T691")==3)then
		AddTopSayMenuItem("@2��ȶ�����顿","T691")
		if(LuaQueryTask("T691")==1 or LuaQueryTask("T691")==3)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T500")==1) then
		AddTopSayMenuItem("@2�޼���Ҹ桾���顿","T500")
		 havetask2=1
	end	        
	
	if(LuaQueryTask("T302")==20 and LuaQueryTask("T302T")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302T")
		havetask2 =1
	end            
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T635")==1)then
		AddTopSayMenuItem("@2�����·��ѭ����@0","T635")
		havetask4 =1
	end
	if(LuaQueryTask("T639")==1)then
		AddTopSayMenuItem("@2�������в�����顿@0","T639")
		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���

	if(LuaQueryTask("T632")==0 and level>=43 and level<=49)then
		AddTopSayMenuItem("�ϵ۾��������顿","T632")
		havetask1=1
	end




	if(LuaQueryTask("T633")==0 and level>=45 and level<=56)then
		AddTopSayMenuItem("���ս����ѭ����","T633")
		havetask1 =1
	end
	if(LuaQueryTask("T631")==0  and level>=43)then
		AddTopSayMenuItem("��������顿","T631")
		havetask1 =1
	end
	if(LuaQueryTask("T634")==0 and level>=43)then
		AddTopSayMenuItem("��������⡾���顿","T634")
		havetask1 =1
	end
	if(LuaQueryTask("T635")==0 and level>=43 and level<=48)then
		AddTopSayMenuItem("�����·��ѭ����","T635")
		havetask1 =1
	end
	if(LuaQueryTask("T636")==0 and level>=43)then
		AddTopSayMenuItem("����֮�顾���顿","T636")
		havetask1 =1
	end
	if(LuaQueryTask("T637")==0 and LuaQueryTask("T651")==99 and level>=45)then
		AddTopSayMenuItem("Ԯ��ʯԽ�����顿","T637")
		havetask1 =1
	end
	if(LuaQueryTask("T638")==0  and LuaQueryTask("T642")==99 and level>=44)then
		AddTopSayMenuItem("Ȱ��֮�������顿","T638")
		havetask1 =1
	end
	if(LuaQueryTask("T639")==0 and level>=45)then
		AddTopSayMenuItem("�������в�����顿","T639")
		havetask1 =1
	end
	if(level>=44 and LuaQueryTask("T630")==0)then
		AddTopSayMenuItem("���׵Ľ��͡����顿","T630")
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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1
----------------------------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("Ľ�ݴ���@4̫�йž�@0�ϱ����ɽ����������Ĺž�����ͨ�������ıؾ�֮·��")


-------------------------------------------------------------------------
elseif(answer=="T302T") then
	   if(LuaQueryTask("T302T")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("Ľ�ݴ�����Ȼ����Զ�������ţ�����������")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302T",99)
	   UpdateMenu()
	   end
--------------------


elseif(answer=="T632") then--------------------------------------�ϵ۾���[����]
	if(LuaQueryTask("T632") ==0) then
		LuaSay("Ľ�ݴ���Ӣ���ǲ��Ǿ���������������벻������ȫ�����������أ�")
		LuaSay("Ľ�ݴ������С�����ֵ�������С��Ļ�ϲ�����Ѽ������ĺ�������ϴ�.")
		LuaSay("Ľ�ݴ���׼�����ʱ����С��֪���Ҷ��������ģ�ϣ����Ұ��Ұ�")
		LuaSay("Ľ�ݴ���ϣ��Ӣ���ܹ�����һ����δ�󶨡���@2���@0�����ң��ٳ��������ճɾ�����֪��Ӣ�����������ˣ���˳���ͳ��Լ��ĺ�����ұض���л����������@2400w+@0��@2ͭ��10w@0��")
		LuaSay("Ľ�ݴ�������������̳��е������깺��õ����ж��ɣ�����")
		--LuaSay("Ľ�ݴ������Ӣ�۾����ͺ�����ݳ�Ʒ����Ҳ���԰��ҽ��һ�°Ի������飬С��Ҳ������Ϊ����ġ�")
		--LuaSay("Ľ�ݴ�����˵����ؿڵİԻ�Σ������·�ˣ�·���ϱ���͢����͢ϣ�����ܹ�ƽϢ���¡�")
		--LuaSay("Ľ�ݴ���������ܹ�ɱ��70���Ի�����Ҳ�н���Ŷ��")
		--LuaSay("Ľ�ݴ������֮�£������Ǹ�����һ�㣬��˵Ӣ�ۺ��о���ͷ�ԣ��úÿ����°ɣ�����")

		LuaSetTask("T632",1)
		--LuaSetTask("task_kill/mon_046/T632",1)
		UpdateTopSay("��Ӣ�ۿ�������Ŷ")
		AddLog("@2�ϵ۾���[����]",632)
		UpdateMenu()
	elseif(LuaQueryTask("T632") ==1) then
		if(LuaItemCount("e_state088y")>=1)then
			LuaSay("Ľ�ݴ���Ӣ�۹���ʮ�������ˣ��ٴμ����㣬�ҷǳ����ˣ�")
			LuaSay("Ľ�ݴ����պ��������֮�ձ���Ӣ�۹���")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T632jl")
		
		--[[elseif(LuaItemCount("o_state088y")<1)then
			if(LuaQueryTask("task_kill/mon_046/T632")>=71)then
				LuaSay("Ľ�ݴ���Ӣ�۵�ʶ���ˣ�ȷʵ�����������")
				LuaSay("Ľ�ݴ����Ҷ����ټ�Ӣ�ۣ�Ϊ������������֮��")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T632jl2")]]
		else
				LuaSay("Ľ�ݴ�����˵Ӣ��������֮�ģ���ز�������ʧ��")
				LuaSay("Ľ�ݴ���Ӣ���Ƿ��������������ˣ�����������ʾһ�£���Ӣ����һ����������ң��ٳ��������ճɾ�����֪��Ӣ�����������ˣ���˳���ͳ��Լ��ĺ�����ұض���л����������400w+ͭ��10w��")	
				LuaSay("Ľ�ݴ�������������̳��е������깺��õ����ж��ɣ�����")
				--[[LuaSay("Ľ�ݴ�����˵����ؿڵİԻ�Σ������·�ˣ�·���ϱ���͢����͢ϣ�����ܹ�ƽϢ���¡�")
				LuaSay("Ľ�ݴ���������ܹ�����70���Ի�����Ҳ�н���Ŷ��")
				LuaSay("Ľ�ݴ������֮�£������Ǹ�����һ�㣬��˵Ӣ�ۺ��о���ͷ�ԣ��úÿ����°ɣ�����")
				LuaSay("Ľ�ݴ�������ֻ�ܽ�һ��Ŷ���úÿ�����Ӣ��!!!")]]
			
		 end
	elseif(LuaQueryTask("T632") == 99)then
			LuaSay("Ľ�ݴ�����лӢ�۳�ȫ!!!")
			LuaSay("��ʾ�������������")	
	end
elseif(answer=="T632jl") then
	if(LuaQueryTask("T632") ==1)then
		if(LuaItemCount("e_state088y")>=1)then
			LuaGive("coin",100000,"T632")
			LuaAddJx("combat_exp",4000000,"T632")
			DelItem("e_state088y",1)
			LuaSetTask("T632",99)
			DelLog("632")
			UpdateMenu()
		end
	end

--[[elseif(answer=="T632jl2") then
	if(LuaQueryTask("T632") ==1)then
		if(LuaItemCount("o_state088y")<1)then
			if(LuaQueryTask("task_kill/mon_046/T632")>=71) then
				LuaGive("coin",500000,"T632")
				LuaAddJx("combat_exp",500000,"T632")
				LuaDelTask("task_kill/mon_046/T632")
				LuaSetTask("T632",99)
				DelLog("632")
				UpdateMenu()

			end
		end
	end]]






































-------------------------------------------------------�ռ�ս����ѭ����

elseif(answer=="T633") then                                                 
		if(LuaQueryTask("T633") == 0 ) then
		    if(LuaQueryStrTask("633Taskday")~=GetCurrentDay()) then
		      	 LuaSetTask("633dotime",0)
		    end
		       if(LuaQueryTask("633dotime")<10) then
		        	LuaSay(""..LuaQueryStr("name").."���ഫ@3Ľ��ǰ��@0���ڳ��ս���������չ�@2ս�����ʣ���֪�����Ǽ١�")
		        	LuaSay("Ľ�ݴ���������Ҳ��ˬ��֮�ˣ��Ϸ�Ҳ���������Ϸ�ȷʵ�������չ�@2ս�������ء�")
		        	LuaSay("Ľ�ݴ�����ȥ�����ռ�@21���@0��")
				LuaSetTask("T633",1)
				LuaSetTask("633Taskday",GetCurrentDay())
				LuaAddTask("633dotime",1)
				UpdateTopSay("�ռ�1���")
				AddLog("���ս����ѭ����",633)
			UpdateMenu()
			else
				LuaSay("��ʾ��������Ѿ��ﵽ���ռ����ޣ������������Ұ�")
			end
		elseif(LuaQueryTask("T633") == 1 ) then
			if(LuaItemStatusNormalCount("o_mission145") >= 1  ) then
				LuaSay(""..LuaQueryStr("name").."���������ռ�����ս�����ʣ����ӵĽ�����������������@!")
				LuaSay("Ľ�ݴ�������һ���ô��ɷ����ʧ�������ء�")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T633jl")
			else
				LuaSay("Ľ�ݴ������¼���ˬ��֮�ˣ�Ϊ��û���ռ�1��󾫾������ѵ���ϷŪ�Ϸ�")
				UpdateTopSay("�ռ�ս������")
			end
		end
	    	    elseif(answer=="T633jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		         if(LuaQueryTask("T633")==1) then
				 LuaDelTask("T633")
				 DelItem("o_mission145",1)
				 local jingyan=(99691+level^2*20)
				 LuaAddJx("combat_exp",jingyan,"T633")
				 LuaAddAchievementSchedule("Task_num",1)	
				 DelLog("633")
				 UpdateMenu()
				 end
--------------------------------------------------------------------------------------��������顿
elseif(answer=="T631") then
	
	if(LuaQueryTask("T631")==0) then 
		LuaSay("Ľ�ݴ�������@4������@0��@3�޼�@0Ӷ������������������ȥ���޼���20���Գɴ�ҵ����֪�����Ƿ�Ը�⣿")
		LuaSay(""..LuaQueryStr("name").."������Ը��ǰ����ֻ�ǿ���һ������Ҳ���Ͻ������")
		LuaSay("Ľ�ݴ�������Ī�ǣ��Ϸ���һ��Ů����ɫ���㣬�����������������������ǰȥ��һ·�Ͼ����������չ��ˣ�")
		LuaSetTask("T631",1)
		UpdateTopSay("�����������޼���")
		AddLog("��������顿",631)
		UpdateMenu()
	elseif(LuaQueryTask("T631")==1)then
		LuaSay("Ľ�ݴ���������ô��û�е�@4������@0��@3�޼�@0��������ѵ�����Ū���£�")
	elseif(LuaQueryTask("T631")==2)then
		LuaSay("Ľ�ݴ������Ǹм����������������ˣ����˴�ҵָ�տɴ�Ҳ��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T631jl")
	end
		elseif(answer=="T631jl")then
		       if(LuaQueryTask("T631")==2)then
				LuaSay("Ľ�ݴ��������������һֻ����������Ҫ����45���������Ŷ����Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װ@!")
				LuaGive("e_earring008",1,2,"T631")
				LuaSetTask("T631",99)
				DelItem("o_mission369",1)
				LuaAddJx("combat_exp",502000,"T631") --ԭ502000��491247
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("631")
				UpdateMenu()
			end


--------------------------------------------------------------------------------------��������⡾���顿

elseif(answer=="T634") then
	local level= LuaQuery("level")
	if(level<46)then
		LuaSay("Ľ�ݴ�����ĵȼ������������ȵ���@246��@0�����ɣ�")
		else
	if(LuaQueryTask("T634") == 0 ) then
		LuaSay("Ľ�ݴ����㲻����װ�ˣ���֪�����������������@3�޼�@0�����£����Ѿ������ҵ�@2�����涾@0��")
		LuaSay(""..LuaQueryStr("name").."�������Ҳ������޼�����°���")
		LuaSay("Ľ�ݴ����������Ǻ��ˣ��˶�ֻ��@3�޼�@0���ܽ⣬@35����@0֮��ͻᷢ�����޽�ҩ����һ��")
		LuaSay(""..LuaQueryStr("name").."��......")
		LuaSetTask("T634",1)
		UpdateTopSay("5�������ҵ��޼�")
		AddLog("���������",634)
		local time=GetCurrentTime()
		LuaSetTask("634time",time)
		UpdateMenu()
	 elseif(LuaQueryTask("T634") == 1 ) then
	    LuaSay("Ľ�ݴ�������ô��û���޼�����ȥ����")
	    UpdateTopSay("�����������޼�Ҫ��ҩ")
	end
	end


 --------------------------------------------------------------------------�����·�����顿

elseif(answer=="T635") then
	if(LuaQueryStrTask("635day")~=GetCurrentDay())then
		LuaDelTask("T635num")
	end
			if(LuaQueryTask("T635")==0) then  
			
				LuaSay("Ľ�ݴ��������Ŵ����ĳ��⣬����@4̫�йž�@0�е�@3������@0Ӱ�������ϣ��������æ@2���30��������@0")
				LuaSetTask("T635",1)
				LuaSetTask("task_kill/mon_035/T635",1)
				LuaAddTask("T635num",1)
				LuaSetTask("635day",GetCurrentDay())
				UpdateTopSay("����30��������")
				AddLog("�����·��ѭ����",635)
				UpdateMenu()
			elseif(LuaQueryTask("T635")==1) then
				if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
				LuaSay("Ľ�ݴ���������������������˴ν����������˳��!")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T635jl")
				else
				LuaSay("Ľ�ݴ�����û��@2��ɱ��30��������@0����")
				UpdateTopSay("��ɱ30��������")
				end
			end
		elseif(answer=="T635jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		        if(LuaQueryTask("T635")==1) then
				if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
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
				if(LuaQueryTask("T635num")<=30)then
					jingyan=(47083+level^2*20)
					LuaGive("coin",money,"T635")
				else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
					jingyan=(47083+level^2*20)/2
				end
				LuaAddJx("combat_exp",jingyan,"T635")
				if(LuaQueryTask("T635_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T635_a",99)
				end	

				LuaDelTask("task_kill/mon_014/T635")
				DelLog("635")
				LuaSetTask("T635",99)
				LuaDelTask("T635")
				UpdateMenu()
				end
				end


 -----------------------------------------------------------------------------------����֮�顾���顿

    elseif(answer=="T636") then             
		if(LuaQueryTask("T636")==0) then
			LuaSay("Ľ�ݴ������������Ұ�����ż�����@4̫�йž�@0��@3Ľ����@0����������������˺�����")
			LuaSetTask("T636",1)
			LuaGive("o_mission368",1)
			UpdateTopSay("��̫�йž���Ľ����")
			AddLog("����֮�顾���顿",636)
			UpdateMenu()
			UpdateNPCMenu("muronglin")
		elseif(LuaQueryTask("T636")==1) then
		       LuaSay("Ľ�ݴ�����ô��û�а��Ž���@3Ľ����@0����")
		       UpdateTopSay("���Ž���Ľ����")
		elseif(LuaQueryTask("T636")==2 ) then
			LuaSay("Ľ�ݴ�����л�������ţ��Ϸ�м�������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T636jl")
		end
		elseif(answer=="T636jl")then
		       if(LuaQueryTask("T636")==2)then
				LuaSetTask("T636",99)
				LuaAddJx("combat_exp",502000,"T636") --ԭ502000��491247
				LuaGive("coin",3000,"T636") 
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("636")
				UpdateMenu()
			end


--------------------------------------------------------------------------------��ı���ࡾ���顿

elseif(answer=="T651")then     
    if(LuaQueryTask("T651")==2)then
	LuaSay(LuaQueryStr("name").."��Ľ���빫�����Ҹ���ʯԽ��ɱ@3̫�й�Գ@0,����Ϊ�������˼,��������ɱ��@3̫�й�Գ@0����ŭ��ɽ�������ޡ�")
	LuaSay(LuaQueryStr("name").."������Σ����@3ʯԽ@0��������֪�㡣")
	LuaSay("Ľ�ݴ����������ˣ���Ҳ����ȫ�������㣬����������������ļ��ˣ�")
        AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T651jl")
	end
		elseif(answer=="T651jl")then
    			if(LuaQueryTask("T651")==2)then
				LuaSetTask("T651",99)
	     			LuaAddJx("combat_exp",651000,"T651") --ԭ651000��587584
					LuaAddAchievementSchedule("Task_num",1)	
				DelLog("651")
				UpdateMenu()
				end

 --------------------------------------------------------------------------Ԯ��ʯԽ�����顿

elseif(answer=="T637") then             
	if(LuaQueryTask("T637")==0) then
		LuaSay("Ľ�ݴ�����������Σ����������ȥԮ��@4̫��ɽ��@0��@3ʯԽ@0�ɣ�")
                LuaSetTask("T637",1)
		UpdateTopSay("��ȥ̫��ɽ��Ԯ��ʯԽ")
                AddLog("Ԯ��ʯԽ�����顿",637)
         UpdateMenu()
         UpdateNPCMenu("shiyue")
	elseif(LuaQueryTask("T637")==1) then
		LuaSay("Ľ�ݴ�����Σ������ʽ�Ͼ�����Ϊ�λ�û�е�@3ʯԽ@0����ȥ����")
		UpdateTopSay("��ȥԮ��ʯԽ")
	end
								    							    
-------------------------------------------------------------------------Ȱ��֮·�����顿								    
elseif(answer=="T638") then
    if(LuaQueryTask("T638")==0) then
	LuaSay("Ľ�ݴ����Ϸ���ս����һֱ��������������Ĵ�Թ��Ҳ��������Ȼ,����Ѳ������������������������")
	LuaSay("Ľ�ݴ����ͷ�����ת�������Ľ����ֻ�������������ѣ�ϣ��������Ҫ�������������ҵ�������!")
	LuaSay(""..LuaQueryStr("name").."���������¸�ĸ�ģ������빫�ӻ����׵ģ����¼���ȥȰ��������������ת�⣡")
	LuaSetTask("T638",1)
	AddLog("Ȱ��֮�������顿",638)
   	UpdateMenu()
   	UpdateNPCMenu("muronglin")
    elseif(LuaQueryTask("T638")==1) then
	LuaSay("Ľ����:ȥȰ�����@3Ľ����@0�ɣ����������ˣ�")
   	end


----------------------------------------------------------------------------���Ӻ��������顿														   -----���Ӻ��������顿
elseif(answer=="T644") then
	if(LuaQueryTask("T644")==1)then
		LuaSay("Ľ�ݴ��������������ˣ����׾ͺã����׾ͺã�")
		LuaSay("Ľ�ݴ����Ҵ���û��������������������塣�Ҳ���һ���ø��ף����Ժ�һ���˺����ദ")
		LuaSetTask("T644",2)
		AddLog("���Ӻ��������顿",644)
		UpdateMenu()
	elseif(LuaQueryTask("T644")==2)then
		LuaSay("Ľ��ȥ�����ҵĶ��ӣ�û׼���ܸ��㾪ϲ")
   	end



 --------------------------------------------------------------------------�������в�����顿
elseif(answer=="T639") then                                                
	if(LuaQueryTask("T639")==0) then
		LuaSay("Ľ�ݴ������@4�κ���@0�д���@2����@0���ң���ȥά����������ɱ��30��@3����@0��")
                LuaSetTask("T639",1)
                LuaSetTask("task_kill/mon_039/T639",1)
		UpdateTopSay("����30ֻ����")
		AddLog("�������в�����顿",639)
	UpdateMenu()
	elseif(LuaQueryTask("T639")==1) then
		if(LuaQueryTask("task_kill/mon_039/T639")>=31) then
			LuaSay("Ľ�ݴ�����л�����Ķ���������@4�κ���@0��ʱ�����ˣ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T639jl")
		else
			LuaSay("Ľ�ݴ����㻹û��ɱ��@4�κ���@0��@330������@0��")
			 UpdateTopSay("ɱ��30��������������")
		end
	end
	elseif(answer=="T639jl")then
		if(LuaQueryTask("T639")==1) then
			LuaAddJx("combat_exp",598000,"T639")--ԭ598000��587584
			LuaGive("coin",3200,"T639")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaDelTask("task_kill/mon_014/T639")
			DelLog("639")
			LuaSetTask("T639",99)
                UpdateMenu()
                end



--------------------------------------------------------------------------Ԯ��̫�о������顿
elseif(answer=="T733") then
	if(LuaQueryTask("T733")==1)	then
		LuaSay(""..LuaQueryStr("name").."��������@3�ذ���@0֮��ǰ������ͳһ�ʱ�Ľ���壡")
		LuaSay("Ľ�ݴ���@3�ذ���@0�������ģ�����������ǰ����������")
		LuaSetTask("T733",2)
   		AddLog("Ԯ��̫�о������顿",733)
   		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T733jl")
	end
	    elseif(answer=="T733jl")then
			if(LuaQueryTask("T733")==2) then
				LuaAddJx("combat_exp",502000,"T733") --ԭ502000��491247
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("733")
				LuaSetTask("T733",99)
			UpdateMenu()
			end



---------------------------------------------------------------------------���̵Ĺ��¡����顿

elseif(answer=="T744") then
	if(LuaQueryTask("T744")==2)	then
		LuaSay(""..LuaQueryStr("name").."�����֪@3����@0�Ǻ�����Ҳ��")
		LuaSay("Ľ�ݴ�����ԭ�����ҼҼ��ͣ�һֱ�̷������ң�������@3��̫��@0�ݺ�Ҳ��֪......����")
		LuaSay(""..LuaQueryStr("name").."��ԭ�����......�벻������һ������˿�����")
		LuaSetTask("T744",3)
   		AddLog("���̵Ĺ��¡����顿",744)
	elseif(LuaQueryTask("T744")==3)	then
   		LuaSay("Ľ�ݴ����㲻��˵Ҫȥ����@4����ؿ�@0��@3�ذ���@0����ô��ûȥ��")
		UpdateTopSay("������ؿ����ذ���") 
	end

---------------------------------------------------------------------------- ���׵Ľ��͡����顿

elseif(answer=="T630")then
	if(LuaQueryTask("T630")==0)then
		LuaSay("Ľ�ݴ���������ӣ�������Ϊ�Һ������������ң�����ȥ���Ҹ��Ҷ����Ӹ�����������������Ҫ���������ˣ�")
		LuaSay("...�������¸�����")
		LuaSetTask("T630",1)
		AddLog("���׵Ľ��͡����顿",630)
		UpdateTopSay("ȥ���Ҷ���Ľ���������������̫�йž�")
		UpdateMenu()
		UpdateNPCMenu("muronglin") 
	elseif(LuaQueryTask("T630")==1)then
		LuaSay("Ľ�ݴ���ȥ���Ҷ��Ӵ�������")
	end
-------------------------------------------------------------------------------����������顿

elseif(answer=="T645")then
	if(LuaQueryTask("T645")==2)then
		LuaSay(""..LuaQueryStr("name").."��Ľ�ݹ��Ӷ������������Ҵ�������������������")
		LuaSay("Ľ�ݴ����ҵĶ��������������Ϊ����һƬ���ģ����������ٻ�ȥת�����Ҷ������Ѿ�ԭ�����������������кúõĻ���ȥ�ͺã�")
		LuaSetTask("T645",3)
		AddLog("����������顿",645)
		DelItem("o_mission354",20)
		UpdateMenu()
		UpdateNPCMenu("moronglin")
	elseif(LuaQueryTask("T645")==3)then
		LuaSay("Ľ�ݴ�����ȥת�����Ҷ������Ѿ�ԭ������û׼������ã�����һ�Ѿ�������")
	end


---------------------------------------------------------------------------Ľ�ݴ�֮ŵ�����顿
elseif(answer=="T690")then             
		if(LuaQueryTask("T690")==1)then
			LuaSay(LuaQueryStr("name").."��@3����@0����ת���㣬����@3��̫��@0��ϣ����������һ�棬��Ҳϣ������������")
			LuaSay("Ľ�ݴ������²����㵣�ģ��һ�����һ��ģ�����ȥ@4����ؿ�@0��@3�ذ���@0����������Ը��������ͳһ��ҵ��")
			LuaSetTask("T690",2)
			AddLog("Ľ�ݴ�֮ŵ�����顿",690)
			UpdateTopSay("ת������ؿڵ��ذ���")
		UpdateMenu()
		
		elseif(LuaQueryTask("T690")==2)then
			LuaSay("Ľ�ݴ�����ȥת��@3�ذ���@0��")

		elseif(LuaQueryTask("T690")==3)then
			LuaSay(LuaQueryStr("name").."��@3�ذ���@0Ҳ��ʾԸ����������ͳһ��ҵ��")
			LuaSay("Ľ�ݴ����ã���������ȥ�ظ�@3����@0�ɡ�")
		end



------------------------------------------------------------------------------��ȶ�����顿

elseif(answer=="T691")then              
		if(LuaQueryTask("T691")==1)then
			LuaSay(LuaQueryStr("name").."����ʵ@3����@0Ҳ�п��Եģ��������ҹ�����������ͳһ֮�£�")
			LuaSay("Ľ�ݴ��������׵ģ�ͳһ�Ǵ��£��迼����ȫ������ȥ��@3�ذ���@0�ɣ�")
			LuaSetTask("T691",2)
			AddLog("��ȶ�����顿",691)
			UpdateTopSay("ȥ���ذ���")
		UpdateMenu()

		elseif(LuaQueryTask("T691")==2)then
			LuaSay("Ľ�ݴ�����ȥ��@3�ذ���@0�ɣ�")

		elseif(LuaQueryTask("T691")==3)then
			LuaSay(LuaQueryStr("name").."��@3�ذ���@0�����ң���Ща����Ӱ��ͳһ�Ĳ��������ء�����")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T691jl")
		end

		elseif(answer=="T691jl")then     
			if(LuaQueryTask("T691")==3)then
				LuaSetTask("T691",99)
				DelLog("691")
				LuaAddJx("combat_exp",1211000,"T691") --ԭ1211000��1206346
				LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
			end


--------------------------------------------------------------------------�޼���Ҹ桾���顿

elseif(answer=="T500")then
	if(LuaQueryTask("T500")==1)then
		LuaSay(""..LuaQueryStr("name").."��@3�޼�@0����ת���㣬���Ѿ�û��Ұ���ˣ�֮ǰһֱ��@3ʯԽ@0�������㣬ȴû����Ѷ�������Ǳ��������ˡ�")			
		LuaSay("Ľ�ݴ���ʲô�����Ѿ�֪���ˣ���Ȼ���������������㣬��ʵ@3ʯԽ@0��齵�����ˡ�") 
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T500jl")
	end
	elseif(answer=="T500jl")then
		if(LuaQueryTask("T500")==1) then
			LuaAddJx("combat_exp",460000,"T623")--ԭ460000��491247
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T500",99)
			DelLog("500")
		UpdateMenu()
		end

elseif(answer=="Tsnpc_59")then
	if(LuaQueryTask("Tsnpc_59")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("Ľ�ݴ������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_59",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_59")==2)then
		LuaSay("Ľ�ݴ������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_59")then
	if(LuaQueryTask("Tenpc_59")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("Ľ�ݴ����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_59",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_59")==2)then
		LuaSay("Ľ�ݴ������Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end



























