NPCINFO = { 
serial="61" ,
base_name="fujian",
icon=2580,
NpcMove=2580 ,
name="�޼�" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="ȫ�������ؼ�",
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
	local T561 = LuaQueryTask("T561")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_45")==1 or LuaQueryTask("Tsnpc_45")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_45")
		if(LuaQueryTask("Tsnpc_45")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_45")==1 or LuaQueryTask("Tenpc_45")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_45")
		if(LuaQueryTask("Tenpc_45")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T507")==1) then
		AddTopSayMenuItem("@2�ձ�ܾ������顿","T507")
		if(LuaItemCount("o_mission306")==1)then
			havetask4 =1
		end
		if(LuaItemCount("o_mission306")==0)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T486")==3 ) then
      	AddTopSayMenuItem("@2֪��ͼ�������顿","T486")
		havetask2=1
	end

	if(LuaQueryTask("T508")==1 or LuaQueryTask("T508")==2 ) then
      		AddTopSayMenuItem("@2�޼���������ء�","T508")
			if(LuaItemCount("o_drug_hp3")==0) then
				havetask4=1
			else
				havetask2=1
			end
	end
	if(LuaQueryTask("T505")==1) then
	     	AddTopSayMenuItem("@2̽����顾���顿","T505")
	end

	if(LuaQueryTask("T580")==1 or LuaQueryTask("T580")==2) then
		AddTopSayMenuItem("@2�������¡����顿","T580")
		if(LuaQueryTask("T580")==1)then
		havetask2=1
		end
	end		
	if(LuaQueryTask("T513")==1 or LuaQueryTask("T513")==2) then
		AddTopSayMenuItem("@2ʮ��𼱡����顿","T513")
		if(LuaQueryTask("T513")==1) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T499")==1) then
		AddTopSayMenuItem("@2�������ۡ����顿","T499")
		havetask2=1
	end           
	if(LuaQueryTask("T593")==1 or LuaQueryTask("T593")==2)  then
		AddTopSayMenuItem("@2��ħ�Žǡ����顿","T593")
		if(LuaQueryTask("T593")==1) then
		havetask2=1
		end
	end				
	if(LuaQueryTask("T599")==1 or LuaQueryTask("T599")==2)then
	    	AddTopSayMenuItem("@2�շ��޼᡾���顿","T599")
	    	if(LuaQueryTask("T599")==1) then
	    	havetask2=1
	    	end
	end
	if(LuaQueryTask("T562")==2)then
	    	AddTopSayMenuItem("@2Ҧ�ɵ���ı�����顿","T562")
	    	havetask2=1
	end
        if(LuaQueryTask("T512")==1 or LuaQueryTask("T512")==2) then
		AddTopSayMenuItem("@2�������������顿","T512")
		if(LuaQueryTask("T512")==1) then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T750")==1 or LuaQueryTask("T750")==2)then
		AddTopSayMenuItem("@2������ս�����顿@0","T750")
		if(LuaQueryTask("T750")==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T626")==1 or LuaQueryTask("T626")==2)  then
		AddTopSayMenuItem("@2Ѱ�����������顿","T626")
		if(LuaQueryTask("T626")==1)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T634")==1)then
		AddTopSayMenuItem("@2��������⡾���顿","T634")
		havetask2 =1
	end
	if(LuaQueryTask("T500")==1) then
		AddTopSayMenuItem("@2�޼���Ҹ桾���顿","T500")
	end
	if(LuaQueryTask("T631")==1 or LuaQueryTask("T631")==2) then
		AddTopSayMenuItem("@2��������顿","T631")
		if(LuaQueryTask("T631")==2)then
	        havetask2=1
	    end
	end
--����Ϊ��ɫ�ʺŲ���
	if(level>=45)then
		if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
			AddTopSayMenuItem("@7�ʴ���ս��ÿ�ա�","Twenda")
			havetask1=1
		else
			AddTopSayMenuItem("@7�ʴ���ս��ÿ�ա�","Twenda")
		end
	elseif(level>=40)then
		if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
			AddTopSayMenuItem("@2[��]@0@7�ʴ���ս��ÿ�ա�","Twenda")
			havetask1=1
		else
			AddTopSayMenuItem("@2[��]@0@7�ʴ���ս��ÿ�ա�","Twenda")
			havetask2=1
		end
	
	end
	if(level>35)then
		AddTopSayMenuItem("@3�ռ�@0@5����@0","T80")
	
	elseif(level>=30)then
		AddTopSayMenuItem("@5[��]@0@3�ռ�@0@5����@0","T80")
	end
	if(level>35)then
		AddTopSayMenuItem("@1׷ɱ����@0","T270")
	elseif(level>=30) then
		AddTopSayMenuItem("@5[��]@0@1׷ɱ����@0","T270")
	
        end
--����Ϊ���ⲿ��
	
	--if(level>=25)  then 
	--AddTopSayMenuItem("@3���Ļ���ð�ա��߼���","SPEAKGJ")
	--end
	if(LuaQueryTask("T500")==0 and LuaQueryTask("T631")==99) then
		AddTopSayMenuItem("�޼���Ҹ桾���顿","T500")
	        havetask1=1
	end

	if(LuaQueryTask("T505")==0 and level>=32) then
		AddTopSayMenuItem("̽����顾���顿","T505")
	        havetask1=1
	end
	if(LuaQueryTask("T506")==0 and level>=33) then
		AddTopSayMenuItem("�����Ѿ������顿","T506")
		havetask1=1
	end
	if(LuaQueryTask("T507")==0 and LuaQueryTask("T506")==99) then
		AddTopSayMenuItem("�ձ�ܾ������顿","T507")
		havetask1 =1
	end
	---------------------------
	if(LuaQueryTask("T506")==1) then
		AddTopSayMenuItem("@2�����Ѿ������顿","T506")
		havetask4=1
	end
	----------------------------
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3�������᡾���","T1003") 
	end
	AddTopSayMenuItem("@9����ָ��","Guidelines")
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
-----------------------------------------------------------------

elseif(answer=="liaotian") then					--����
	LuaSay("�޼᣺�ᵱ�����������ٷ�����!")


elseif(answer=="Spp")then
	LuaSay("@5��ʾ�����ڴ��������һЩ������ʱ�رգ����������Ĳ��㾴���½�@!")
-------------------------------------------------------------------
--------------------------------------------------------------------���
elseif(answer=="T631")then
	if(LuaQueryTask("T631")==1)then
		LuaSay(""..LuaQueryStr("name")..":����Ľ������@3Ľ�ݴ�@0�뽫Ů�����������޽���������֪������ΰ���")
		LuaSay("�޼᣺��Ů������ò���绨��������ã��Ժ�����Ľ���ϵ�������ͳһ����ָ�տɴ�Ҳ���˷����鲻֪��α���")
		LuaSay(""..LuaQueryStr("name")..":����@3Ľ�ݴ�@0���ñ�֮�ʣ���֪�����Ƿ�Ը����20����չʾ���ҵ޽�����֮���أ�")
		LuaSay("�޼᣺20��......����Ҷ���һ������Ӧ����������������һԱ��@3ʯԽ@0����һͬǰ���ɣ�")
		LuaSetTask("T631",2)
		AddLog("��������顿",631)
		LuaGive("o_mission369",1)
		UpdateMenu()
	elseif(LuaQueryTask("T631")==2)then
		LuaSay("�޼᣺��ȥ����@4̫�йž�@0��@3Ľ�ݴ�@0�ɣ�")
	end
-------------------------------------------------------------------

elseif(answer=="T593")then
		if(LuaQueryTask("T593")==1) then
			LuaSay(""..LuaQueryStr("name").."��ǰ�������������@2����Ž�@0�ġ�")
			LuaSay("�޼᣺С��������ȥ�ɣ������ˣ�Ҳ�������ˡ�")
			LuaSay("�޼᣺���źŽ�ȥ@4ʳ�˹�@0�Ʒ�@2������ʦ@0��") 
			LuaGive("o_mission353",1)
			LuaSetTask("T593",2)
			AddLog("��ħ�Žǡ����顿",593)
			UpdateMenu()
			UpdateTopSay("ȥ�����������ʦ�ɣ�")
		elseif(T593==2) then
	    		LuaSay("�޼�:���źŽ�ȥ@4ʳ�˹�@0��@2������ʦ@0��") 	
		end 
----------------------------------------------  ̽�����
elseif(answer=="T505") then
	if(LuaQueryTask("T505")==0) then
		LuaSay("�޼᣺����������������ı��")
		LuaSay("�޼᣺�ҵĶ�������Ҧ��һ��������ַ��������ֵ�@3�������@0����ʱӦ������������@4μˮ֮��@0��")
		LuaSay(""..LuaQueryStr("name").."������ߵ�μˮ֮����Ҧ��̽�������")
		LuaSetTask("T505",1)
		AddLog("̽����顾���顿",505)
		UpdateMenu()             
	elseif(LuaQueryTask("T505")==1) then
		LuaSay("�޼᣺����ô��û��ȥ@4μˮ֮��@0��Ҧ��̽���������")
		UpdateTopSay("ȥμˮ֮����Ҧ��̽�����")
	end
------------------------------------------------  ��������
elseif(answer=="T499") then
	if(LuaQueryTask("T499")==1) then
		LuaSay("�޼᣺����@3����@0�������ţ�������ã��պ����Ϊ��Ч���ɡ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T499jl")
	 end
elseif(answer=="T499jl") then
	if(LuaQueryTask("T499")==1) then
	        LuaSetTask("T499",99)
	        DelLog("499")
	        LuaAddJx("combat_exp",303000,"T499")
			LuaAddAchievementSchedule("Task_num",1)
	        LuaGive("coin",1000,"T499")
	        UpdateMenu()
	 end
-------------------------------------------------�����Ѿ�
elseif(answer=="T506") then
	if(LuaQueryTask("T506")==0) then
		LuaSay("�޼�:Ҧ�ɱ������ң���Ҫ��������")
		LuaSay("�޼᣺ȥ����@4μˮ֮��@0��@3ص��սʿ30��@0")
		LuaSetTask("T506",1)
		AddLog("�����Ѿ������顿",506)
		LuaSetTask("task_kill/mon_027/T506",1)
		UpdateMenu()
		UpdateTopSay("����30��ص��սʿ")
	elseif(LuaQueryTask("T506")==1) then
		if(LuaQueryTask("task_kill/mon_027/T506")>=31) then
		 LuaSay("�޼᣺����Ӣ�۳����갡!")
		 AddMenuItem("@7�������","")
		 AddMenuItem("��ȡ����","T506jl")
		else
		 LuaSay(""..LuaQueryStr("name")..":�㻹û��ɱ��@330��ص��սʿ��")
		 UpdateTopSay("ɱ��30��ص��սʿ��������")
		end
	end
	elseif(answer=="T506jl") then
		if(LuaQueryTask("T506")==1) then		
			LuaAddJx("combat_exp",321000,"T506")
			LuaGive("coin",1000,"T506")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_027/T506")
			LuaSetTask("T506",99)
			DelLog("506")
			UpdateMenu()
		end
-----------------------------------------------��������
elseif(answer=="T580" ) then
	if(LuaQueryTask("T580")==1) then
		if(LuaItemCount("o_mission314")>=1)then
			LuaSay("�޼�:��������")
			LuaSay("�޼᣺��ʵ������ʵ��常����һ��ϲ������һ��Ů�ˣ������Ѿ����˼���,")
			LuaSay("�޼᣺��Ů�����շ������ң���һ��֮�����ɱ��@3�������@0���常��")
			LuaSay("�޼᣺������ȥ��@3�������@0��˵��Ը�����Լ���Ȩ����������")
			DelItem("o_mission314",LuaItemCount("o_mission314"))
        		LuaSetTask("T580",2) 
			AddLog("�������¡����顿",580)
	    		UpdateMenu()
	    		UpdateTopSay("������ȥ��������ʣ�˵��Ը�����Լ���Ȩ����������")
	    	end
	elseif(LuaQueryTask("T580")==2) then
	    	LuaSay("�޼᣺������ȥ��@3�������@0��˵��Ը�����Լ���Ȩ����������")
	end
	--------------------------------------------------�ձ�ܾ�
elseif(answer=="T507") then
  if(LuaQueryTask("T507")==0)then
	LuaSay("�޼᣺�������е���ּ����������@4μˮ֮��@0ʹ�ã�ʹҦ���Ҿ����¹鸽�ҡ�")
	LuaSay("�޼᣺�������޵��������������ء�@!")
	LuaGive("o_mission306",1)
	LuaSetTask("T507",1)
	AddLog("�ձ�ܾ������顿",507)
	UpdateMenu()
	UpdateTopSay("�뽫�ҵ���ּ��μˮ֮��ʹ��")
  elseif(LuaQueryTask("T507")==1)then
	if(LuaItemCount("o_mission306")==0)then
	LuaSay("�޼᣺����������������Ѿ����ܹ鸽���ң��������л��")
	LuaSay(""..LuaQueryStr("name").."����������ƥ������������Ӧ�����ġ�")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T507jl")
	else
	LuaSay("�޼᣺�뽫�ҵ�@2��ּ@0��μˮ֮��ʹ��")
  	end
  end
	elseif(answer=="T507jl")then
		if(LuaQueryTask("T507")==1)then
		LuaAddJx("combat_exp",321000,"T507")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T507",99)
		DelLog("507")
		UpdateMenu()
		end
----------------------	-֪��ͼ��
elseif(answer=="T486") then
 	if(LuaQueryTask("T486")==3) then
 	   LuaSay("�޼�:�ⲻ���ҿ��Ѱ�ҵ�@2��������@0����������ô֪������������")
	   AddMenuItem("@7�������","")
	   AddMenuItem("��ȡ����","T486jl")
	end
	     elseif(answer=="T486jl")then
		if(LuaQueryTask("T486")==3) then
		LuaSay("���㲻֪����ʲô��ʱ�򣬵�������ϵ�@3����ָ��@0�ܸ����㵱ǰ�ȼ���Ӧ����ʲôŶ��@!")
		LuaSetTask("T486",99)
		DelItem("o_mission330",LuaItemCount("o_mission330"))
		LuaAddJx("combat_exp",299000,"T486")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("486")
                UpdateMenu()
		end
---------------------------------�޼������
elseif(answer=="T508") then
 	if(LuaQueryTask("T508")==0) then
 	   LuaSay("�޼�:�������Ǹ�Ե��ǳ��������ȷʵ�м�����Ҫ��ȥ������Ϊ������ʱ�����ɣ�������Ȼ���鲻�ѣ����ǿ��Եõ�@3�߶�ı���")
	   LuaSay(""..LuaQueryStr("name").."����λ��������˵���и��࣬���������е����ģ�����")
	   LuaSay("�޼�:���������ȥ������@3ҩƷ����@0���������һƿ@3����ɢ@0��")
	   LuaSetTask("T508",2)
	   AddLog("�޼�����󡾾��顿",508)
	   UpdateTopSay("������ҩƷ����������һƿ����ɢ��")
	   UpdateMenu()
	elseif(LuaQueryTask("T508")==1) then
		if(LuaItemCount("o_drug_hp3")>=1) then
		   LuaSay("�޼᣺�治����ô��������ˣ�")
		   AddMenuItem("@7�������","")
		   AddMenuItem("��ȡ����","T508jl")
		else
			LuaSay("�޼᣺������ȥ@3ҩƷ����@0��@4����ɢ@0����")
		end
	end
		elseif(answer=="T508jl") then
			if(LuaQueryTask("T508")==1) then
				LuaSetTask("T508",99)
				DelItem("o_drug_hp3",LuaItemCount("o_drug_hp3"))
				DelLog("508")
				LuaAddJx("combat_exp",314000,"T508")
				LuaGive("coin",2000,"T508")
				UpdateMenu()
				end
	
-----------------------------------ʮ���
elseif(answer=="T513") then
	if(LuaQueryTask("T513")==1) then
		LuaSay("�޼�:������������֪���ˣ�����ҵĻظ��������ɡ�����ºܼ�����������ؿ���ȥ")
		LuaSetTask("T513",2)
		AddLog("ʮ��𼱡����顿",513)
		UpdateMenu()
		UpdateNPCMenu("wangzhene")
	elseif(LuaQueryTask("T513")==2)then
		LuaSay("�޼᣺������ô�������ﶺ����������ҵĻظ��͸�@3�����")
	end 
		 
elseif(answer=="T599") then
	if(LuaQueryTask("T599")==1) then
		LuaSay(""..LuaQueryStr("name").."��@3�����@0�����������������@3�����@0�������оȳ���")
		LuaSay(""..LuaQueryStr("name").."��@3�����@0֪���㲻���æ�������Ҹ�����˵@3�򸶿�@0����ĺ���")
		LuaSay("�޼᣺�����������������Ұ�@3�����@0�������оȳ������Ҿ�ȫ��֧��Ӣ�۵�ͳһ��ҵ��")
		LuaSetTask("T599",2)
		AddLog("�շ��޼᡾���顿",599)		
		UpdateMenu()
		UpdateTopSay("��ȥ���߹���˰ɣ�")
	elseif(LuaQueryTask("T599")==2) then
	    LuaSay("ȥ@4��������@0��@3�����")
	end
elseif(answer=="T562") then
	if(LuaQueryTask("T562")==2) then
		LuaSay(""..LuaQueryStr("name").."��������������֪��Ҧ�ɳ��˰��̣����˲��һ�����������ı������������㣬������Ϊ��")
		LuaSay("�޼᣺��лӢ�ۣ�����֪���ǹ�����Ҫ�ѱ䣬��������׼�������Ϲ���ֻҪ��������Ϊ�����Ҿͽ��������޻ء�")
		LuaSay(""..LuaQueryStr("name").."��Ŷ�����Ҷ����ˣ�") 
		LuaSay("�޼᣺��лӢ��Ϊ�����ǽ��ѣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T562jl")
		end
	elseif(answer=="T562jl")then  -----------------������
		if(LuaQueryTask("T562")==2) then
		LuaSetTask("T562",99)
		DelLog("562")
		LuaAddJx("combat_exp",240000,"T562")
		DelLog("562")        -------��־��ɾ��
		UpdateMenu()
		end 
	
	
	
elseif(answer=="T512") then
	if(LuaQueryTask("T512")==1) then  
           LuaSay(""..LuaQueryStr("name").."��@3�����@0��Ͷ������������������ǰ�ӣ�����һ�λ��ᡣ")
	   LuaSay("�޼᣺��������˼�����ʣ���ô�᲻�������أ�")
           LuaSay("�޼᣺������Ͷ���ң���һ������ʮ����ӭ���鷳�����������Ϣ����@3�����@0��")     
	   LuaSetTask("T512",2)
           AddLog("�������������顿",512)
           UpdateMenu()
           UpdateTopSay("����Ϣ����������")
           UpdateMenu()
	   UpdateNPCMenu("wangzhene")
	else
	   LuaSay("�޼᣺�����Ϣ����@3�����@0")
	end
		

elseif(answer=="T626") then
    if(LuaQueryTask("T626")==1)then
		LuaSay(""..LuaQueryStr("name")..":������Ԩ����@3����һ��@0���㣬���Ҹ����������ι�����ƽ���£�")
		LuaSay("�޼᣺��Ԩ���������Ǹ���˵�й��������ߣ����Ļ�����Ϊ�ţ���������������������")
		LuaSay("�޼᣺��ȥת���Ǹ�����ͷ�����������ң�")
		LuaSetTask("T626",2)
		AddLog("Ѱ�����������顿",626)
		UpdateMenu()
	elseif(LuaQueryTask("T626")==2)then
		LuaSay("�޼᣺���������ʲô���������ȥ��@3��Ԩ��@0��")
   		UpdateMenu()
 	end

elseif(answer=="T750")then                 --------------------------------������ս�����顿
	if(LuaQueryTask("T750")==1)then
		LuaSay("�޼᣺��������Ϊ��������ı��ͳһ֮����֧���㣡���Ƕ����˰���������ȥ@4�����ǹ�����@0��@3����@0ȥ��")
		LuaSay(LuaQueryStr("name").."����лǰ����ָ�㣬���Ṽ�����ģ������ȥ��@3����@0")
		LuaSetTask("T750",2)
		AddLog("������ս�����顿",750)
		UpdateTopSay("ȥ�ҽ��۰�")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==2)then
		LuaSay("�޼᣺��ȥ��@3����@0�ɣ�������@4�����ǹ�����@0")
	end

elseif(answer=="T634")then
	if(LuaQueryTask("T634")==1)then
		LuaSay(""..LuaQueryStr("name").."���ұ�Ľ�ݴ�����@2�����涾@0����˵ֻ�����ܽ⡣")
		LuaSay("�޼᣺�ⶾ�����ܽ⣬�����ж����ܳ�������ӡ�")
		local shijiancha=(GetCurrentTime() - LuaQueryTask("634time"))
		 if(shijiancha<=300) then
	    		LuaSay("�޼᣺����û������ӣ�Ҫ��Ȼ����������������ڷ�����Ҳ�Ȳ����ˣ�������Ϊ��ⶾ��")
	    		AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T634jl")
		elseif(shijiancha>300) then
			 LuaSay("�޼᣺����������Ѿ����ˣ���Ҳ����Ϊ����")
			 LuaSay("@7����ʧ��","")
			 UpdateTopSay("���Ѿ��ж������������������½�����")
			LuaSetTask("T634",0)
       			LuaSet("hp",0)
       			FlushMyInfo("0x4")
       			DelLog("634")        -------��־��ɾ��
        	UpdateMenu()
			UpdateNPCMenu("fujian")

        end
	end
elseif(answer=="T634jl") then
	if(LuaQueryTask("T634")==1) then
	    LuaSetTask("T634",99)
		LuaAddJx("combat_exp",568000,"T634")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("634")
		UpdateMenu()
	end


elseif(answer=="T500")then
	if(LuaQueryTask("T500")==0)then
		LuaSay("�޼᣺Ľ�ݴ�����������ȥ�����������ʱ�Ľ���ϣ������˴�@3ʯԽ@0����������һֱû����Ѷ��")
		 LuaSay("�޼᣺��������Լ��Գư������Ѿ�û�ж��Ұ�ģ�Ҳ��Ըȥ���ˡ�") 
		 LuaSay("�޼᣺��ȥ����@4̫�йž�@0��@3Ľ�ݴ�@0ʵ�飬����֪����Ϊ֮��")
		LuaSetTask("T500",1)      -------��־�����
		AddLog("�޼���Ҹ桾���顿",500)
		UpdateMenu()
	elseif(LuaQueryTask("T500")==1)then
		LuaSay("�޼᣺�����¹��ش�����ô��ûȥ@4̫�йž�@0��@3Ľ�ݴ�@0��") 
	    UpdateTopSay("ȥ̫�йž���Ľ�ݴ�") 
	end 

elseif(answer=="Tsnpc_45")then
	if(LuaQueryTask("Tsnpc_45")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�޼᣺���ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_45",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_45")==2)then
		LuaSay("�޼᣺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_45")then
	if(LuaQueryTask("Tenpc_45")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�޼᣺�ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_45",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_45")==2)then
		LuaSay("�޼᣺���Ѿ������ˣ����ȥ��ȡ������")
	end

