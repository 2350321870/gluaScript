NPCINFO = {
serial="125" ,
base_name="tuobayi",
icon=2570,
NpcMove=2570 ,
name="�ذ���" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="����֮�п�Ļ��ǰ��հ�",
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
	local T730=LuaQueryTask("T730")
	local T731=LuaQueryTask("T731")
	local T732=LuaQueryTask("T732")
	local T733=LuaQueryTask("T733")
	local T734=LuaQueryTask("T734")
	local T735=LuaQueryTask("T735")
	local T624=LuaQueryTask("T624")
	local T625=LuaQueryTask("T625")
	local T742=LuaQueryTask("T742")
	local T744=LuaQueryTask("T744")
	local T732=LuaQueryTask("T732")
	local T737=LuaQueryTask("T737")
	local T738=LuaQueryTask("T738")
	local T744=LuaQueryTask("T744")
	local T690=LuaQueryTask("T690")
	local T691=LuaQueryTask("T691")
	local T736=LuaQueryTask("T736")
	local Tbprw10=LuaQueryTask("Tbprw10")
	AddTopSayMenuItem("@7�����б�","")
		if((LuaQueryTask("Tsnpc_57")==1 or LuaQueryTask("Tsnpc_57")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_57")
		if(LuaQueryTask("Tsnpc_57")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_57")==1 or LuaQueryTask("Tenpc_57")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_57")
		if(LuaQueryTask("Tenpc_57")==1)then
			havetask2=1
		end
	end
	if(T730 ==1  or T730 ==2) then
 		AddTopSayMenuItem("@2�ذ����ġ����顿","T730")
 		if(LuaQueryTask("T730")==2 ) then
 		havetask2 =1
 		end
	end

	if(T732 ==1 or T732 ==3) then
 		AddTopSayMenuItem("@2ϡȱҩ����顿","T732")
 		if(LuaItemCount("o_mission015")>=1) then
 		havetask2 =1
		else
		havetask4 =1
 		end
	end
	if(T733==1) then
 		AddTopSayMenuItem("@2Ԯ��̫�о������顿","T733")
	end
	 if(T734==1 or T734==2) then
 		AddTopSayMenuItem("@2��������顿","T734")
 		if(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==99 and LuaQueryTask("T734b")==99)then
 			havetask2 =1
 		end
 	end
 	if(T735==1 or T735==2) then
 		AddTopSayMenuItem("@2������񡾾��顿","T735")
 		if(LuaQueryTask("T735")==2)then
 		havetask2 =1
 		end
 	end
	if(T624==1) then
 		AddTopSayMenuItem("@2�ʱ����ҡ����顿","T624")
 		havetask2 =1
	end
	if(T625==1)  then
		AddTopSayMenuItem("@2���ո��ˡ����顿","T625")
		havetask2 =1
	end
	if(T737 ==1 or T737 ==2)  then
		AddTopSayMenuItem("@2����ҩ����顿","T737")
		if(LuaItemCount("o_mission015")>=1) then
			havetask2 =1
		end
	end
	if(T738 ==1 or T738==2 or T738==3 ) then
		AddTopSayMenuItem("@2�����ˡ����顿","T738")
		if(T738 ==1 or T738==3 ) then
		havetask2 =1
		end
	end
	if(T744==1 or T744==2 or T744==3) then
		AddTopSayMenuItem("@2���̵Ĺ��¡����顿","T744")
		if(T744==1 or T744==3) then
		havetask2 =1
		end
	end
	if(T690==2 or T690==3)then
		AddTopSayMenuItem("@2Ľ�ݴ�֮ŵ�����顿@0","T690")
		if(LuaQueryTask("T690")==2)then
		havetask2=1
		end
	end
	if(T691==2 or T691==3)then
		AddTopSayMenuItem("@2��ȶ�����顿@0","T691")
		if(LuaQueryTask("T691")==2)then
			havetask2=1
		end
	end
	if(T736==1 or T736==2)then
		AddTopSayMenuItem("@2�����޺꡾���顿@0","T736")
		havetask2 =1
	end
	if(LuaQueryTask("Tbprw10")==1 or LuaQueryTask("Tbprw10")==2) then
		AddTopSayMenuItem("@2������ʳ��ÿ�ա�","Tbprw10")
		havetask2=1
	end
	if(LuaQueryTask("T302")==18 and LuaQueryTask("T302R")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302R")
		havetask2 =1
	end 
--����Ϊ��ɫ�ʺŲ���
	if(T731 ==1) then
 		AddTopSayMenuItem("@2����������ѭ����","T731")
 		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T730 ==0 and  LuaQuery("level")>=42) then
 		AddTopSayMenuItem("�ذ����ġ����顿","T730")
 		havetask1 =1
	end
	if(T731 ==0 and LuaQueryTask("T730")==99 and  level>=41 and level<=46 ) then
 		AddTopSayMenuItem("����������ѭ����","T731")
 		havetask1 =1
	end
	if(T732 ==0 and T738==99 and level>=43) then
 		AddTopSayMenuItem("ϡȱҩ����顿","T732")
 		havetask =1
	end
	 if(T733 ==0 and  LuaQuery("level")>=43 ) then
 		AddTopSayMenuItem("Ԯ��̫�о������顿","T733")
 		havetask1 =1
	end
	if(T734==0 and  LuaQuery("level")>=42  ) then
 		AddTopSayMenuItem("��������顿","T734")
 		havetask1 =1
 	end
	if(T736==0 and level>=47)then
		AddTopSayMenuItem("�����޺꡾���顿","T736")
		havetask1=1
	end	
	if(T735==0 and  LuaQuery("level")>=55) then
 		AddTopSayMenuItem("������񡾾��顿","T735")
 		havetask1 =1
 	end
 	if(T737 ==0 and  LuaQuery("level")>=43 )  then
		AddTopSayMenuItem("����ҩ����顿","T737")
		havetask1 =1
	end
	if(LuaQueryTask("T738")==0 and T737 ==99 and level>=43) then
		AddTopSayMenuItem("�����ˡ����顿","T738")
		havetask1 =1
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
--------------------------------------------------------------------------------
if(havetask ==2)then                                         --npc�ʺ�
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")                 --npc̾��
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
--------------------------------------------------------------------------------

elseif(answer=="liaotian") then
	LuaSay("�ذ��ǣ�����׳־������������ѫ!")             --����

--------------------------------------------------------------------------------
elseif(answer=="T302R") then
	   if(LuaQueryTask("T302R")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("�ذ��ǣ������������ţ�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302R",99)
	   UpdateMenu()
	   end

elseif(answer=="T730") then
	if(LuaQueryTask("T730")==0)then
		LuaSay("�ذ��ǣ�����֮�£����Ļ���������գ������ȥ@4����ؿ�@0����һ��@3��������@0��")
		LuaSetTask("T730",1)
		AddLog("�ذ����ġ����顿",730)
		UpdateMenu()
		UpdateNPCMenu("laoweng")
	elseif(LuaQueryTask("T730")==1 ) then
 		LuaSay("�ذ��ǣ���Ϊ�λ���ȥ̽��@4����ؿ�@0��@3��������@0!")
	elseif(LuaQueryTask("T730")==2 ) then
 		LuaSay(""..LuaQueryStr("name").."�����̽���лл�㣬���㲻����˹���!")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T730jl")
 	end

		elseif(answer=="T730jl")then
			if(LuaQueryTask("T730")==2) then
			LuaSetTask("T730",99)
			LuaAddJx("combat_exp",459000,"T730")
			LuaGive("coin",3000,"T730")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("730")
			UpdateMenu()
			UpdateNPCMenu("laoweng")
			end



elseif(answer=="T731") then
	if(LuaQueryStrTask("731day")~=GetCurrentDay())then
			LuaDelTask("T731num")
	end
	if(LuaQueryTask("T731")==0)	then
		LuaSay("�ذ��ǣ�@4����ؿ�@0��@3�Ի�@0��Ժ������̲���,��������ȥ��ɱ@330ֻ�Ի�@0�������壡")
		LuaSetTask("T731",1)
		LuaSetTask("task_kill/mon_046/T731",1)
		LuaAddTask("T731num",1)
		LuaSetTask("731day",GetCurrentDay())
		AddLog("����������ѭ����",731)
		UpdateMenu()
	elseif(LuaQueryTask("T731")==1)then
		if(LuaQueryTask("task_kill/mon_046/T731")>=31) then
			LuaSay("�ذ��ǣ���л��İ�����������ʱ�����ˣ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T731jl")
		else
			LuaSay("�ذ��ǣ��㻹û��ɱ��@330ֻ�Ի�@0��")
			UpdateTopSay("ɱ��30ֻ�Ի���������")
		end
	end

	elseif(answer=="T731jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T731")==1) then
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
			LuaDelTask("task_kill/mon_046/T731")
			local jy
			if(LuaQueryTask("T731num")<=30)then
			LuaGive("coin",money,"T731")
  			 jy=(42025+level^2*20)
			else
			 LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			 jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T731")
			if(LuaQueryTask("T731_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T731_a",99)
			end
	
			LuaSetTask("T731",99)
			LuaDelTask("T731")
			DelLog("731")
			UpdateMenu()
		end



elseif(answer=="T732") then
	if(LuaQueryTask("T732")==0)	then
		LuaSay(""..LuaQueryStr("name")..":��Ĳ���ô���ˣ���Щ��ô��")
		LuaSay("�ذ��ǣ�����������һʱ���⣬���������ѣ�")
		LuaSay(""..LuaQueryStr("name")..":��Ҫ���ǣ��Ҽ���Ϊ�㵽@4������@0@3ҩƷ����@0����ȥ��ҩ��")
		LuaSetTask("T732",1)
		AddLog("ϡȱҩ����顿",732)
		UpdateMenu()
	elseif(LuaQueryTask("T732")==1)then
		LuaSay("�ذ��ǣ��㲻��˵ȥ������ҩ��")
	elseif(LuaQueryTask("T732")==3)then
		if(LuaItemCount("o_mission015")>=1) then
		LuaSay("�ذ��ǣ����������ȣ���������Ϊ����")
    		AddMenuItem("@7�������","")
    		AddMenuItem("��ȡ����","T732jl")
		else
		LuaSay("�ذ��ǣ��㻹û��ҩ�����������ѣ�Ӣ�ۣ�����ȥ���򿴰�")
		LuaSay(""..LuaQueryStr("name")..":���ٵ�@4������@0��@3ҩƷ����@0������ɡ�") 
			LuaSetTask("T732",2)
			AddLog("ϡȱҩ����顿",732)
			UpdateMenu()
		end
	end

		elseif(answer=="T732jl")then
			if(LuaQueryTask("T732")==3) then
			LuaAddJx("combat_exp",502000,"T732")
			LuaGive("coin",3000,"T732")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T732",99)
			DelLog("732")
			DelItem("o_mission015",1)
			UpdateMenu()
			end



elseif(answer=="T733") then
	if(LuaQueryTask("T733")==0)	then
		LuaSay("�ذ��ǣ����ذ��Ϻ�Ľ����ͬΪ�ʱ��壬��Ҫ��ɺ���������ͳһ��ҵ����������ȥԮ��@4̫�йž�@0��@3Ľ�ݴ�@0ͳһ�ʱ�Ľ����ɣ�")
		LuaSetTask("T733",1)
		AddLog("Ԯ��̫�йž������顿",733)
		UpdateMenu()
	elseif(LuaQueryTask("T733")==1)then
		LuaSay("�ذ��ǣ�����ô��û��ȥ��@4̫�йž���Ľ�ݴ�@0����")
	 end


elseif(answer=="T734") then
	if(LuaQueryTask("T734")==0)	then
		LuaSay("�ذ��ǣ�@3��������@0��@3��Ԩ��@0�����������ң�����˵�ϻ�����ܿɿڣ���������ȥ��ɱ@3�Ի�@0������@3�Ի���@0��") 
		LuaSetTask("T734",1)
		AddLog("��������顿",734)
		UpdateMenu()
	elseif(LuaQueryTask("T734")==1)then
		if(LuaItemCount("o_mission300")>=2)then
			LuaSay("�ذ��ǣ���������@3�Ի���@0�ֱ��͸�@4����ؿ�@0��@3��������@0��@4��Ƿ���@0��@3��Ԩ��@0")
			LuaSetTask("T734",2)
			AddLog("��������顿",734)
			UpdateMenu()
			UpdateNPCMenu("laoweng")                      
		else
			LuaSay("�ذ��ǣ��㻹û�еõ�����Ҫ��@3����Ի���@0���õ�����@3�Ի���@0�������Ұɣ�")
			UpdateTopSay("ɱ�Ի��õ�����Ի���")
		end
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")~=99)then
		LuaSay("�ذ��ǣ�����ô��û�а�@3�Ի���@0�͸�@4����ؿ�@0��@3��������@0�� ")
	
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734b")~=99)then
		LuaSay("�ذ��ǣ�����ô��û�а�@3�Ի���@0�͸�@4��Ƿ���@0��@3��Ԩ��@0�� ")
	
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==99 and LuaQueryTask("T734b")==99)then
		LuaSay("�ذ��ǣ���л����л��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T734jl")
 	end

		elseif(answer=="T734jl")then
			if(LuaQueryTask("T734")==2) then
			LuaSetTask("T734",99)
			LuaAddJx("combat_exp",459000,"T734")
			LuaGive("coin",3000,"T734")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("734")
			UpdateMenu()
			end
		 
				               

elseif(answer=="T735") then
	if(LuaQueryTask("T735")==0)	then
		LuaSay("�ذ��ǣ���ԭ���ձ��ܴݲУ���������ˮ�����֮�С�")
		LuaSay("�ذ��ǣ��㵽@4���г�@0�������ֳ�@3�ذϹ�@0���������ֽ�������Ե����ģ�")
		LuaSetTask("T735",1)
		AddLog("������񡾾��顿",735)
		AddMenuItem("�Ƿ��ͣ�","")
		AddMenuItem("��","Tshi")
		AddMenuItem("��","Tfou")
		UpdateMenu()
	elseif(LuaQueryTask("T735")==1)then
		LuaSay("�ذ��ǣ�����ô��û�е�@4���г�@0ȥ�����ֳ�@3�ذϹ�@0����")
	elseif(LuaQueryTask("T735")==2)then
		LuaSay(""..LuaQueryStr("name").."�������о������ذϹ����������������")
		LuaSay("�ذ��ǣ����������ˣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T735jl")
 	end

		elseif(answer=="T735jl")then
			if(LuaQueryTask("T735")==2) then
			LuaSetTask("T735",99)
			LuaAddJx("combat_exp",459000,"T735")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("735")
			UpdateMenu()
			end
		elseif(answer=="Tshi")then
		ChangeMap("lu_yzc")

elseif(answer=="T737") then
	if(LuaQueryTask("T737")==0) then
	    LuaSay("�ذ��ǣ�@3��������@0����Σ�ڵ�Ϧ�������������ȥ@3������@0��@2ҩƷ����@0��������@3��ɽѩ��@0")
		LuaSetTask("T737",1)
		AddLog("����ҩ����顿",737)
		AddMenuItem("�Ƿ��Զ������������ǣ�","")
		AddMenuItem("��","T")
		AddMenuItem("��","F")
   		UpdateMenu()
   	elseif(LuaQueryTask("T737")==1)then
   	    LuaSay("�ذ��ǣ�������ô��û�е�@4������@0@3ҩƷ����@0����ȥ��@3��ɽѩ��@0����")
	elseif(LuaQueryTask("T737")==2)then
		if(LuaItemCount("o_mission015")>=1) then
		LuaSay("�ذ��ǣ�����Ӣ��Ϊ�ұ���")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T737jl")
		UpdateMenu()
		else
		LuaSay("�ذ��ǣ������ҩ�أ���ôŪû�ˣ��ٵ�@4������@0@3ҩƷ����@0����ȥ��һ��@3��ɽѩ��@0")
		AddMenuItem("�Ƿ��Զ������������ǣ�","")
		AddMenuItem("��","T")
		AddMenuItem("��","F")
	end
	end
    elseif(answer=="T")then
		ChangeMap("lu_lyc")
	elseif (answer=="T737jl") then
		if(LuaQueryTask("T737")==2)then
			LuaAddJx("combat_exp",502000,"T737")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T737",99)
			DelLog("737")
			DelItem("o_mission015",1)
			UpdateMenu()
		end


elseif(answer=="T738")then
	if(LuaQueryTask("T738")==0) then
		LuaSay("�ذ��ǣ������ڸ����̰�ҩ��ʳ����10���Ӻ���ȥ���Ұɣ�")
		local time=GetCurrentTime()
		LuaSetTask("738time",time)
		AddLog("�����ˡ����顿",738)
		LuaSetTask("T738",1)
		UpdateMenu()
	elseif(LuaQueryTask("T738")==1) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("738time"))
		if(shijiancha<600)then
			LuaSay("�ذ��ǣ��һ�ι���̳�ҩ���ٹ������ɣ�")
		else
			LuaSay("�ذ��ǣ����̵Ĳ����Ѿ��ȶ���������ȥ���ҿ�������")
			LuaSetTask("T738",2)
			AddLog("�����ˡ����顿",738) 
			UpdateMenu()                   
			UpdateNPCMenu("laoweng")
		end
	elseif(LuaQueryTask("T738")==2) then
		LuaSay("�ذ��ǣ���ȥ���ҿ���@4����ؿ�@0��@3��������@0��Щû�У�")
		UpdateNPCMenu("laoweng")
	elseif(LuaQueryTask("T738")==3) then
		LuaSay(""..LuaQueryStr("name").."������ô���ˣ���������һζҩ����˵�ܻ�����Ĳ��顣")
		LuaSay("�ذ��ǣ��ǾͶ�л�ˡ�")                      
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T738jl")
		UpdateMenu()
		UpdateNPCMenu("laoweng")
	end

	elseif (answer=="T738jl") then
		if(LuaQueryTask("T738")==3)then
			LuaAddJx("combat_exp",502000,"T738")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T738",99)
			DelLog("738")
			UpdateMenu()
		end 
		 

elseif(answer=="T624") then
	if(LuaQueryTask("T624")==1)	then
		LuaSay(""..LuaQueryStr("name").."��������@3��Ԩ��@0֮��ǰ������̽��ͳһ֮����")
		LuaSay("�ذ��ǣ��������˱����ʱ����ˣ����Ժ��Ļ���Ϊ�Ƴ磬���о����꣬@3��Ԩ��@0ʵ�˸���Ҳ��@3�����ι�@0����ƽ���£�")
   		AddLog("�ʱ����ҡ����顿",624)
   		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T624jl")
	end

	    elseif(answer=="T624jl")then
			if(LuaQueryTask("T624")==1) then
				LuaSetTask("T624",99)
				LuaAddJx("combat_exp",417000,"T624")
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("624")
				UpdateMenu()
			end 



 elseif(answer=="T625") then
	if(LuaQueryTask("T625")==1)	then
		LuaSay(""..LuaQueryStr("name").."���������֣���ԭ���ձ��ܴݲУ�@2��Ԩ��@0�������к��Ļ�������������ɣ�")
		LuaSay("�ذ��ǣ�����������ʵ����@3�ذϹ�@0�Ѿ���ʼ���к��Ļ���")
   		AddMenuItem("@7�������","")                           	 
		AddMenuItem("��ȡ����","T625jl")
	end

	    elseif(answer=="T625jl")then
			if(LuaQueryTask("T625")==1) then
			LuaSetTask("T625",99)
			LuaAddJx("combat_exp",417000,"T625")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("625")
			UpdateMenu()
			end


elseif(answer=="T744") then
	if(LuaQueryTask("T744")==1)	then
		LuaSay(""..LuaQueryStr("name").."����������˵�������˺ܱ��ң���֪��������Ļ��Ǽٵģ�")
		LuaSay("�ذ��ǣ���ֻ֪������@3Ľ�ݼ���@0�����ˣ�����Ϊ�ε��ˣ�����Ҳ��֪��")
		LuaSay("�ذ��ǣ������ѯ��@4̫�йž�@0��@3Ľ�ݴ�@0����ػ��ҵ��𰸵ģ���Ҳ�������̵���������Ͻ�ȥ���ʰɣ�")
		LuaSetTask("T744",2)
   		AddLog("���̵Ĺ��¡����顿",744)
   		UpdateMenu()
	elseif(LuaQueryTask("T744")==2) then
		LuaSay("�ذ��ǣ���Ͻ�ȥ@4̫�йž�@0��@3Ľ�ݴ�@0�ʰ�")
	elseif(LuaQueryTask("T744")==3) then
		LuaSay("�ذ��ǣ�ԭ������ģ�Ҳֻ���Ժ�������һ���ˡ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T744jl")
	end
	elseif(answer=="T744jl")then
		if(LuaQueryTask("T744")==3) then
			LuaSetTask("T744",99)
			LuaAddJx("combat_exp",459000,"T744")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("744")
			UpdateMenu()
		end 



elseif(answer=="T690")then             ---------------------------------Ľ�ݴ�֮ŵ�����顿
		if(LuaQueryTask("T690")==2)then
		LuaSay(""..LuaQueryStr("name").."��@3Ľ�ݴ�@0����ת���㣬��Ը���㹲��ͳһ��ҵ,��֪���Ƿ�Ը�⣿����")
		LuaSay("�ذ��ǣ�ԭ����ˣ���ȥת��@3Ľ�ݴ�@0,�ҵȺ���������ͳһ֮�£�")
		LuaSetTask("T690",3)
		AddLog("Ľ�ݴ�֮ŵ�����顿",690)
		UpdateTopSay("ת��̫�йž���Ľ�ݴ�")
		UpdateMenu()

		elseif(LuaQueryTask("T690")==3)then
		LuaSay("�ذ��ǣ���ȥת��@4̫�йž�@0��@3Ľ�ݴ�@0��")
		end

elseif(answer=="T691")then    --------------------------------��ȶ�����顿
		if(LuaQueryTask("T691")==2)then
		LuaSay(LuaQueryStr("name").."��@3Ľ�ݴ�@0���ҹ�����������ͳһ֮�£�")
		LuaSay("�ذ��ǣ�������ʱ���ˣ��������ھ�����Ща�����ƻ�ͳһ�Ĳ���������,��ȥת��@3Ľ�ݴ�@0�ɣ�")
		LuaSetTask("T691",3)
		AddLog("��ȶ�����顿",691)
		UpdateTopSay("�ظ�Ľ�ݴ�")
		UpdateMenu()

		elseif(LuaQueryTask("T691")==3)then
		LuaSay("�ذ��ǣ���ȥ�ظ�@3Ľ�ݴ�@0��")
		end

elseif(answer=="T736")then          -----------------------------�����޺꡾���顿
		if(LuaQueryTask("T736")==0)then
			if(LuaQuery("level")>=55)then
				LuaSay("�ذ��ǣ��ϴν���а����Ӱ��ͳһ�Ĳ����������ء�@2�޺�@0����˵�������ⷽ���������أ�������Ȱ@3��̫��@0������һ��֮�±���Ͷ���ذ���ȥ��.")
				LuaSay("�ذ��ǣ�@2�޺�@0����Ӧ����@4����@0����ȥ�����ɣ�")
				LuaSetTask("T736",2)
				AddLog("�����޺꡾���顿",736)
				UpdateTopSay("ȥ�����Ҵ޺�")
				UpdateMenu()
			else
				LuaSay("�ذ��ǣ�������ʵ����̫��������ĵȼ�������55���������Ұ�")
				LuaSetTask("T736",1)
				AddLog("�����޺꡾���顿",736)
				UpdateMenu()
			end
		elseif(LuaQueryTask("T736")==1)then
			if(LuaQuery("level")>=55)then
				LuaSay("�ذ��ǣ��ϴν���а����Ӱ��ͳһ�Ĳ����������ء�@3�޺�@0����˵�������ⷽ���������أ�������Ȱ@3��̫��@0������һ��֮�±���Ͷ���ذ���ȥ�ˣ�����Ӧ����@4����@0����ȥ�����ɣ�")
				LuaSetTask("T736",2)
				AddLog("�����޺꡾���顿",736)
				UpdateTopSay("ȥ�����Ҵ޺�")
				UpdateMenu()
			else
				LuaSay("�ذ��ǣ������ڻ�̫��������ĵȼ�������55����������Ŷ@!")
			end
		elseif(LuaQueryTask("T736")==2)then
			LuaSay("�ذ��ǣ���@4����@0ȥ����@3�޺�@0����Ӧ�þ������")
		end
elseif(answer=="Tbprw10") then
if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw10")==1) then
		if(LuaItemCount("o_mission406")>=1) then
			LuaSay(""..LuaQueryStr("name").."��@3����@0֪�����������£����Ұ���Щ@3��ʳ@0�͸��㡣")
			LuaSay("�ذ��ǣ�����̫��л�ˣ����Һ���Щ����������лл@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0��")
			LuaSetTask("Tbprw10",2)
			DelItem("o_mission406",1)
			UpdateMenu()
			end
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay("�ذ��ǣ�ȥ��@4����@0��@3����@0��")
		end
	else
		LuaSay("�ذ��ǣ��µ�һ�죬�µĿ�ʼ�������������ǰ��@3������ʳ��ÿ�ա�û���@0�������Զ�ɾ����")
		LuaSay("�ذ��ǣ����������ܵ�@4����@0��@3����@0������@3������ʳ��ÿ�ա�@0�����ˣ�")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		UpdateMenu()
	end


elseif(answer=="Tsnpc_57")then
	if(LuaQueryTask("Tsnpc_57")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�ذ��ǣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_57",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_57")==2)then
		LuaSay("�ذ��ǣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_57")then
	if(LuaQueryTask("Tenpc_57")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�ذ��ǣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_57",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_57")==2)then
		LuaSay("�ذ��ǣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end