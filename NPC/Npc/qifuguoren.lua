NPCINFO = { 
serial="69" ,
base_name="qifuguoren",
icon=2565,
NpcMove=2565,
name="�������" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="������᲻������",
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
	local T565=LuaQueryTask("T565")
	local T580=LuaQueryTask("T580")
	local T581=LuaQueryTask("T581")
	local T587=LuaQueryTask("T587")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_53")==1 or LuaQueryTask("Tsnpc_53")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_53")
		if(LuaQueryTask("Tsnpc_53")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_53")==1 or LuaQueryTask("Tenpc_53")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_53")
		if(LuaQueryTask("Tenpc_53")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_54")==1 or LuaQueryTask("Tsnpc_54")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_54")
		if(LuaQueryTask("Tsnpc_54")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_54")==1 or LuaQueryTask("Tenpc_54")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_54")
		if(LuaQueryTask("Tenpc_54")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T565")==1) then
		AddTopSayMenuItem("@2Ǳ�����֡����顿","T565")
		havetask2=1
	end	
	if(LuaQueryTask("T580")==2 or LuaQueryTask("T580")==1) then
		AddTopSayMenuItem("@2�������¡����顿","T580")
		if(LuaQueryTask("T580")==2 and LuaItemCount("o_mission314")==0) then
		havetask2 =1
		end
	end 
	if(LuaQueryTask("T581")==1) then
		AddTopSayMenuItem("@2����ɩ�����顿","T581")
	end


	if(LuaQueryTask("T594")==1 or LuaQueryTask("T594")==2) then
		AddTopSayMenuItem("@2���ϲѶ�����顿","T594")
		if(LuaQueryTask("T594")==1) then
		havetask2=1
		end
	end

	if(LuaQueryTask("T584")==1)then
	    AddTopSayMenuItem("@2ŤתǬ�������顿","T584")
	end 
	if(LuaQueryTask("T302")==17 and LuaQueryTask("T302Q")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302Q")
		havetask2 =1
	end 
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T583")==1)then
	    AddTopSayMenuItem("@2������ҩ�����顿","T583")
		if(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")>=1) then
			havetask2 =1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T587")==1) then
		AddTopSayMenuItem("@2����������ѭ����","T587")
		havetask4=1
	end
	if(LuaQueryTask("T582")==1) then
		AddTopSayMenuItem("@2��Ѫ���塾���顿","T582")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T580==0 and level>=34) then
		AddTopSayMenuItem("�������¡����顿","T580")
		havetask1 =1
	end
	if(T581==0 and level>=34) then
		AddTopSayMenuItem("����ɩ�����顿","T581")
		havetask1 =1
	end
	if(T587==0 and level>=33 and level<=37) then
		AddTopSayMenuItem("����������ѭ����","T587")
		havetask1=1
	end
	if(level>=37 and LuaQueryTask("T582")==0) then
		AddTopSayMenuItem("��Ѫ���塾���顿","T582")
		havetask1=1
	end	
	if(level>=36 and LuaQueryTask("T583")==0)then
	    AddTopSayMenuItem("������ҩ�����顿","T583")
	    havetask1=1
	end
	if(LuaQueryTask("T581")==99 and LuaQueryTask("T584")==0)then
	    AddTopSayMenuItem("ŤתǬ�������顿","T584")
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
--------------------------------------------------------  ���� 
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1

elseif(answer=="T302Q") then
	   if(LuaQueryTask("T302Q")==0) then
		LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
		LuaSay("������ʣ���л�������ţ�")
		DelItem("o_mission076",1)
		LuaSetTask("T302Q",99)
		UpdateMenu()
	   end

------------------------------------------------  Ǳ������
elseif(answer=="T565") then
	  if(LuaQueryTask("T565")==1) then
	    LuaSay("������ʣ���Ȼ��������һ�����ۣ�����������޲������졣")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T565jl")
	 end
elseif(answer=="T565jl") then
	if(LuaQueryTask("T565")==1) then
	        LuaSetTask("T565",99)
	        DelLog("565")
	        LuaAddJx("combat_exp",261000,"T565") --ԭ312000��173659
		LuaAddAchievementSchedule("Task_num",1)	
	        UpdateMenu()
	end


             

-------------------------------------------------- ��������
elseif(answer=="T580") then
	 if(LuaQueryTask("T580")==0) then
	 	LuaSay("������ʣ�����һ�����壬���ȥ���޼ᣬ�޼���Ȼ���������ǰ���¡�")
	    LuaSetTask("T580",1)
	    LuaGive("o_mission314",1)
	    AddLog("�������¡����顿",580)
	    UpdateMenu()
	    UpdateTopSay("ȥ������ȥ���޼�")
	elseif(LuaQueryTask("T580")==1) then
		LuaSay("������ʣ�ȥ������ȥ��@2�޼�")

	elseif(LuaQueryTask("T580")==2 and LuaItemCount("o_mission314")==0) then
	 	LuaSay("�������:ɱ���ˣ���Ϊ��Ȩ�ƾͿ��Բ�����!")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T580jl")
    end

elseif(answer=="T580jl") then
	if(LuaQueryTask("T580")==2) then
	        LuaSetTask("T580",99)      
	        LuaAddJx("combat_exp",272000,"T580")--ԭ312000��195128
		LuaAddAchievementSchedule("Task_num",1)	
	        DelLog("580")
	        UpdateMenu()
	end
------------------------------------------------------------����ɩ
elseif(answer=="T581") then
	if(LuaQueryTask("T581")==0) then
		LuaSay("�������:����ȥ���������е�@3��ڹ�@0��ȡ��@320����ڶ�@0�󽻸��ҵ�����@3�����@0�������ڸ�����Զ����")
		LuaSetTask("T581",1)
		AddLog("����ɩ�����顿",581)	
		UpdateMenu()
		UpdateTopSay("�ռ�20����ڶ�")
		UpdateNPCMenu("guifuren")
				
	elseif(LuaQueryTask("T581")==1) then
		 LuaSay("�ռ�20����ڶ���Ȼ�󽻸�������ˣ�����Ҫ���������")
	end
-----------------------------------  ��Ѫ���塾���顿
elseif(answer=="T582") then
	if(LuaQueryTask("T582")==0) then
		LuaSay(""..LuaQueryStr("name").."������û�е�������֮ǰ���ű������嶼���ǳ��������Ѫ����֪������Щʲô���壿")
		LuaSay("������ʣ���֪���𰸾�ȥ@3ʳ�˹�����30������@0��")
		LuaSetTask("task_kill/mon_032/T582",1)   ------mon_032   ����  ����ɱ�ּ�����
		LuaSetTask("T582",1)
		AddLog("��Ѫ���塾���顿",582)-------��־�����
		UpdateMenu()
	
	elseif(LuaQueryTask("T582")==1) then
  		if(LuaQueryTask("task_kill/mon_032/T582") <31) then
  			LuaSay("������ʣ��㻹û��ɱ��@330������@0���뵽@4ʳ�˹�@0����ɱ�ɣ�")
        else
         	AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T582jl")
        end
    end
elseif(answer=="T582jl")then
 	if(LuaQueryTask("T582")==1) then
 		if(LuaQueryTask("task_kill/mon_032/T582")>=31)then
 			LuaSay("������ʣ�������ô���ɱ����30�����ã���Ȼ�����������ҵ���ɩ����˼�����������������ȥ���@3�����@0��")
 			LuaDelTask("task_kill/mon_025/T582")
 			LuaAddJx("combat_exp",324900,"T582") --ԭ349000 ��272039
			LuaAddAchievementSchedule("Task_num",1)	
 			LuaGive("coin",2320,"T582")
			LuaSetTask("T582",99)
			DelLog("582")-------��־��ɾ��
			UpdateMenu()
			UpdateTopSay("ȥ���������") 
		end
	end
elseif(answer=="T594") then
	if(LuaQueryTask("T594")==1) then
		LuaSay(""..LuaQueryStr("name").."�����@3�����@0�Ѿ���ȣ�@3�����@0���������㡣")


		LuaSay("������ʣ�����˵��һ����ѧ�ʵ���ʿ������@3��Ԩ��@0���ҽ�������ȥ@4������Ƿ���@0��@3��Ԩ��@0�������������")
		LuaSetTask("T594",2)
		AddLog("���ϲѶ�����顿",594)

		UpdateMenu()       
	elseif(LuaQueryTask("T594")==2) then
		LuaSay("������ʣ���@4������Ƿ���@0��@3��Ԩ��@0")
	end
	----------------------------------------ѭ��
elseif(answer=="T587") then
		if(LuaQueryTask("T587") == 0 ) then
			if(LuaQueryStrTask("587day")~=GetCurrentDay())then
				LuaDelTask("T587num")
			end
			
				LuaSay("������ʣ���Ҷ�������Ǻ��º͵ģ������֪ʲôԭ�򣬱�òб��������˺��˲��ٹ�������")
				LuaSay("������ʣ�������ȥնɱ20ֻ@3��Ҷ��@0��ѹ��������")
				if(TeamCount()>=2)then
					LuaSay("������ʣ������������Ѿ�������ӵĺô���Ŷ@!")
				else
					LuaSay("������ʣ�����������������ܶ࣬���ȥ������������߳��ö����ļ���Ŷ@!")
				end
				LuaSetTask("T587",1)
				LuaSetTask("task_kill/mon_030/T587",1)
		      		AddLog("����������ѭ����",587)
				LuaSetTask("587day",GetCurrentDay())
				LuaAddTask("T587num",1)
		  		UpdateMenu()
		  		UpdateTopSay("��������������20ֻ��Ҷ��")

		elseif(LuaQueryTask("T587") == 1 ) then
     		if(LuaQueryTask("task_kill/mon_030/T587")>=21)then
            		LuaSay("������ʣ���л���°�æ�ˣ�����������ģ����԰��Ҷ�ѹ������һ�°ɡ�")
		    	AddMenuItem("@7�������","")
		    	AddMenuItem("��ȡ����","T587jl")
			else
		    	LuaSay("������ʣ��㻹û��ɱ��@220����Ҷ��@0�ء�")
            		UpdateTopSay("��ȥɱ20����Ҷ��")
          	end
		end

		elseif(answer=="T587jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T587")==1) then
     				if(LuaQueryTask("task_kill/mon_030/T587")>=21)then
       		 			LuaDelTask("task_kill/mon_030/T587")
		    			LuaDelTask("T587")
		    			DelLog("587")
					local jingyan
					local bexp
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
					if(TeamCount()>=2)then
						LuaSay("@1��ʾ�������Ӿ���ӳ�")
						bexp=82765
					else
						bexp=44765
					end
					if(LuaQueryTask("T587num")<=30)then
						jingyan=(bexp+level^2*20)
						LuaGive("coin",money,"T587")
					else
						LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
						jingyan=(bexp+level^2*20)/2
					end
					
		    				LuaAddJx("combat_exp",jingyan,"T587")
						if(LuaQueryTask("T587_a")==0) then
							LuaAddAchievementSchedule("Task_num",1)
							LuaSetTask("T587_a",99)
						end

		    			UpdateMenu()
		    		end
			end
------------------------    ֧��

elseif(answer=="T583") then
	if(LuaQueryTask("T583")==0) then
		LuaSay("������ʣ����常�������Ϊ�޼���ƥ�򱼲�һ�����Ϳ๦�ߣ����ȴ�������³���������ҪΪ���常�����κ��޼���ƥ��ӵ������.")
		LuaSay("������ʣ�������ԹŴ���һ��������ҩ���ط����Ƴɺ�綾�ޱȣ�")
		LuaSay("������ʣ�������Ӣ��ȥ�ռ����ֲ��ϣ�һ����@3�����@0���ϵ�@2��Ҷ����@010�ݣ�����һ����@3����ħ��@0���ϵ�@2�綾Ģ��@0һ��")
		LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
		LuaSetTask("T583",1)      -------��־�����
		AddLog("������ҩ�����顿",583)
		UpdateMenu()
	elseif(LuaQueryTask("T583")==1) then
		if(LuaItemCount("o_mission326")<10 and LuaItemCount("o_mission327")<1) then
			LuaSay("��@4��������@0ɱ������ռ�10��@2��Ҷ����@0���ٵ�@4�׹Ƕ��@0ɱ����ħ���ռ�һ��@2�綾Ģ��")
			LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
		elseif(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")<1) then
			LuaSay("������ʣ���Ҷ���۹��ˣ���@4�׹Ƕ��@0ɱ@3����ħ��@0�ռ�һ��@2�綾Ģ��@0")
			LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
		elseif(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")>=1) then
			LuaSay("������ʣ���лӢ��Ϊ�ұ����������������ҩΪ���常����")
			AddMenuItem("@7�������","")
	    		AddMenuItem("��ȡ����","T583jl") 
		end
	end
elseif(answer=="T583jl")then  -----------------������
	if(LuaQueryTask("T583")==1) then
		LuaSetTask("T583",99)
		DelItem("o_mission326",10)---------ɾ������ 
		DelItem("o_mission327",1)
		LuaAddJx("combat_exp",295000,"T583") --ԭ335000��244292
		LuaGive("coin","10000","T583")
		LuaAddAchievementSchedule("Task_num",1)	
        DelLog("583")        -------��־��ɾ��		
        UpdateMenu()
	end
elseif(answer=="T584") then
	if(LuaQueryTask("T584")==0) then
		LuaSay("������ʾ�ɥ��˵�����Һް������ҿ�Ҫ�Ѷ�ҩ���úõ�ʱ��Զ��ͻȻ����һ����������פĿ�������޼���ƥ����������ˣ�")
		LuaSay("������ʣ��޼����������ң����򸶼Ҳ��ӣ������ս��ʼ���ڻ���֮ʱ���������������ץ��")
		LuaSay("������ʣ����������������������ʱ�򣬹����������һ��а��ŤתǬ��,��Ȼ������һ���֧�������ˣ�������Ӣ��������֧��������ʮ�깦����@2ǧ����@0ȥ��л@3�����@0��")
		LuaGive("o_mission332",1)
		LuaSetTask("T584",1)
		AddLog("ŤתǬ�������顿",584)-------��־�����
		UpdateMenu()
		UpdateNPCMenu("guifuren")
	elseif(LuaQueryTask("T584")==1) then
			LuaSay("��@4��������@0��@3�����@0")
	end



--------------------------------- 
	

elseif(answer=="liaotian") then
	LuaSay("������ʣ�����ɱ���常���Ҷ����˳�!") 
		       
-------------------------------------------------	
elseif(answer=="Tsnpc_53")then
	if(LuaQueryTask("Tsnpc_53")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("������ʣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_53",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_53")==2)then
		LuaSay("������ʣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_53")then
	if(LuaQueryTask("Tenpc_53")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ʣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_53",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_53")==2)then
		LuaSay("������ʣ����Ѿ������ˣ����ȥ��ȡ������")
	end	

--
elseif(answer=="Tsnpc_54")then
	if(LuaQueryTask("Tsnpc_54")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("������ʣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_54",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_54")==2)then
		LuaSay("������ʣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_54")then
	if(LuaQueryTask("Tenpc_54")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ʣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_54",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_54")==2)then
		LuaSay("������ʣ����Ѿ������ˣ����ȥ��ȡ������")
	end	
end
LuaSendMenu()
return 1
end 