elseif(answer=="T80")then--//////////////////////////begin�ռ���������

	--T80		--0-δ��,1����
	--80col	--������
	--80count	--�Ƴɹ�����
	--80cancelnum	--ȡ������
	--80earntype	--δ�콱��
	daylimit=40--ÿ�մ��������޸Ĵ˴�����XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if(LuaQueryStrTask("T80day")~=GetCurrentDay())then
		LuaAddTask("80cancelnum",2)--ÿ����3��ȡ������
		LuaSetTask("T80day",GetCurrentDay())	
		LuaSetTask("T80daycount",0)--ÿ�ռ���
		LuaSay("ȡ�������������2")
		LuaSetTask("T80",0)
		LuaSetTask("80count",0)
	end
	shijiancha=GetCurrentTime()-LuaQueryTask("80time")
	if(shijiancha>60) then
		T80daycount=LuaQueryTask("T80daycount")
		if(LuaQueryTask("T80")==0)then		--δ��������
			hour=GetCurrentHour()
			weekday=GetDayOfWeek()
			if(T80daycount<daylimit)then--(hour>=17 and hour<23) or ((weekday==0 or weekday==6) and (hour>=12 and hour<23)))then--����ʱ��
				LuaSay("����δ����������,�ɹ�������һ���ش��޶����ٵ�����,�������һ��޵�������")
				LuaSay("@7��ܰ��ʾ@0���ռ������г��˳����ĵ��߲����⣬��֦����󾫹Ŷ�����ͨ����ľ�����ڿ�ر�ͼ��á�Ҳ����������ҹ����á�")
				LuaSay("@7��ܰ��ʾ@0���ռ�������������������ɴ��������Ӷ�����Ŷ��һ����Ʒ�����ϵͣ������@3��ֵ�ϸߵ���Ʒ������Ҳ��ǳ����@0@!")
				LuaSay("@7��ܰ��ʾ@0������������ֵ����ߣ���Ҫδ�󶨵Ĳ����������Ŷ����Ȼ����������Ҳ���൱�ķ��Ŷ")
				AddMenuItem("@7��������","")--title
				AddMenuItem("@7����","T80what")
				AddMenuItem("��û��","no")
			else
				if(LuaQueryStr("gender")=="����")then
					LuaSay("����������"..daylimit.."��������,��Ϣһ�°�,�س̵�����,�����.���ݽ��,�������ģ�")
				else
					LuaSay("����������"..daylimit.."��������,��Ϣһ�°�,�س̵�����,����˧��.���ݽ��,�������ģ�")
				end
				AddMenuItem("@7��������","")--title
			end
		elseif(LuaQueryTask("T80")==1)then		--�ѽ�δ���
			coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
			LuaSay("��@2"..(LuaQueryTask("80count")+1).."@0������:"..coldata[4]..",������1��@2"..coldata[3])
			AddMenuItem("@7Ѱ��һ��@2"..coldata[3],"")--title
			AddMenuItem("���ҵ���","T80ok")
			AddMenuItem("Ŷ��û��,��������","notfind")
			AddMenuItem("̫������,����ȡ������","T80cancel")
		else					--�����δ�콱���رղ˵���
			ret=LuaQueryTask("T80")
			LuaSay("������ɵ�@2"..(LuaQueryTask("80count")+1).."@0������")
			AddMenuItem("@7ѡ����","")--title
			if(ret~=100)then
			AddMenuItem("@P@3ͭ��","T80re1")
			end
			if(ret~=101)then
			AddMenuItem("@(@5����","T80re2")
			end
			if(ret~=102)then
			AddMenuItem("@*@4�²�����ɶ","T80re3")
			end
		end
		AddMenuItem("@5���񵵰�","T80about")
	else
		LuaSay("�������������Ѿ������100�Σ�@2������������һ���������淨��@0��������������Ҫ���1���Ӳ��ܼ�����ȡ�������ĵȴ���@!")
	end
