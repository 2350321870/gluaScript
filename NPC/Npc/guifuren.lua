NPCINFO = { 
serial="70" ,
base_name="guifuren",
icon=2551,
NpcMove=2551,
name="�����" ,
iconaddr=1 ,
butt="5|5|57" ,
name_color="CEFFCE" ,
lastsay="������Ӣ��",
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
	if(LuaQueryTask("T593")==1 or LuaQueryTask("T593")==2) then
 		AddTopSayMenuItem("@2��ħ�Žǡ����顿","T593")
	end
	if(LuaQueryTask("T610")==1) then
		AddTopSayMenuItem("@2�������ġ����顿","T610")
 		havetask2=1
	end
	if(LuaQueryTask("T594")==1) then
		AddTopSayMenuItem("@2���ϲѶ�����顿","T594")
	end

	if(LuaQueryTask("T595")==1)then
		AddTopSayMenuItem("@2�������¡����顿","T595")
		if(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T597")==1)then
		AddTopSayMenuItem("@2��������2�����顿","T597")
		if(LuaItemCount("o_seed015")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T584")==1)then
		AddTopSayMenuItem("@2ŤתǬ�������顿","T584")
		havetask2=1
	end
	if(LuaQueryTask("T599")==1 or LuaQueryTask("T599")==2)then
		AddTopSayMenuItem("@2�շ��޼᡾���顿","T599")
		if(LuaQueryTask("T599")==2) then
		havetask2=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T581")==1)  then
		AddTopSayMenuItem("@2����ɩ�����顿","T581")
		if(LuaItemCount("o_mission322")>=20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T590")==1) then
		AddTopSayMenuItem("@2ѹ�ƶ��ء����顿","T590")
		if(LuaItemCount("o_mission322")>=20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T591")==1) then
		AddTopSayMenuItem("@2а����䡾���顿","T591")
		if(LuaItemCount("o_mission309") >= 20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T592")==1) then
		AddTopSayMenuItem("@2�������������顿","T592")
		if(LuaItemCount("o_mission310") == 1) then
			havetask2=1
		else
			havetask4=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	if(level>=37 and LuaQueryTask("T593")==0) then
 		AddTopSayMenuItem("��ħ�Žǡ����顿","T593")
 		havetask1=1
	end
	if(LuaQueryTask("T590")==0 and level>=34) then
		AddTopSayMenuItem("ѹ�ƶ��ء����顿","T590")
		havetask1=1
	end
	if(level>=35 and LuaQueryTask("T591")==0) then
		AddTopSayMenuItem("а����䡾���顿","T591")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T592")==0) then
		AddTopSayMenuItem("�������������顿","T592")
		havetask1=1
	end
	if(level>=39 and LuaQueryTask("T594")==0 and LuaQueryTask("T614")==99) then
		AddTopSayMenuItem("���ϲѶ�����顿","T594")
		havetask1=1
	end
	if(level>=35 and LuaQueryTask("T595")==0)then
		AddTopSayMenuItem("�������¡����顿","T595")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T597")==0 and LuaQueryTask("T595")== 99)then
		AddTopSayMenuItem("��������2�����顿","T597")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T599")==0)then
		AddTopSayMenuItem("�շ��޼᡾���顿","T599")
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
-----------------------------------------------------------
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
---------------------------------------------------------
--------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("����ˣ���ֻ��һ��Ů��!")
    
    elseif(answer=="T591") then
	if(LuaQueryTask("T591")==0) then
		LuaSay("����ˣ���������ϵ�а���޷����ƣ���Ҫ@4ʳ�˹��������ϵ�Ѫ@0����ѹ��а����")
		LuaSay("����ˣ���Ӣ��ǰ��@4ʳ�˹�@0������@3����@0ȡ��@320��ħ��֮Ѫ@0��������.")
		LuaSetTask("T591",1)
		AddLog("а����䡾���顿",591)-------��־�����
		UpdateMenu()
    elseif(LuaQueryTask("T591")==1) then
        if(LuaItemCount("o_mission309") == 0) then
        	LuaSay("����ˣ�ǰ��@4ʳ�˹�@0����@3����@0ȡ��@220��ħ��֮Ѫ@0.") 
        	UpdateTopSay("ǰ��ʳ�˹���������ȡ�÷�ħ��֮Ѫ")
        elseif(LuaItemCount("o_mission309")> 0 and LuaItemCount("o_mission309")< 20) then
			LuaSay("����ˣ������ϵ�@2ħ��֮Ѫ@0������������ȥ�ռ��ɣ�")
        elseif(LuaItemCount("o_mission309") >= 20) then
        	LuaSay("����ˣ�������ǳ���Ҳ����ô����ռ����ˣ�")
			AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T591jl")
		end
	end
elseif(answer=="T591jl")then
 	if(LuaQueryTask("T591")==1) then
		if(LuaFreeBag()>=1)then
			LuaGive("e_pants012",1,2,"591")	
			LuaAddJx("combat_exp",294000,"T591")--ԭ324000��218724
			LuaGive("coin",2000,"T591")
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission309",LuaItemCount("o_mission309"))
			LuaSetTask("T591",99)
			DelLog("591")-------��־��ɾ��
			UpdateMenu()
		else
			LuaSay("��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��Ŷ@!")
		end
	end
elseif(answer=="T592") then
	if(LuaQueryTask("T592")==0) then
		LuaSay("����ˣ��ҵĺ���@3�����@0��@3����@0ץ���ˣ�������Ӣ��ǰ��Ѱ��������")
		LuaSay("����ˣ�Ҫ����@4ʳ�˹�@0��@3����@0���ܵõ�����������@2Ѫ��@0����Ӣ�۰�Ѫ��������ң�")
      		LuaSetTask("T592",1)
		AddLog("�������������顿",592)-------��־�����
		UpdateMenu()
    elseif(LuaQueryTask("T592")==1) then
        if(LuaItemCount("o_mission310") == 0) then
        	LuaSay("����ˣ�ǰ��ʳ�˹�����@3����ȡ��Ѫ��.") 
        	UpdateTopSay("ǰ��ʳ�˹���������ȡ��Ѫ��")
        elseif(LuaItemCount("o_mission310") == 1) then
        	LuaSay("����ˣ�ԭ���Ҷ��ӱ�������ʳ�˹ȵİ׹Ƕ�֮��.") 
		AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T592jl")
		end
	end
elseif(answer=="T592jl")then
 	if(LuaQueryTask("T592")==1) then
 		LuaAddJx("combat_exp",295000,"T592")--ԭ335000��244292
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T592",99)
		DelLog("592")-------��־��ɾ��
		DelItem("o_mission310",LuaItemCount("o_mission310"))
		LuaSay("����ˣ������ܷ�@3�����һض��ӣ��Ҷ�����������@0")
		UpdateMenu()
	end
elseif(answer=="T594") then
	if(LuaQueryTask("T594")==0) then
		LuaSay("����ˣ�Ӣ�ۣ�������?")
		LuaSay(""..LuaQueryStr("name").."��@3�����@0�Ѿ�����ˣ�")
		LuaSay("����ˣ���лӢ�ۣ��������Ը���ˣ�������Ӣ��ȥ@4��������@0��@3�������@0�����������Ӣ������������")
		LuaSetTask("T594",1)
		AddLog("���ϲѶ�������顿",594)-------��־�����
		UpdateMenu()
		UpdateNPCMenu("qifuguoren")
	elseif(LuaQueryTask("T594")==1) then
		LuaSay("����ˣ���@4��������@0��@3�������@0")
	end


------------------------------------------------     


elseif(answer=="T593")then
	if(LuaQueryTask("T593")==0) then
    		LuaSay(""..LuaQueryStr("name").."������ˣ�����ͷ˵�����㻰��")
		LuaSay("����ˣ�����������ͷ����������������@3������@0��@3�޼�@0��һֻ@2����Ž�@0�����Ʒ�������ʦ����ȥ���������ɣ�")
		LuaSay(""..LuaQueryStr("name").."���ã������ȥ�������Ʒ�������ʦ���ȳ��������")
		LuaSetTask("T593",1)
		AddLog("��ħ�Žǡ����顿",593)
		UpdateMenu()
		UpdateTopSay("��������ȥ���޼�")
	elseif(LuaQueryTask("T593")==1)then
		LuaSay("����ˣ���@4������@0ȥ��@3�޼�@0����@2����Ž�@0���Ʒ�������ʦ") 
	elseif(LuaQueryTask("T593")==2)then
		LuaSay("����ˣ����������Ѿ��õ���@2����Ž�@0���²��˳٣�������ȥ@4ʳ�˹�@0��@2������ʦ@0��")
	 	
	end
------------------------------------------------
elseif(answer=="T610")  then
	if(LuaQueryTask("T610")==1) then
		LuaSay(""..LuaQueryStr("name").."�����ˣ�����@3�����@0���Ҵ�������Ų�����ת���㣬���ܰ�ȫ��")
		LuaSay("��������������������ǿݻƵ�˫�������Ľӹ�ȥ���ţ�")
		LuaSay("����ˣ��Ҷ������յأ���Ȼ������ˣ��Ҹе�����ο��@7������ȥ���Ҷ�һ��֮����") 
     		DelItem("o_mission308",1)
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T610jl")
	end
	
	elseif(answer=="T610jl") then
	if(LuaQueryTask("T610")==1) then
		LuaSay("��ܰ��ʾ:��Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װ")
		LuaAddJx("combat_exp",357000,"T610")--ԭ357000��302085
		LuaGive("e_clothes013",1,2,"T610")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaGive("coin",2000,"T610")
		LuaSetTask("T610",99)
		DelLog("610")
		UpdateMenu()
		end	
--------------------------------------------------
------------------------------------------------����ɩ
elseif(answer=="T581") then
	if(LuaQueryTask("T581")==1) then
		 if(LuaItemCount("o_mission322")>=20) then
		 LuaSay("����ˣ�����Ӣ�۳����갡!")
		 AddMenuItem("@7�������","")
		 AddMenuItem("��ȡ����","T581jl")
		 else
		 LuaSay("����ˣ��㻹û���ռ���@220����ڶ���")
		 UpdateTopSay("�ռ���20����ڶ���������")
		 end
	 end
	elseif(answer=="T581jl") then
		if(LuaQueryTask("T581")==1) then
			LuaAddJx("combat_exp",272000,"T581")--ԭ312000��195218
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission322",LuaItemCount("o_mission322"))
			LuaSetTask("T581",99)
			UpdateMenu()
			UpdateNPCMenu("qifuguoren")
			DelLog("581")       
		end
		
-----------------------------------------------  ѹ�ƶ���
elseif(answer=="T590") then
    if(LuaQueryTask("T590")==0) then
	LuaSay("�����:Ϊ�˸��ɷ򱨳���������һ��а������Ҫ��ͣ��ʹ�ö���ѹ�ƲŲ�����ʧȥ���ң�")
	LuaSay("�����:������ȥΪ���ռ�@220@0����ڶ�Ϊ�ҽⶾ��@3��ڹ�@0����Я���д�������ڶ�")
	LuaSetTask("T590",1)
	AddLog("ѹ�ƶ��ء����顿",590)
	UpdateMenu()
	UpdateTopSay("��ȥ�ռ�20����ڶ�")
   elseif(LuaQueryTask("T590")==1) then
		if(LuaItemCount("o_mission322")>=20) then
			LuaSay("����ˣ���ô����ռ����ˣ�����������!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T590jl")
		else
			LuaSay(""..LuaQueryStr("name")..":�㻹û���ռ���@220@0��@2��ڶ�@0��������ڹ־��ܹ����")
			UpdateTopSay("�ռ���20����ڶ���������")
		end
   end
	elseif(answer=="T590jl") then
	if(LuaQueryTask("T590")==1) then

		LuaAddJx("combat_exp",272000,"T590") --ԭ312000��195218
		LuaGive("coin",2000,"T590")
		LuaAddAchievementSchedule("Task_num",1)	
                LuaSetTask("T590",99)
                DelItem("o_mission322",LuaItemCount("o_mission322"))
                DelLog("590")
                UpdateMenu()
	end

                
elseif(answer=="T595") then
	if(LuaQueryTask("T595")==0) then
		LuaSay("����ˣ��뵱�꣬��֪��@3�޼�@0��@3�������@0ͬʱϲ�������ң���Ů��Ӣ�ۣ���������@3�޼�@0�������ֲ�Ը����@3�������@0�����ǣ�������һ����ڣ�")
		LuaSay("����ˣ���������ÿ������һ������ҿ���˭�������Ҿͼ޸�˭��@3�޼�@0������һ��@2Ұ�ջ�@0�����ӣ���@3�����@0��������һ��@2�ž黨@0�����ӣ�")
		LuaSay("����ˣ�Ӣ�ۿ��԰���Ūһ��@2�ž黨@0��һ��@2Ұ�ջ�@0�������������ٿ��������ֻ�������")
		LuaSetTask("T595",1)      -------��־�����
		AddLog("�������¡����顿",595)
		UpdateMenu()
	elseif(LuaQueryTask("T595")==1) then
		if(LuaItemCount("o_seed015")<1 and LuaItemCount("o_seed002")<1) then  -------mine_wseed010  �����  mine_wseed012  õ�廨
			LuaSay("�ž黨��Ұ�ջ������ӿ����ڵ����ߵ��������ϵ������������򵽡�")
	   	elseif(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")<1) then
	   		LuaSay("����ˣ�����@2Ұ�ջ�������@0!")
		elseif(LuaItemCount("o_seed015")<1 and LuaItemCount("o_seed002")>=1) then
	   		LuaSay("����ˣ�����@2�ž黨������@0!")
	   	elseif(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")>=1) then
	   		LuaSay("����ˣ���ô�����Ļ������ž黨̫�����ˣ������˽�ڣ����Ǳ�ѡ��@3�������@0")
			AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T595jl")
	    end
	end
	elseif(answer=="T595jl")then  -----------------������
	if(LuaQueryTask("T595")==1) then
		LuaSetTask("T595",99)
		DelItem("o_seed015",1)---------ɾ������
		DelItem("o_seed002",1)
		LuaAddJx("combat_exp",284000,"T595")--ԭ324000��218724
		LuaGive("coin",2000,"T595")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("595")        -------��־��ɾ��
		UpdateMenu()
	end
elseif(answer=="T597") then
 if(LuaQueryTask("T597")==0) then
 		LuaSay("����ˣ��޼���Ҷ����мѣ�Ȼ���þ������������Ҳ�֪�������Ѿ����˼��ң���ֻ�����ε������������һ��")
		LuaSay("����ˣ���Ϊһ��Ϸ�ԣ���ʹ������������޼ᣡ����Ū�ˣ���ȴ�����޼�Ĺ��⣡�޼������������ì�ܰ�������Ǹ�ɱ�ˣ�")
		LuaSay("����ˣ������ֻ��ȥ������ǵķ�Ĺ�Ͽ�����������Ӣ�۰�����һ��@2�ž黨@0�����ӣ������������ķ�ǰ��")
		LuaSetTask("T597",1)      -------��־�����
		AddLog("��������2�����顿",597)
		UpdateMenu()
	 elseif(LuaQueryTask("T597")==1) then
	 	if(LuaItemCount("o_seed015")<1)	then
			LuaSay("�ž黨�����ӿ����ڵ����ߵ��������ϵ������������򵽡�")
		elseif(LuaItemCount("o_seed015")>=1) then
			LuaSay("����ˣ���лӢ��Ϊū�������Ը��")
			AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T597jl")
		end
	end
	elseif(answer=="T597jl")then  -----------------������
	if(LuaQueryTask("T597")==1) then
		LuaSetTask("T597",99)
		DelItem("o_seed015",1)--------ɾ������
		LuaAddJx("combat_exp",292000,"T597")--ԭ312000��244292
		LuaGive("coin",2000,"T597")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("597")        -------��־��ɾ��
		UpdateMenu()
		end
elseif(answer=="T584") then
	if(LuaQueryTask("T584")==1) then
		LuaSay("����ˣ���лӢ�ۣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T584jl")
		end
	elseif(answer=="T584jl")then  -----------------������
	if(LuaQueryTask("T584")==1) then
		LuaSetTask("T584",99)
		DelItem("o_mission332",1)--------ɾ������
		LuaAddJx("combat_exp",272000,"T584") --ԭ31200 ��195218
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("584")        -------��־��ɾ��		
		UpdateMenu()
		UpdateNPCMenu("qifuguoren")
		end 
elseif(answer=="T599") then
	if(LuaQueryTask("T599")==0) then    
 		LuaSay("����ˣ����Ҧ�ɾ�����ܣ��ҵĺ��ӻ����������У��������޼���Լ��ĺ��ӡ�")
 		LuaSay("����ˣ�����޼᲻Ը�⣬��͸����޼�˵�������Լ��ĺ��ӣ������Ҫ֤�ݣ���͸������Ȳ������Լ����Ű죬����û�취�ˡ�")
		 
 		LuaSay("����ˣ���Ӣ�۴��������޼ᣡ")
 		LuaSetTask("T599",1)      -------��־�����
		AddLog("�շ��޼᡾���顿",599)
		UpdateMenu()
	elseif(LuaQueryTask("T599")==1) then
		LuaSay("ȥ@4������@0��@3�޼�@0")
	elseif(LuaQueryTask("T599")==2) then
    		LuaSay("����ˣ���лӢ�ۣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T599jl") 
	end
	elseif(answer=="T599jl")then  -----------------������
	if(LuaQueryTask("T599")==2) then
		LuaSetTask("T599",99)
		LuaAddJx("combat_exp",305000,"T599") --ԭ335000��244292
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("599")        -------��־��ɾ��		
		UpdateMenu()
		end    	       
end
LuaSendMenu()
return 1
end 