elseif(answer=="T80what")then
	coldata={SelfDefGetColTask(LuaQuery("level"),1)}--�ݴ���1��ֹϵͳ��ʼ�����0����
	LuaSetTask("80col",coldata[1])
	LuaSetTask("T80",1)
	LuaSay("��@2"..(LuaQueryTask("80count")+1).."@0������:"..coldata[4]..",��ȥ�����ռ�1��@2"..coldata[3])
elseif(answer=="T80ok")then
	coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
	if(LuaItemStatusNormalCount(coldata[2])>0)then
		LuaSay("������,�ɵĺ�")
		LuaAddTask("T80daycount",1)
		DelItem(coldata[2],1)
		LuaSay("������ɵ�@2"..(LuaQueryTask("80count")+1).."@0������,��Ҫʲô����")
		ret=LuaRandom(3)+100--�����ѡ������(100-Ǯ,101-����,102-����)
		LuaSetTask("T80",ret)	--���佱����δ���������
		AddMenuItem("@7ѡ����","")
		if(ret~=100)then
		AddMenuItem("@3ͭ��","T80re1")
		end
		if(ret~=101)then
			AddMenuItem("@5����","T80re2")
		end
		if(ret~=102)then
			AddMenuItem("@4�²�����ɶ","T80re3")
		end
	else
		if(LuaItemStatusNormalCount(coldata[2])~=LuaItemCount(coldata[2]))then
		LuaSay("���ٿ���ԭ��,��̯�Ĳ���,����̯�Ķ����Լ�ͣ�ۺ������������")
		else
		LuaSay("��������������,�㻹û���ҵ�1��@7"..coldata[3].."@0")
		end
	end
	
	elseif(answer=="T80re1")then
			if(LuaQueryTask("T80")>0) then
			am=SelfDefGetColEarn(1)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
			LuaSetTask("T80",0)
			LuaGive("coin",am,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re2")then
		    if(LuaQueryTask("T80")>0) then
			bm=SelfDefGetColEarn(2)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
			LuaSetTask("T80",0)
			LuaAddJx("combat_exp",bm,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re3")then--�²�
            if(LuaQueryTask("T80")>0) then
			ro=LuaRandom(100)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
				LuaSetTask("T80",0)
				if(floor((LuaQueryTask("80count")+1)/840)==(LuaQueryTask("80count")+1)/840 and ro>40)then
				om=SelfDefGetColEarn(3)
				LuaGive(om,1,3,"T80")
				LuaNotice("@7"..LuaQueryStr("name").."���ռ����������еõ�@3�ƽ�װ��@7һ��")
				elseif(ro<2)then
				om=SelfDefGetColEarn(4)
				LuaGive(om,1,"T80")
				elseif(ro>50)then
				am=SelfDefGetColEarn(1)
				LuaGive("coin",am,"T80")
				else
				bm=SelfDefGetColEarn(2)
				LuaAddJx("combat_exp",bm,"T80")
				end
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end

	elseif(answer=="notfind")then
		LuaSay("�����ҵĶ����������Ź���������ҵ�,ʵ���Ҳ����Ͳ�Ҫ��ǿ��,Ҫ��ʲô��������ô����,�������˶���������.")
	elseif(answer=="T80cancel")then
		if(LuaQueryTask("80cancelnum")==0)then
		LuaSay("������û��ȡ���Ļ���,ȷ��ȡ��������������Ĵ�������@2����Ϊ0@0,��ȷ��ȡ����")
		else
		LuaSay("�����ڻ���@2"..LuaQueryTask("80cancelnum").."@0��ȡ������Ļ���,��ȷ��ȡ��������")
		end
		AddMenuItem("@7ȡ������?","")
		AddMenuItem("@1ȡ��","T80yescncl")
		AddMenuItem("@7������","no")
		elseif(answer=="T80yescncl")then
			if(LuaQueryTask("80cancelnum")==0)then
				LuaSetTask("80count",0)
				LuaSetTask("T80",0)
				LuaSay("�������ռ���������ɹ�����Ϊ@10")
			else
				LuaAddTask("80cancelnum",-1)
				LuaSetTask("T80",0)
			end
			AddMenuItem("@7Ҫ����������","")
			AddMenuItem("@7����","T80what")
			AddMenuItem("��û��","no")
	elseif(answer=="T80about")then
		flag=0
		if(LuaQueryTask("80col")==0)then
		flag=1
		else
			coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		end
		AddMenuItem("@7���񵵰�","")
		AddMenuItem("@3����ɴ���:@7"..LuaQueryTask("80count").."","no")
		if(LuaQueryTask("T80")~=0 or flag==0)then
		AddMenuItem("@3��ǰ����:@5Ѱ��һ��@2"..coldata[3].."","no")
		else
		AddMenuItem("@3��ǰ���� : @7��","no")
		end
		AddMenuItem("@3��ȡ������:@1"..LuaQueryTask("80cancelnum").."","no")
		AddMenuItem("@5����˵��","T80intro")
	elseif(answer=="T80intro")then
		LuaSay("��������:�����ٵ�ָʾѰ�Ҳ��ύָ����Ʒ,֮�󼴿������ѡͭ�ҡ����������������")
		LuaSay("��ɻ��ۼӴ���,������������ɴ������,��ɴ���Խ��,����Խ��,�ۼӴ����ﵽ���޲������ӡ�")
		LuaSay("@1û��ȡ��ȴ��Ҫȡ���Ļ�,�ۻ���ɴ���������.")
		LuaSay("ÿ�����2��ȡ������Ļ���,������ȡ���Ѷȴ��������������������")
		LuaSay("������񴥷��ռ����ʺ���ɱ������ͬ�����Ӱ���������")
		LuaSay("�ۼ���ɴ����ﵽһ������������о�ϲ��.�Ǻ���ֻ��˵������,�����˵һ���о�ϲ,�������������̫�����˰�")


	-------------------------------------------------------------���Ļ���ð�ա��߼��� 
--[[elseif(answer=="SPEAKGJ")then
	if(LuaQueryTempStr("online")=="ew22" and LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
	LuaSay("��ʾ�������ڵĹ�����ù����ܽ���������ͨ��")	
	else
	
	if(LuaPublicQueryStr("Tpublic_SPEAKGJ_data")~=GetCurrentDay() )then ----�ڶ�����������
		----1�Ƿ�ռ�ã�2���Ļ���䣬3ͭ�ң�4ͭ��������5���飬6����������7���ߣ�8��д���ڣ�9��ɴ�����10������
	    local num=1
  		while(num<100)
  		do

  		    LuaPublicSet("shuzu_a"..num.."",0)            -------�Ƿ�ռ��
  		    LuaPublicSetStr("shuzu_b"..num.."","")        -------���Ļ����
  		    LuaPublicSet("shuzu_c"..num.."",0)            -------���齱������
  		    LuaPublicSet("shuzu_d"..num.."",0)            -------ͭ�ҽ�������
  		    LuaPublicSetStr("shuzu_e"..num.."","")        -------����
  		    LuaPublicSetStr("shuzu_f"..num.."","")        -------��д����
  		    LuaPublicSet("shuzu_g"..num.."",0)            -------����ɴ���
  		    LuaPublicSet("shuzu_h"..num.."",0)            -------�������ַ�����������
  			num=num+1
		end
		LuaPublicSet("shuzu_cunchu",0)            -------ռ�ô洢
	    LuaPublicSetStr("Tpublic_SPEAKGJ_data",GetCurrentDay())
	end
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3��Ҫ������","SPEAKGJ_ZRW")
		if(LuaQuery("level")>=35) then
		AddMenuItem("@3��Ҫ��д����","SPEAKGJ_XRW")
		AddMenuItem("@7��Ҫ��ȡ����","SPEAKGJ_BC")
		end
		AddMenuItem("@7˵��","SPEAKGJ_SM")
		UpdateMenu()
		
	end	
elseif(answer=="SPEAKGJ_ZRW")then   ---------������ 
	if(LuaQueryStrTask("SPEAKGJ_renwu_Taskday")~=GetCurrentDay()) then
		LuaSetTask("SPEAKGJ_renwu",0) ------������������ 
		LuaSetTask("SPEAKGJ_renwu_r",0)
		LuaSetTask("SPEAKGJ_renwu_Taskday",GetCurrentDay())
	end
		if(LuaQueryTask("SPEAKGJ_renwu")~=99)then
  			if(LuaPublicQuery("shuzu_a1")==1 )then
				AddMenuItem("@7��ѡ��","")
				AddMenuItem("@3���˵һ��","ZRW_SJ")
				AddMenuItem("@3ѡ��˵һ��","ZRW_XZ")
				AddMenuItem("@3��������","ZRW_FQ")
				UpdateMenu()
			else
				LuaSay("��ʾ��Ŀǰ��û���κ����д������")
			end
		else
			LuaSay("��ʾ��������Ѿ����������񣬲��������ˣ�")
		end
			
		
	elseif(answer=="ZRW_SJ")then   ---------���˵һ�� 
		if(LuaQueryTask("SPEAKGJ_renwu")==0 )then  
			local num=LuaPublicQuery("shuzu_cunchu")
			local times=0 
			local r
			r=LuaRandom(num)+1 
			
			
			while(times<20)
  			do 
  				local b=LuaPublicQueryStr("shuzu_b"..r.."")
				local c=LuaPublicQuery("shuzu_c"..r.."")
				local d=LuaPublicQuery("shuzu_d"..r.."")
  				if(b~="" and c~=0 and d~=0) then
  					LuaSetTask("SPEAKGJ_renwu_r",r)
					LuaSetTask("SPEAKGJ_renwu",1)
					break
				else
					r=LuaRandom(num)+1
				end 
				times=times+1
			end
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
        	if(b~="" and c~=0 and d~=0) then
         	LuaSay("��ʾ�����ڹ���Ƶ��˵һ��@3"..b.."@0�����������������Ϊ@3"..LuaQueryTask("SPEAKGJ_renwu_r").."@0��")
			--LuaSay("��ʾ���������齱��Ϊ@3"..floor(c*0.9*0.8).."@0��������ͭ�ҽ���Ϊ@3"..floor(d*0.9*0.8).."@0��")
			LuaSay("��ʾ���������Ѿ��������@3"..g.."��@0��@3����Ϊ"..h.."@0��������������@3"..e.."@0����������Է�������")
        	else
        	LuaSay("��ʾ�����������������Ϊ@3"..r.."@0,��������δ��д��ɣ������������ɱ༭�ɣ�@3�Ѿ��Զ������˱�������@0")
        	LuaSetTask("SPEAKGJ_renwu",0)
        	LuaSetTask("SPEAKGJ_renwu_r",0)
        	end
		elseif(LuaQueryTask("SPEAKGJ_renwu")==1 )then 
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
		    if(LuaQueryTempStr("last_world_msg")==LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."") and LuaQueryTask("SPEAKGJ_renwu")~=99)  then
				LuaGive("coin",floor(d*0.9*0.8),"SPEAKGJ")
				LuaAddJx("combat_exp",floor(c*0.9*0.8),"SPEAKGJ")
				LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(c* (1-0.9*0.8) )  )
  		    	LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(d* (1-0.9*0.8) )  )
				local fen
				if(LuaQuery("level")<30) then    ------��
				fen=1
				elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
				fen=2
				elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
				fen=4
				elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
				fen=6
				elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
				fen=8
				elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
				fen=8
				elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
				fen=10
				elseif(LuaQuery("level")>=90) then
				fen=10
				end
				LuaPublicSet("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."",g+1)
				LuaPublicSet("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."",h+fen)
				LuaSetTask("SPEAKGJ_renwu",99)
			else
		        LuaSay("��ʾ����˵���ˣ����ڹ���Ƶ��˵һ��@3"..b.."@0��")
    			--LuaSay("��ʾ���������齱��Ϊ@3"..floor(c*0.9*0.8).."@0��������ͭ�ҽ���Ϊ@3"..floor(d*0.9*0.8).."@0��")
				LuaSay("��ʾ���������Ѿ��������@3"..g.."��@0��@3����Ϊ"..h.."@0��������������@3"..e.."@0����������Է�������")
		    end
		end 
	elseif(answer=="ZRW_XZ")then   ---------ѡ��˵һ�� 
		if(LuaQueryTask("SPEAKGJ_renwu")==0 )then
		    AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3������","ZRW_XZ_shuru")
		elseif(LuaQueryTask("SPEAKGJ_renwu")==1 )then
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
		    if(LuaQueryTempStr("last_world_msg")==LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."") and LuaQueryTask("SPEAKGJ_renwu")~=99)  then
				LuaGive("coin",floor(d*0.9*0.8),"SPEAKGJ")
				LuaAddJx("combat_exp",floor(c*0.9*0.8),"SPEAKGJ")
				LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(c* (1-0.9*0.8) )  )
  		    	LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(d* (1-0.9*0.8) )  )
  		    	local fen
				if(LuaQuery("level")<30) then    ------��
				fen=1
				elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
				fen=2
				elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
				fen=4
				elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
				fen=6
				elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
				fen=8
				elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
				fen=8
				elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
				fen=10
				elseif(LuaQuery("level")>=90) then
				fen=10
				end
				LuaPublicSet("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."",g+1)
				LuaPublicSet("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."",h+fen)
				LuaSetTask("SPEAKGJ_renwu",99)
			else
		        LuaSay("��ʾ����˵���ˣ����ڹ���Ƶ��˵һ��@3"..b.."@0��")
    			--LuaSay("��ʾ���������齱��Ϊ@3"..floor(c*0.9*0.8).."@0��������ͭ�ҽ���Ϊ@3"..floor(d*0.9*0.8).."@0��")
				LuaSay("��ʾ���������Ѿ��������@3"..g.."��@0��@3����Ϊ"..h.."@0��������������@3"..e.."@0����������Է������񣡿�������ѡ��������������")
		    end
		end
		elseif(answer=="ZRW_XZ_shuru")then
		    EnterNumber(1,100)
		    AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3ȷ��","ZRW_XZ_baocun")
		elseif(answer=="ZRW_XZ_baocun")then
			local num=LuaQueryTemp("min_max_num")
			LuaSetTask("SPEAKGJ_renwu_r",num)
			LuaSetTask("SPEAKGJ_renwu",1)
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
        	if(b~="" and c~=0 and d~=0) then
         	LuaSay("��ʾ�����ڹ���Ƶ��˵һ��@3"..b.."@0��")
			--LuaSay("��ʾ���������齱��Ϊ@3"..floor(c*0.9*0.8).."@0��������ͭ�ҽ���Ϊ@3"..floor(d*0.9*0.8).."@0��")
			LuaSay("��ʾ���������Ѿ��������@3"..g.."��@0��@3����Ϊ"..h.."@0��������������@3"..e.."@0����������Է������񣡿�������ѡ��������������")
        	else
        	LuaSay("��ʾ����������δ��ɣ������������ɱ༭�ɣ�@3�Ѿ��Զ������˱�������@0��������ѡ��������������")
        	LuaSetTask("SPEAKGJ_renwu",0)
        	LuaSetTask("SPEAKGJ_renwu_r",0)
        	end
	elseif(answer=="ZRW_FQ")then   ---------�������� 
	    if(LuaQueryTask("SPEAKGJ_renwu")~=99)then
	        LuaSetTask("SPEAKGJ_renwu",0)
	        LuaSetTask("SPEAKGJ_renwu_r",0)
			LuaSay("��ʾ����������½������ˣ���������ѡ��������������")
		else
			LuaSay("��ʾ��������Ѿ������������ˣ�")
		end
		                                              
		                                                
elseif(answer=="SPEAKGJ_XRW")then   ---------д���� 
	if ((LuaQueryTempStr("online")=="ew22" or LuaQueryTempStr("online")=="ew20" or LuaQueryTempStr("online")=="ew28") and ( LuaQueryStr("country_id")=="ew21" or LuaQueryStr("country_id")=="ew27" ))then
	LuaSay("��ʾ�������ڵĹ�����ù����ܽ���������ͨ��")
	else
		if(LuaQueryStrTask("Tself_SPEAKGJ_Taskday")~=GetCurrentDay()) then
			LuaSetTask("SPEAKGJ_number",0) ------���ñ�ţ�˽�˲���
			LuaSetTask("SPEAKGJ_cishu",0)  -----����
			LuaSetTask("SPEAKGJ_renqi",0)  ------���� 
			LuaSetTask("SPEAKGJ_touzi",0)  ------����Ͷ�ʵ�ͭ��
			LuaSetTask("SPEAKGJ_touzicha",0)  ------����Ͷ�ʵ�ͭ��cha
			LuaSetTask("SPEAKGJ_jl1",0)
			LuaSetTask("SPEAKGJ_jl2",0)
			LuaSetTask("Tself_SPEAKGJ_Taskday",GetCurrentDay())
		end
		if(LuaQueryTask("SPEAKGJ_number")==0)then
			LuaSay("��ʼ��ȡ����...")
			local num =LuaPublicQuery("shuzu_cunchu")+1
  			while(num<100)
  			do 
  				if(LuaPublicQuery("shuzu_a"..num.."")==0 )then
  				LuaPublicSet("shuzu_cunchu",num)
				break
				end 
  				num=num+1
			end
			if(num<100)   then
				LuaSetTask("SPEAKGJ_number",num)
				LuaPublicSet("shuzu_a"..num.."",1) 
				LuaPublicSetStr("shuzu_e"..num.."",LuaQueryStr("name"))        -------����
  		    	LuaPublicSetStr("shuzu_f"..num.."",GetCurrentDay())        -------��д����
				LuaSay("���������Ϊ@3"..LuaQueryTask("SPEAKGJ_number").."@0�������ڿ��ԶԴ�������б�д@3���ݶ԰��뾭��ͭ�ҽ�����@0")
			else
				LuaSay("��ʾ�����ź������б���Ѿ����������ռ�ã�����첻�ܱ�д�����ˣ�")
			end
		else
		
		LuaSay("������������Ϊ@3"..LuaQueryTask("SPEAKGJ_number").."@0�������ڿ��ԶԴ�������б�д@3���ݶ԰��뾭��ͭ�ҽ�����@0")		
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3�������Ļ����","XRW_yuju")
		AddMenuItem("@3���뾭�齱��","XRW_jingyan")
		AddMenuItem("@3����ͭ�ҽ���","XRW_tongbi")
		AddMenuItem("@7�鿴�������","XRW_look")
		AddMenuItem("@7���������ͭ��","XRW_fanhuan")
		UpdateMenu()
		end 
	end
	elseif(answer=="XRW_yuju")then   ---------�������Ļ���� 
	        LuaSay("��ʾ��������԰����ݣ�@3������������˵�����ݣ���Ҫ�����κη��š������ŵķǺ��ַ������ַ���@0���ڶ������գ�")
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_yuju_shuru")
     	elseif(answer=="XRW_yuju_shuru")then
       		EnterStr(3,20)
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_yuju_baocun")
		elseif(answer=="XRW_yuju_baocun")then
		    local a=LuaQueryTempStr("enter_str")
		    if(a=="") then
		    LuaSay("��ʾ�����������в�����Ҫ��")
		    else 
		    	LuaPublicSetStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."",a)
		    	LuaSay("��ʾ���������ݳɹ���")
		    end 
	elseif(answer=="XRW_jingyan")then   ---------���뾭�齱��
     		LuaSay("��ʾ���趨���齱����@3���������ϵ�ͭ��@0��Ȼ��ת���ɾ��飬��ӵ���༭�������@3����Ϊ1��3�����齱����ֵ���������3����@0���ڶ�������㣡")
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_jingyan_shuru")
     	elseif(answer=="XRW_jingyan_shuru")then
     		EnterNumber(100,50000000)
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_jingyan_baocun")
		elseif(answer=="XRW_jingyan_baocun")then
		    local a=LuaQueryTemp("min_max_num")
		    if(a<100) then
		    LuaSay("��ʾ�����������в�����Ҫ��")
		    else 
		    	if(LuaItemCount("coin")>=a)then
		    		LuaGive("coin",-1*a,"SPEAKGJ")
		    		LuaSetTask("SPEAKGJ_touzi",LuaQueryTask("SPEAKGJ_touzi")+a)
		    		LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."",a*3+LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number")..""))
		    		LuaSay("��ʾ���������ݳɹ���")
		  	  	else
		    		LuaSay("��ʾ�������ϵ�ͭ�Ҳ��㣬��������ʧ�ܣ�")
		    	end
		    end	
	elseif(answer=="XRW_tongbi")then   ---------����ͭ�ҽ���
	        LuaSay("��ʾ���趨ͭ�ҽ�����@3���������ϵ�ͭ��@0��Ȼ����ӵ���༭�������@3����Ϊ1��1��@0���ڶ�������㣡")
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_tongbi_shuru")
     	elseif(answer=="XRW_tongbi_shuru")then
     		EnterNumber(100,50000000)
     		AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��������","XRW_tongbi_baocun")
		elseif(answer=="XRW_tongbi_baocun")then
		    local a=LuaQueryTemp("min_max_num")
		    if(a<100) then
		    LuaSay("��ʾ�����������в�����Ҫ��")
		    else 
		    	if(LuaItemCount("coin")>=a)then
		    		LuaGive("coin",-1*a,"SPEAKGJ")
		    		LuaSetTask("SPEAKGJ_touzi",LuaQueryTask("SPEAKGJ_touzi")+a)
		    		LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."",a+LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number")..""))
		    		LuaSay("��ʾ���������ݳɹ���")
		  		else
		    		LuaSay("��ʾ�������ϵ�ͭ�Ҳ��㣬��������ʧ�ܣ�")
		    	end
		    end 
    elseif(answer=="XRW_look")then   ---------�鿴�������
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."")
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")
        if(b~="" and c~=0 and d~=0) then
        LuaSay("��ʾ����༭�Ķ԰�����Ϊ@3"..b.."@0��")
        LuaSay("��ʾ�����趨�ľ��齱���ۼƲ�����Ϊ@3"..c.."@0�����趨��ͭ�ҽ����ۼƲ�����Ϊ@3"..d.."@0��")
        LuaSay("��ʾ����������ɴ���Ϊ@3"..g.."@0������Ϊ@3"..h.."@0��")
        LuaSay("��ʾ�����д�������Ѿ�@3���ڿ���״̬��@0������ɵ���ҿ��Ի�ȡ�󲿷־����ͭ�ҽ������������ʱ���佱����")
        LuaSay("��ʾ��Ϊ�˱�����д������һֱ���ڿ���״̬��ÿ�η��Ž��������һС���֣����ڶ���ᱻϵͳ���㣬@3�뼰ʱ��ȡ���������ͭ��@0��������ʧ��")
        else
        LuaSay("��ʾ�����д��������δ��ɣ�����δ����״̬��")
        end
	elseif(answer=="XRW_fanhuan")then   ---------���������ͭ��
	    LuaSay("��ʾ�����������ͭ�ң�ֻ�ܷ���@3��������90%��@0")
	    AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3ȷ��","XRW_fanhuan_yes")
    elseif(answer=="XRW_fanhuan_yes")then   ---------���������ͭ��
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."")
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")   -----���� 
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")   -----ͭ�� 
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")
        LuaGive("coin",floor(d*0.9),"SPEAKGJ")
		LuaAddJx("combat_exp",floor(c*0.9),"SPEAKGJ")
		LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."",0)
  		LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."",0)
elseif(answer=="SPEAKGJ_BC")then   ---------��ȡ���� 
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."") ---���Ļ����
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")   ---���齱��
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")   ----ͭ�ҽ���
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")   ---����ɴ���
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")   ---��������
		local cishu=LuaQueryTask("SPEAKGJ_cishu")     ----����ɴ��� ˽�˲���
		local renqi=LuaQueryTask("SPEAKGJ_renqi")     ----��������  ˽�˲���
		local touzi=LuaQueryTask("SPEAKGJ_touzi")     ----����Ͷ�ʵ�ͭ��
		local touzicha=LuaQueryTask("SPEAKGJ_touzicha")     ----����Ͷ�ʵ�ͭ��cha
		local jingyan
		jingyan= floor( ( 1+(h-renqi)/10 )*(touzi-touzicha)/(g-cishu)  )
		LuaSetTask("SPEAKGJ_touzicha",touzi)
		LuaSetTask("SPEAKGJ_cishu",g)
		LuaSetTask("SPEAKGJ_renqi",h)
		if(jingyan<=0) then
		LuaSay("��ʾ��Ŀǰ���޽�����")
		else
		LuaAddJx("combat_exp",jingyan,"SPEAKGJ2")
		end
		if(g>=20 and LuaQueryTask("SPEAKGJ_jl1")==0 )then
		LuaGive("o_state068j",1,"SPEAKGJ2")
		LuaSetTask("SPEAKGJ_jl1",99)
		else
		LuaSay("��ʾ��������д�����������г���@320����������@0������Ի��һ�ݶ���ı��꣡һ�����һ��Ŷ��")
		end
		
		if(h>=50 and LuaQueryTask("SPEAKGJ_jl2")==0 )then
		LuaGive("o_box004j",1,"SPEAKGJ2")
		LuaSetTask("SPEAKGJ_jl2",99)
		else
		LuaSay("˵����������д�����������г���@350������@0������Ի��һ�ݶ���ı��꣡һ�����һ��Ŷ��")
		end
		
elseif(answer=="SPEAKGJ_SM")then   ---------˵��
	LuaSay("˵��������������ͨ���Ļ���ð����ʽ��࣬����������һ�����񣬻�ָ��һ������ǰ����@3��������������˱�д����@0��")
	LuaSay("˵���������ѡ�������Ŷ��ǹ���ģ�ÿ��ÿ��ֻ����һ�Ρ������û��ɣ��Ե�ǰ�������⣬���Է����������½ӣ�")
	LuaSay("˵������������д��������ֻҪ����˵��Ϳ����Զ���ȡ�����ţ�Ŀǰ�ݶ�����Ϊ@3100@0����ţ�@335������@0����Ҳ��ܱ�д��������")
	LuaSay("˵�������˱����Ϳ��Զ�Ӧ�����������Ļ���䣬���齱����ͭ�ҽ�������Щ�����ɵ��Լ���������Ŷ��")
	LuaSay("˵�����������������д�����񣬿����������������һ��70����ұ�һ��30��������������񣬴���������Ҫ�ߵö࣡")
	LuaSay("˵��������Ը������������ɴ�������������ȡ���ꡣ��Ȼ�����û�����������ʲô���궼û��Ŷ��")

]]

elseif(answer=="T1003") then		--------------------��������
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(GetCurrentDay()~=LuaQueryStrTask("1003Taskday")) then
		LuaSetTask("T1003",0)
		LuaDelTask("T1003line")
		LuaSetTask("1003dotime",0)
	end
	AddMenuItem("@7����ϵͳ","")
	if(LuaQueryTask("T1003")==0) then 
		LuaSay("�޼᣺ÿ���20��00�Ϳɿ�ʼ�μӱ��ص��������ᣬ20��20����������21��00�������")
		LuaSay("�޼᣺��ڼ�ÿ�ҵ�һ��������������ң�����õ����ľ��齱��Ŷ��@!")
		LuaSay("�޼᣺�ڻ�ڼ��ҵ�@3�����������@0����ң�����Ϊ���ص�������")
		AddMenuItem("ռ������","shenqing","")
	elseif(LuaQueryTask("T1003")>1 and  LuaQueryTask("T1003")<5) then
		AddMenuItem("�ɼ��ύ","tijiao","")
	elseif(LuaQueryTask("T1003")==5 and hour==20) then 
		AddMenuItem("����Ѱ�����","mapown","")
	end
	AddMenuItem("�����Ϣ","xinxi","")
	AddMenuItem("�����ƺ�","chenghao","")
	AddMenuItem("��������","jiangli","")


elseif(answer=="shenqing") then
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local level= LuaQuery("level")
	if(level>=30 and level<=55) then 
		if(hour==20 and min<20) then
			if(IsMapHostNoParameter()~="true")then
				LuaSay("�޼᣺��ͼ�����ǿ������ϵ���ҫ����Ҫ��Ϊ�����ǵ��������ǾͿ�챨���ɣ�ֻ��Ҫ����@33000ͭ��@0�Ϳ����ˡ�")
				LuaDelTask("1003firstget")
				AddMenuItem("@7����ϵͳ","")
				AddMenuItem("����","mapown","")
				AddMenuItem("��������","nomapown","")
			else 
				LuaSay("�޼᣺�����������ɲμ�������ص����ᡣ")	
			end
		elseif(hour<20)then
		LuaSay("�޼᣺�����ǵ�����������û��ʼ�أ�20��00����ʽ��ʼ��")
		else                                                                                  
		LuaSay("�޼᣺�����ǵı�����20��20�Ѿ�������ÿ���20��00��20:20֮�䶼���Ե���������������")
		end
	else
		LuaSay("�޼᣺�ﵽ30-55����ҿɲ��������ǵ��������ᡣ")
	end
elseif(answer=="tijiao") then	
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour==20) then
	local T1003line=LuaQueryStr("T1003line")
		if(LuaQueryTempStr("online")==T1003line)then
			if(TeamCount()==2) then
				if((TeamQuery("level")>=LuaQueryTask("1003level")-5) and (TeamQuery("level")<=LuaQueryTask("1003level")+5) and (TeamQueryStr("class")==LuaQueryStr("1003class"))) then	 
					LuaAddTask("1003dotime",1) 
					local num=LuaQueryTask("1003dotime")
					SaveMaxValueInRoom(num)
					LuaSay("�޼᣺��ɹ����ҵ���1�����������Ķ��������Ѿ��ɹ����ҵ��ܹ�"..num.."�����ˡ�")
					LuaAddJx("combat_exp",(50000+level^2*20),"T1004")
					LuaSay("�޼᣺�㻹Ҫ������ս��ͼ�������Ǿͼ���Ѱ��������������Ұɡ�") 
					LuaSetTask("T1003",5)  
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("����","mapown","")	
					AddMenuItem("����Ѱ��","giveup","")
				else
					local class=LuaQueryStr("1003class")
					if(class=="wu") then
						LuaSay("�޼᣺���ҵ��˲���������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."�������͡�")
					elseif(class=="shen")then
						LuaSay("�޼᣺���ҵ��˲���������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."����սʿ��")
					elseif(class=="xian")then                                                                       
						LuaSay("�޼᣺���ҵ��˲���������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."����ıʿ��")
					end 
					LuaSay("�޼᣺�����ʵ���Ҳ����������������ң�����ѡ�������������Ѱ������������������ң�������Ҫ����@3500@0�Ļ�Լ�ѡ�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("����Ѱ��","goon","")
					AddMenuItem("Ѱ���µ����","findanother","")
				end
			else 
				local class=LuaQueryStr("1003class")
				if(class=="wu") then
					LuaSay("�޼᣺��������������Ķ���1����ӣ����������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."�������͡�")
				elseif(class=="shen")then
					LuaSay("�޼᣺��������������Ķ���1����ӣ����������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."����սʿ��")
				elseif(class=="xian")then                                                                       
					LuaSay("�޼᣺��������������Ķ���1����ӣ����������������ҪѰ��1��@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."����ıʿ��")
				end 
				LuaSay("�޼᣺�����ʵ���Ҳ����������������ң�����ѡ�������������Ѱ������������������ң�������Ҫ����@3500@0�Ļ�Լ�ѡ�")
				AddMenuItem("@7�Ƿ����","")
				AddMenuItem("����Ѱ��","goon","")
				AddMenuItem("Ѱ���µ����","findanother","")
			end
		else
			LuaSay("�㲻���ڱ���������Ŷ����Ҫ���㱨���Ĺ���ȥ�ύ������Ʒ@!")
		end

	else
		LuaSay("�޼᣺���Ѿ������˳ɼ����ύʱ��21��00��ֻ�����ϴ��ύʱ��Ľ��Ϊ׼��")
	end


elseif(answer=="jiangli") then	  -------------��һ�ε���ȡ�ͺ���ÿ4Сʱ��ȡһ��
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	if(hour~=20)then
		if(IsMapHost("lu_lyc")=="true")then	 
			if(LuaQueryTask("1003firstget")==0) then
				LuaDelTask("1003dotime")		
				LuaSay("�޼᣺��ϲ���ڱ��ε���ռ����ж����ͷ�꣬��Ϊ���ص����������Ի��@3"..LuaQueryStr("title").."@0�ĳƺš�")
				LuaGive("coin",30000,"T1003")
				LuaAddJx("combat_exp",(100000+80*level^2),"T1003")
				LuaGive("e_head005t",1,2,"T1003")
				LuaSetTask("T1003",99) 
				LuaSetTask("1003time",GetCurrentTime()) 
				LuaSetTask("1003firstget",1) 
				LuaGive("o_mission035",1)--��˰��
				LuaGive("e_mission091",1)--ʩ����
				LuaNotice("@2����������"..LuaQueryStr("name").."@0��ȡ��@230000@0ͭ����װһ���ʹ�������,ÿ4Сʱ��������һ�ν�����")
				LuaSay("�޼᣺�ڱ�����������֮ǰ����ÿ���4Сʱ�����Ե�����������ȡ������")      
			else
				local shijiancha=GetCurrentTime()-LuaQueryTask("1003time")
				if(shijiancha>=14400) then
				LuaSetTask("1003time",GetCurrentTime()) 
				LuaAddJx("combat_exp",(80000+40*level^2),"T1003")
				LuaGive("o_state068j",1)  
				LuaSay("�޼᣺�ڱ�����������֮ǰ����ÿ���4Сʱ�����Ե�����������ȡ������")   
				LuaNotice("@2����������"..LuaQueryStr("name").."@0��ȡ��ħ��1���ʹ������顣")
				else
				LuaSay("�޼᣺2�ν�������ȡ���ʱ�����Ҫ����4Сʱ�������ڲ�����ȡ��")
				end
			end
		elseif(LuaQueryTask("T1003")>=2 and LuaQueryTask("T1003")<=5 and grade==2)then		
			LuaDelTask("1003dotime")
			LuaSay("�޼᣺��Ȼû���õ����ص�������λ���õ���2��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ����")
			LuaGive("coin",20000,"T1003")
			LuaAddJx("combat_exp",(55000+40*level^2),"T1003")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"T1003") 
			LuaNotice("@2���������������2��"..LuaQueryStr("name").."@0��ȡ��@220000@0ͭ���ϲ�1���ʹ������顣")
			LuaSetTask("T1003",99)
		elseif(LuaQueryTask("T1003")>=2 and LuaQueryTask("T1003")<=5 and grade==3)then			
			LuaDelTask("1003dotime")
			LuaSay("�޼᣺��Ȼû���õ����ص�������λ���õ���3��Ҳ�ǿ�ϲ�ɺصġ�����Ŭ������ȡ�´ζ����")
			LuaGive("coin",10000,"T1003")
			LuaAddJx("combat_exp",(55000+40*level^2),"T1003")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"T1003") 
			LuaNotice("@2���������������3��"..LuaQueryStr("name").."@0��ȡ��@210000@0ͭ���ϲ�1���ʹ������顣")
			LuaSetTask("T1003",99)
		else
			LuaDelTask("1003dotime")		
			LuaSay("�޼᣺�������ڵĳɼ��޷�����������������Ǽ������Ͱɡ�")
		end
	else
		LuaSay("�޼᣺��ͼ�������ڻ�����������21:00�Ժ󣬲Ż�����µĵ�ͼ������")
	end

elseif(answer=="chenghao") then
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(IsMapHost("lu_lyc")=="true")then
		if(QueryTitle("title")~=6) then       -----------�����ƺŶԱ�
			if(hour==20) then
				LuaSay("�޼᣺�����������������������ڼ䣬���ɻ�������ƺţ������ս���������������ҡ�")
			else
				LuaSay("�޼᣺�������������ǵ���������Ҫ����ƺ���")
				AddMenuItem("����ƺ�","")
				AddMenuItem("����ƺ�","jihuo")
				AddMenuItem("������","bujihuo")
			end
		else
			LuaSay("�޼᣺���Ѿ������������ƺš�")
		end
	else
		LuaSay("�޼᣺�㲻�Ǳ��ص��������޷���������ƺš�")
	end

elseif(answer=="xinxi") then
	local level= LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour==20 and LuaQueryTask("T1003")>=1) then
		LuaSay("�޼᣺������ʱ�ŵ�һ�ģ�Ѱ�ҵ���@3"..GetBestGradeNum().."@0��������������ң�ʱ���޶࣬���Ŭ��׷�ϰѡ�")
	end
	LuaSay("��������������ȡ30000ͭ��,��װһ��,ħ��6�����������顣")
	LuaSay("�������������᷽ʽΪ���ˣ������󣬰�Ҫ����ָ�������ְҵ�����������ύ���Ϳ��ۻ��ɼ������˴�������߶���������ȼ�Ҫ��20�����ϡ�")
      
elseif(answer=="giveup") then
      local num=LuaQueryTask("1003dotime") 
      LuaSay("�޼᣺�����ڲ�Ѱ�ҵ�"..num.."��������������ң���ȷ��Ҫ������ͼ������������")
      AddMenuItem("@7�Ƿ����","")
      AddMenuItem("��������","mapown","")
      AddMenuItem("��������","fangqi","")


elseif(answer=="mapown") then
	local level= LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local r1
	if(LuaQueryTask("T1003")==0) then   
		if(hour==20 and min<20) then
			if(LuaItemCount("coin")>=3000) then
				LuaGive("coin",-3000,"T1003")      
				LuaSetTask("1003Taskday",GetCurrentDay())
				if(level<25) then 
					r1=level+15-LuaRandom(15)
				else   
					r1=level-LuaRandom(20)
				end
				LuaSetTask("1003level",r1)
				local r2=LuaRandom(3)  
				if(r2==0)then
				LuaSet("1003class","wu")
				LuaSetTask("T1003",2)		
				LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."�������͡�")
				elseif(r2==1)then
				LuaSet("1003class","shen")
				LuaSetTask("T1003",3)
				LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����սʿ��")
				elseif(r2==2)then
				LuaSet("1003class","xian")
				LuaSetTask("T1003",4)
				LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����ıʿ��")
				end
				LuaSet("T1003line",LuaQueryTempStr("online"))
			else
				LuaSay("�޼᣺������@33000ͭ��@0�ſɱ�����")
			end
	      else
	      LuaSay("�޼᣺����ʱ�䵽20��20��ֹ�����ڲ����ٱ����μӻ�ˡ�")
	      end

	else
		if(level<25) then 
			r1=LuaRandom(15)  
			r1=r1+15-r1
		else   
			r1=LuaRandom(20)
			r1=level-r1
		end
		LuaSetTask("1003level",r1)
		local r2=LuaRandom(3)  
		if(r2==0)then
			LuaSet("1003class","wu")
			LuaSetTask("T1003",2)	
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."�������͡�")
		elseif(r2==1)then
			LuaSet("1003class","shen")
			LuaSetTask("T1003",3)	
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����սʿ��")
		elseif(r2==2)then
			LuaSet("1003class","xian")
			LuaSetTask("T1003",4)		
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����ıʿ��")
		end
	end


elseif(answer=="findanother") then	
	local level= LuaQuery("level")
	local r1
	if(LuaItemCount("coin")>=500) then
		LuaGive("coin",-500,"T1003")      
		if(level<25) then 
			r1=LuaRandom(15)  
			r1=r1+15-r1
		else   
			r1=LuaRandom(20)
			r1=level-r1
		end
		LuaSetTask("1003level",r1)
		local r2=LuaRandom(3) 
		LuaSetTask("r2",r2)
		if(r2==0)then
			LuaSet("1003class","wu")
			LuaSetTask("T1003",2)		
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."�������͡�")
		elseif(r2==1)then
			LuaSet("1003class","shen")
			LuaSetTask("T1003",3)			 
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����սʿ��")
		elseif(r2==2)then
			LuaSet("1003class","xian")
			LuaSetTask("T1003",4)	
			LuaSay("�޼᣺����ҪѰ��1��@3"..(r1-5).."~"..(r1+5).."����ıʿ��")
		end
	else
		LuaSay("�޼᣺������@3500ͭ��@0�ſ�����Ѱ������������������ҡ�")
	end

elseif(answer=="nomapown") then  
	LuaSay("�޼᣺��õĻ�������㣬�ѵ������������ˣ��ڱ��������¼�֮ǰ�������������ﱨ����")

elseif(answer=="goon") then  
	LuaSay("�޼᣺�������;��������ҵ�������������Һ���������ҡ�")

elseif(answer=="jihuo")then
	SetTitleMeg(6)		------------------------6:̫��
	LuaSay("�޼᣺������@3"..LuaQueryStr("title").."@0�ĳƺš�")
elseif(answer=="bujihuo")then
	LuaSay("�޼᣺ӵ�ж���ƺ�ʱ������ȡ�ĳƺŻḲ��ǰ��ĳƺţ�����Ե���Ӧ��npc����ȡϲ���ĳƺš�")

elseif(answer=="fangqi")then                                         
	LuaSay("�޼᣺���Ѿ������˼���Ѱ��������ң����첻���ټ����û�ˡ�")
	LuaSetTask("T1003",99)    



elseif(answer=="T270") then    --׷ɱ���� 
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(GetCurrentDay()~=LuaQueryStrTask("270Taskday")) then
		LuaSetTask("T270",0)
		LuaSetTask("T270dotime",0)
	end
	if(LuaQueryTask("T270")==0) then
		if(level>=20) then
		LuaSay("�޼᣺��Ȼ����ô������ɱ�޹�����������������֣��ͽ䷸��")
			LuaSay("�޼᣺׷ɱ�ķ���Խ�࣬����Խ�ߣ���ɱ@310������@0������ȡȫ���������1Сʱ�ڱ�ɱ��3�εķ��˲�����@!")
			if(LuaQueryPersonInMap("lu_dilao")>=1)    then 
				LuaSay("�޼᣺���ٵ�׷ɱ@33������@0�������������Ŷ@!")
				AddMenuItem("@7�Ƿ�׷ɱ����","")
				AddMenuItem("׷ɱ����","kill","")
				AddMenuItem("��С����ȥ","nokill","")
			else
				LuaSay("�޼᣺����Ŀǰ@1���ε�ͼ@0û�ˣ��㻹�Ǳ�ȥ�ˣ�ȥ��Ҳ�˷�1������!")	
			end 
		else
			LuaSay("�޼᣺��̫���������ˣ�20���Ժ��������Ұ�")
		end
	elseif(LuaQueryTask("T270")==1) then
		local killnum=LuaQueryTask("pks2")-LuaQueryTask("pks1")             --ͨ���������ο���
		LuaDelTask("pks1")
		LuaDelTask("pks2")
		if(killnum==0) then
			LuaSay("�޼᣺���ţ�����1�����˶�û��ɱ��������̫ʧ���ˡ�")
			if(LuaQueryTask("T270dotime")<2) then
			LuaSetTask("T270",0)
			else
			LuaSetTask("T270",99)
			LuaDelTask("T270dotime")
			UpdateMenu()
			end
		else
			if(killnum<3) then
				LuaSay("�޼᣺���׷ɱ@3"..killnum.."��@0���ˣ�������Ҫ��ɱ3�����ˣ��������ͨ��@!")
				if(LuaQueryTask("T270dotime")<2) then
				LuaSetTask("T270",0)
				else
				LuaSetTask("T270",99)
				LuaDelTask("T270dotime")
				UpdateMenu()
				end
			else
				   LuaSay("�޼᣺���׷ɱ�˵��εķ���@3"..killnum.."@0��������ǰ;����������@!")	
				   local exp
				   if(killnum<10)then
				   exp=20000+level^2*7*killnum+level*780*killnum
				   else
				   exp=20000+level^2*75+level*7800
				   end	
				   LuaAddJx("combat_exp",exp,"T270")		 
				   if(LuaQueryTask("T270dotime")<2) then
				   LuaSetTask("T270",0)
				   else
				   LuaSetTask("T270",99)
				   LuaDelTask("T270dotime")
				   end
				   UpdateMenu()
			end
	end
	DelLog("270")

	elseif(LuaQueryTask("T270")==99) then  
		LuaSay("��ʾ��ÿ��ֻ�ܽ�@32��@0׷ɱ������������������@!")
	end

	elseif(answer=="kill") then
		LuaSetTask("270Taskday",GetCurrentDay())
		LuaAddTask("T270dotime",1) 
		LuaSetTask("T270",1)
		AddLog("׷ɱ����",270)
		LuaSetTask("pks1",LuaQuery("pks"))        --ɱ����
		ChangeMap("lu_dilao")

	elseif(answer=="nokill") then 
		LuaSay("�޼᣺���¶�Ҫ������Ϊ������Կ���ȥ׷ɱ���˵�@!")




elseif(answer=="Twenda") then                 --ÿ��3�Σ�ÿ��5�֣�ÿ��20����Ŀ�����ݴ����Ŀ���ж��Ƿ������һ�֣��Ȱ�ÿ��1����  
	local Twenda=LuaQueryTask("Twenda") 
	if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
		LuaSay("��ʾ����ÿ����1�δ�����ᣬÿ�δ����Ϊ5�أ�Խ�������Ѷ�Խ�󣬽���Խ�ߡ�")
		LuaSay("��ʾ������������������@23��@0������Ϊ�Զ�@2�����ش��ֺ�����Ŀ@0��")
		LuaDelTask("Twenda")
		LuaDelTask("Twendatime")
		LuaSet("rightanswer",0)
		LuaSetTask("ddcs",0)
	end
	if(Twenda==0) then
		LuaSay("@7��1�أ�����")
		LuaSay("��ʾ����Ҫ���20�����е�@35����Ŀ@0�����ɽ���@3��2�ء�")
		AddMenuItem("@7�Ƿ����","")
		AddMenuItem("��һ��","C")
		AddMenuItem("����","giveup")
        
	elseif(Twenda==1) then   
		if(LuaQuery("zcount")<20)  then
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx1")
			AddMenuItem("@3����","fq")
			--LuaSay("������Ĵ��ⱻ��ϣ����ڽ����·���ʣ����Ŀ������ϸ�ش�")
			--TaskProcess("C")
		else
			if(LuaQuery("rightanswer")>=5) then        --1�ɹ� --5
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��1�ش��سɹ���")
				AddMenuItem("@7��ȡ����","")
				AddMenuItem("ȷ��","num1")        
			elseif(LuaQuery("rightanswer")<5) then  
				if(LuaQueryTask("Twendaa")<99)then--------����ʧ��
					LuaSay("��ʾ������ʧ�ܣ�") 
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���5����ܽ����2�ء�")
					LuaSetTask("Twenda",99) 
    			elseif(LuaQueryTask("Twendaa")==99) then-----���سɹ�  �������������
    				LuaSay("@7��2�أ����Ծ���")         --�����2�� 
					LuaSay("��ʾ����Ҫ���20�����е�@38����Ŀ@0�����ɽ���@3��3�ء�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("��һ��","A")
					AddMenuItem("����","giveup")
    			end
			end
       end
     elseif(Twenda==2) then 
		if(LuaQuery("zcount")<20)  then
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx2")
			AddMenuItem("@3����","fq")
		else
			if(LuaQuery("rightanswer")>=8) then      --2�ɹ�    8
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��2�ش��سɹ���")
				AddMenuItem("@7��ȡ����","")
				AddMenuItem("ȷ��","num2")        
			elseif(LuaQuery("rightanswer")<8) then
				if(LuaQueryTask("Twendab")<99) then-------����ʧ��
					LuaSay("��ʾ������ʧ�ܣ�") 
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���8����ܽ����3�ء�")
					LuaSetTask("Twenda",99) 
				elseif(LuaQueryTask("Twendab")==99) then-----���سɹ�  �������������
					LuaSay("@7��3�أ�����")             --�����3�� 
					LuaSay("��ʾ����Ҫ���20�����е�@310����Ŀ@0�����ɽ���@3��4�ء�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("��һ��","D")
					AddMenuItem("����","giveup")
				end
			end
        end 

            
     elseif(Twenda==3) then 
		if(LuaQuery("zcount")<20)  then
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx3")
			AddMenuItem("@3����","fq")
		else
			if(LuaQuery("rightanswer")>=10) then       --3�ɹ� 10
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��3�ش��سɹ���")
				AddMenuItem("@7��ȡ����","")
				AddMenuItem("ȷ��","num3")
			else
				if(LuaQueryTask("Twendac")<99) then
					LuaSay("��ʾ������ʧ�ܣ�") 
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���10����ܽ����4�ء�")
					LuaSetTask("Twenda",99) 
				else
					LuaSay("@7��4�أ����Ծ���")         --�����4�� 
					LuaSay("��ʾ����Ҫ���20�����е�@314����Ŀ@0�����ɽ���@3��5�ء�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("��һ��","B")
					AddMenuItem("����","giveup")
				end
			end
        end    
        
     elseif(Twenda==4) then
		if(LuaQuery("zcount")<20)  then
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx4")
			AddMenuItem("@3����","fq")
		else
			if(LuaQuery("rightanswer")>=14) then          --4�ɹ�  14
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@4��4�ش��سɹ���")
				AddMenuItem("@7��ȡ����","")
				AddMenuItem("ȷ��","num4")
			else
				if(LuaQueryTask("Twendad")<99) then
					LuaSay("��ʾ������ʧ�ܣ�") 
					LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���14����ܽ����5�ء�")
        --[[  if(LuaQueryTask("Twendatime")<2) then
					LuaDelTask("Twenda")
					LuaSay("��ʾ�����Ѿ��μӹ���"..LuaQueryTask("Twendatime").."�δ�����ᣬÿ��ɲ������2�Ρ�")
				else
					LuaSay("��ʾ�����Ѿ������˽����3�δ�����ᡣ")
					LuaSetTask("Twenda",99) 
		  end]]
					LuaSetTask("Twenda",99)
				else
					LuaSay("@7��5�أ��ٿ�")             --�����5�� 
					LuaSay("��ʾ����Ҫ���20�����е�@316����Ŀ@0��@3������ս�ɹ�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("��һ��","G")
					AddMenuItem("����","giveup")
				end 
			end 
		end
        
     elseif(Twenda==5) then
		if(LuaQuery("zcount")<20)  then
			LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("@3����","jx5")
			AddMenuItem("@3����","fq")
		else
			if(LuaQuery("rightanswer")>=16) then          --5�ɹ�     16
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����ϲ��@3��5�ش��سɹ���")
				AddMenuItem("@7��ȡ����","")
				AddMenuItem("ȷ��","num5")   
			else
				LuaSay("��ʾ�����ǿ�ϧ�����һ�ع��ܴ��ɡ�")
				LuaSay("������@3"..LuaQuery("rightanswer").."����Ŀ@0����Ҫ���16�����˳��ͨ�ء�")
				LuaSetTask("Twenda",99) 
			end
		end
        
     elseif(Twenda==99) then 
        LuaSay("��ʾ�����Ѿ��μ��˽��յĴ�����ս������������")        
     end 
     
      elseif(answer=="num1") then             --��1�ؽ���
	  local level= LuaQuery("level")
		if(level>80)then
		level=80
		end
          if(LuaQuery("rightanswer")>=5) then      --5
          if(LuaQuery("level")<20) then
          LuaAddJx("combat_exp",2000+level^2*10+level*200+LuaQuery("rightanswer")*500,"Twenda")
          else
          LuaAddJx("combat_exp",6000+level^2*10+level*600+LuaQuery("rightanswer")*2000,"Twenda")
          end
          LuaSetTask("Twendaa",99) 
          LuaDel("rightanswer")
          LuaSay("@7��2�أ����Ծ���")         --�����2�� 
          LuaSay("��ʾ����Ҫ���20�����е�@38����Ŀ@0�����ɽ���@3��3�ء�")
          AddMenuItem("@7�Ƿ����","")
          AddMenuItem("��һ��","A")
          AddMenuItem("����","giveup")
		  end
          
      elseif(answer=="num2") then             --��2�ؽ���
	  local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
          if(LuaQuery("rightanswer")>=8) then   --8
          if(LuaQuery("level")<20) then
          LuaAddJx("combat_exp",3000+level^2*20+level*300+LuaQuery("rightanswer")*500,"Twenda")
          else
          LuaAddJx("combat_exp",6000+level^2*20+level*1200+LuaQuery("rightanswer")*2000,"Twenda")
          end
          LuaDel("rightanswer")
          LuaSetTask("Twendab",99) 
          LuaDelTask("Twendaa")
          LuaSay("@7��3�أ�����")             --�����3�� 
          LuaSay("��ʾ����Ҫ���20�����е�@310����Ŀ@0�����ɽ���@3��4�ء�")
          AddMenuItem("@7�Ƿ����","")
          AddMenuItem("��һ��","D")
          AddMenuItem("����","giveup") 
          end
          
          
	elseif(answer=="num3") then             --��3�ؽ��� 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=10) then    --10
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",3000+level^2*30+level*400+LuaQuery("rightanswer")*500,"Twenda")
			else
				LuaAddJx("combat_exp",6000+level^2*30+level*1800+LuaQuery("rightanswer")*2000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaSetTask("Twendac",99) 
			LuaDelTask("Twendab")
			LuaSay("@7��4�أ����Ծ���")         --�����4�� 
			LuaSay("��ʾ����Ҫ���20�����е�@314����Ŀ@0�����ɽ���@3��5�ء�")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��һ��","B")
			AddMenuItem("����","giveup") 
		end
          
	elseif(answer=="num4") then             --��4�ؽ��� 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=14) then     --14
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",4000+level^2*30+level*500+LuaQuery("rightanswer")*600,"Twenda")
			else
				LuaAddJx("combat_exp",6000+level^2*40+level*2400+LuaQuery("rightanswer")*3000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaSetTask("Twendad",99) 
			LuaDelTask("Twendac")
			LuaSay("@7��5�أ��ٿ�")             --�����5�� 
			LuaSay("��ʾ����Ҫ���20�����е�@316����Ŀ@0��@3������ս�ɹ�")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("��һ��","G")
			AddMenuItem("����","giveup")
		end
          
	elseif(answer=="num5") then             --��5�ؽ��� 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=16) then            --16
			if(LuaQuery("level")<20) then
			LuaAddJx("combat_exp",4000+level^2*30+level*600+LuaQuery("rightanswer")*600,"Twenda")
			else
			LuaAddJx("combat_exp",6000+level^2*50+level*3000+LuaQuery("rightanswer")*4000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaDelTask("Twendad")
			LuaSetTask("Twenda",99)
			LuaSay("��ʾ���ɹ�ͨ��5�صĴ��⡣")             --�����5�� 
			--[[if(LuaQueryTask("Twendatime")<2) then
			LuaDelTask("Twenda")
			LuaSay("��ʾ�����Ѿ��μӹ���"..LuaQueryTask("Twendatime").."�δ�����ᣬÿ��ɲ������2�Ρ�")
			end ]]
		end
	      
	elseif(answer=="A") then 
		if(LuaQueryTask("Twenda")<2) then
		LuaDelTask("Twendaa")
		LuaSetTask("Twenda",2)
		LuaSet("zcount",0) 
		TaskProcess("A")
		end
      elseif(answer=="B") then 
        if(LuaQueryTask("Twenda")<4) then
        LuaDelTask("Twendac")
	    LuaSetTask("Twenda",4)
		LuaSet("zcount",0) 
        TaskProcess("B")
        end
	  elseif(answer=="C") then 
	    if(LuaQueryTask("Twenda")<1) then
	    LuaSetTask("wendaTaskday",GetCurrentDay()) 
	    LuaAddTask("Twendatime",1) 
	    LuaSetTask("Twenda",1)  
	    LuaSet("zcount",0) 
        TaskProcess("C")
        end
      elseif(answer=="D") then
        if(LuaQueryTask("Twenda")<3) then
        LuaDelTask("Twendab")
	    LuaSetTask("Twenda",3) 
		LuaSet("zcount",0) 
        TaskProcess("D")
        end
	  elseif(answer=="G") then
	    if(LuaQueryTask("Twenda")<5) then
	    LuaDelTask("Twendad")
	    LuaSetTask("Twenda",5) 
		LuaSet("zcount",0) 
        TaskProcess("G")
        end

      elseif(answer=="giveup") then
        LuaSay("��ʾ��������˴��⣬����ʲôʱ�򶼿�����������Ŷ��")

elseif(answer=="jx1") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("C")
	else
		LuaSay("����������������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx2") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("A")
	else
		LuaSay("����������������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx3") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("D")
	else
		LuaSay("����������������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx4") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("B")
	else
		LuaSay("����������������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx5") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("G")
	else
		LuaSay("����������������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="fq") then
	LuaSet("zcount",20)
	DoTalk("Twenda")




elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("�޼᣺�����ڵĵȼ���"..level.."��")
		if(level<10)then
			LuaSay("�޼᣺������@2��Դ��@0��@2����֮��@0��@2�����ǽ�@0�����񡢴��������")
		elseif(level<15)then
			LuaSay("�޼᣺���ʺ���@2��������@0��@2�嶷ɽ@0��������@2������@0��@3���幫��@0���ܲμ�@2������@0��@1����������@0Ŷ��")
			LuaSay("�޼᣺@2��������@0��@3��������@0�����@1ǧ������@0����һ���ܺõ�׬Ǯ���ᣬ@2��������@0��@3��������@0�����ܽ���@2��ֲ��@0��@3��������@0�����ܹ��򵽸�ʽ���������ӣ����ĵĸ����㣬ժ������͵@!")
			--LuaSay("�޼᣺������һ�䣬@2��������@0��@3������@0���������鵽���޵�@1�ʴ���ս@0��˭�������أ���Ŀ�Դ�Ŷ��")
		elseif(level<20)then
			LuaSay("�޼᣺�ʺ���@2�嶷ɽ@0��@2ɽկ@0��@2ɽկ@0����������")
			LuaSay("�޼᣺ÿ����@2��������@0��@3ҩƷ����@0���ﶼ��@1ÿ��ҩƷ����@0����ѵ���Ͳ��ò���@!")
		elseif(level<25)then
			LuaSay("�޼᣺�ʺ���@2������Ӫ@0��@2��Ӫǰ��@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("�޼᣺��ʱ��@2������@0@3�ʹ��@0��@1�´��Թ��@0��@2������@0@3�н�����@0����@1����Ѱ��@0ȫ��չ���������ǰ����Ŷ��")
			LuaSay("�޼᣺@2������Ӫ@0��@3����ʹ��@0���ڿ������չ���ֵĺõط�����սȺ�ۡ���չ������ˣ�ͳһָ�տɴ�")
			LuaSay("�޼᣺����֪����ʲô�𣬻��Ǹ�����ɣ���@2������@0��@3��������@0���������ܽ���@1��װ��@0��@2ϴװ������@0��@2����װ���ȼ�����@0����Щ�㶼����Ŷ@!")
		elseif(level<30)then
			LuaSay("�޼᣺�ʺ���@2��ˮ�԰�@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("�޼᣺������ͬʱҲ��Ҫ����ȥ@2�����Ͻ�@0@3�س�����@0�������������Ŷ�����˱ض����кñ�����ʱ��������߶δ�ز���һ������Ŷ@!")
		elseif(level<35)then
			LuaSay("�޼᣺�ʺ���@2μˮ֮��@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ���淨������Ŷ@!")
			LuaSay("�޼᣺������Ѿ��ҵ��������һ�룬��ô���ʱ������Դ�����������һ��ȥ@2������@0@3���幫��@0��������Ŷ����ף��������Զ�Ҹ�@!")
		elseif(level<40)then
			LuaSay("�޼᣺�ʺ���@2ʳ�˹�@0��@2�׹Ƕ�@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
		else
			LuaSay("�޼᣺�����ڵ������Ѿ��㹻����������")
		end





end
LuaSendMenu()
return 1
end 


------------�Զ����ռ��������----------------
function SelfDefGetColTask(level,collection)
--level==0ʱ�����������ɣ���0ʱֻ��ѯ���ݣ���������
array={}
--array[0]={ID,�ռ�ƷID,�ռ���NAME,TALK,��������}--ÿ��ϵ������20ͭ/
array[1]={1,"o_material_11","1��ë","ë�ǻ����ľ������",1}--����
array[2]={2,"o_material_20","1��Ƥ","Ƥ�ǻ����ľ������",1}
array[3]={3,"o_material_29","1����","���ǻ����ľ������",1}
array[4]={4,"o_material_38","1��ľ","ľ�ǻ����ľ������",1}
array[5]={5,"o_material_47","1����","���ǻ����ľ������",1}
array[6]={6,"o_material_56","1����","���ǻ����ľ������",1}
array[7]={7,"o_drug_hp1","��ɢ(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
array[8]={8,"o_drug_mp1","�ش�¶(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
array[9]={9,"o_drug_mhp1","С����(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
--����20��ǰ��ͨƷ
array[10]={10,"o_material_12","2��ë","ë�ǻ����ľ������",3}
array[11]={11,"o_material_21","2��Ƥ","Ƥ�ǻ����ľ������",3}
array[12]={12,"o_material_30","2����","���ǻ����ľ������",3}
array[13]={13,"o_material_39","2��ľ","ľ�ǻ����ľ������",3}
array[14]={14,"o_material_48","2����","���ǻ����ľ������",3}
array[15]={15,"o_material_57","2����","���ǻ����ľ������",3}
array[16]={16,"o_mix_book021","2���ϳ���","�����ͼ�������Ҫ����",1}--����Ʒ
array[17]={17,"o_mix_book022","3���ϳ���","�����ͼ�������Ҫ����",1}
array[18]={18,"o_mix_book023","4���ϳ���","�����ͼ�������Ҫ����",4}
array[19]={19,"o_mix_book024","5���ϳ���","�����ͼ�������Ҫ����",5}
--����30��ǰ��ͨƷ
array[20]={20,"o_drug_hp3","����ɢ(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[21]={21,"o_drug_mp3","����¶(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[22]={22,"o_drug_hp2","��Ҷɢ","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",3}
array[23]={23,"o_drug_hp3","����ɢ(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[24]={24,"o_drug_mp2","����¶","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",3}
array[25]={25,"o_drug_mp3","����¶(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[26]={26,"o_food01","����ʳƷ[��]","�ҵľ�Ȯ����",5}--����Ʒ
array[27]={27,"o_material_13","3��ë","ë�ǻ����ľ������",15}--����
array[28]={28,"o_material_22","3��Ƥ","Ƥ�ǻ����ľ������",15}
array[29]={29,"o_material_31","3����","���ǻ����ľ������",15}
array[30]={30,"o_material_40","3��ľ","ľ�ǻ����ľ������",15}
array[31]={31,"o_material_49","3����","���ǻ����ľ������",15}
array[32]={32,"o_material_58","3����","���ǻ����ľ������",15}
array[33]={33,"o_state053j","����֮Ѫ(+500)(�󶨵�)","Ŷ",70}
array[34]={34,"o_state056j","��ʦˮ��(+500)(�󶨵�)","Ŷ",70}
array[35]={35,"o_state001j","˫����[1Сʱ](�󶨵�)","Ŷ",70}
array[36]={36,"o_state012j","˫����[1Сʱ](�󶨵�)","Ŷ",70}
array[37]={37,"o_state065j","Ѫ��1(�󶨵�)","Ŷ",70}
array[38]={38,"o_state068j","ħ��1(�󶨵�)","Ŷ",80}
array[39]={39,"o_state008j","���������(�󶨵�)","Ŷ",80}
--����һ�㸱��Ʒ
array[40]={40,"o_mission153","��֦","����Ǽ�ֵ���ǵı���",50}
array[41]={41,"o_mission145","��","�����ǰ����ѵ�һ���Ŀ��о���",50}
array[42]={42,"o_mission018","�ƾɹŶ�","��Ҳ��֪���ⶫ�����ô�����������ֵǮ",50}
array[43]={43,"o_mission168","����","Ӫ���Լ��Ե�һ����������,�����潫����ʳ�Ŀɲ��ܺ���",50}
array[44]={44,"o_food02","����ʳƷ[��]","�ҵľ�Ȯ��֪���ĸ�С����������,��Ҫ����",50}--����������ܵõ�����Ʒ
--����ϡ��Ʒ
array[45]={45,"o_food03","����ʳƷ[��]","Ŷ",350}--��ֵƷ
array[46]={46,"o_state016y","���굤(���󶨵�)","Ŷ",120}
array[47]={47,"o_state053y","����֮Ѫ(+500)(���󶨵�)","Ŷ",250}
array[48]={48,"o_state056y","��ʦˮ��(+500)(���󶨵�)","Ŷ",250}
array[49]={49,"o_state001y","˫����[1Сʱ](���󶨵�)","Ŷ",250}
array[50]={50,"o_state012y","˫����[1Сʱ](���󶨵�)","Ŷ",250}
array[51]={51,"o_state065y","Ѫ��1(���󶨵�)","Ŷ",120}
array[52]={52,"o_state068y","ħ��1(���󶨵�)","Ŷ",130}
array[53]={53,"o_state008y","���������(���󶨵�)","Ŷ",250}
array[54]={54,"o_state017y","������+50(���󶨵�)","Ŷ",250}
array[55]={55,"o_state022y","�ǻ۷�+50(���󶨵�)","Ŷ",250}
array[56]={56,"o_state027y","���ݷ�+50(���󶨵�)","Ŷ",250}
--array[65]={65,"o_food03","����ʳƷ","Ŷ",50}
--������ֵƷ

count=56	--��������!!!�¼�array�ǵô˴�����!!!
	if(level~=0)then--0����������
		if(level<20)then--���������������չ��ʹ��
		collection=LuaRandom(9)+1
		elseif(level<30)then
		collection=LuaRandom(19)+1
		elseif(level<40)then
		collection=LuaRandom(39)+1
		elseif(level<50)then
			if(LuaQueryTask("80count")/20==floor(LuaQueryTask("80count")/20))then
			collection=LuaRandom(count)+1
			else
			collection=LuaRandom(44)+1
			end
		else		
		collection=LuaRandom(count)+1
		end
	end
	colid=array[collection][2]
	str1=array[collection][3]
	str2=array[collection][4]
	re=array[collection][5]
	return collection,colid,str1,str2,re
end
--------------------�Զ�����㽱��------------------
function SelfDefGetColEarn(rt)
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}--�齱������
if(rt==1)then--ͭ����
  --earn=150+LuaRandom(100)+2*cdata[5]+LuaQueryTask("80count")--ͭ�����޿���old
  tbearn=500+LuaQueryTask("80count")*5
  if(tbearn>3000) then
  tbearn=3000
  end
  earn=tbearn+40*cdata[5]
--	earn=300+LuaRandom(200)+40*cdata[5]+floor(LuaQueryTask("80count")/5)--����ϵ��Ϊ������Ϊ�Σ�ϵ����ԭ��Ʒ��ֵ���Ѷȶ�--����20*��25* 20100125dmz
  --if(earn>6100) then
  --earn=6100
  --end
elseif(rt==2)then--������
  exp1=30000+LuaQueryTask("80count")*100	--�������޿���
  if(exp1>60000) then
  exp1=60000
  end
  earn=LuaQuery("level")*30*cdata[5]+exp1
else
item={}
item[1]={"e_book001","e_knife001","e_shield001","e_shoes001","e_necklace001","e_earring001","e_pants001","e_head001"}
item[2]={"e_book002","e_knife002","e_shield002","e_shoes002","e_necklace002","e_earring002","e_pants002","e_head002"}
item[3]={"e_book003","e_knife003","e_shield003","e_shoes003","e_necklace003","e_earring003","e_pants003","e_head003"}
item[4]={"o_state016j","o_state053j","o_state056j","o_state065j","o_state068j"}
item[5]={"o_state022j","o_state027j","o_state077j","o_state005j","o_state034j"}
item[6]={"o_state071j","o_state074j","o_state008j","o_state012j","o_state017j"}
	if(rt==3)then--װ��
	r=LuaRandom(3)+1
	earn=item[r][LuaRandom(8)+1]
	else--����
	r=LuaRandom(3)+4
	earn=item[r][LuaRandom(5)+1]
	end
end

return earn--Ǯ,����������ƷID
end
-------------------SelfDefineFunction��������ӵ�------
function SelfDefAddScore()
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
re=cdata[5]
----------
LuaSendMenu()
return
end
-----------------��������,ͬһ�ܷ�����ֵͬ,��һ��Ϊÿ�ܵĵ�һ��
function SelfDefGetCurWeek()
return floor((floor((GetCurrentTime()+3600*8)/86400)+3)/7)
end