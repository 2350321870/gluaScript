NPCINFO = { 
serial="137" ,
base_name="juqumengxun",
icon=2584,
NpcMove=2584,
name="������ѷ" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��������,��������;������˼,��ѩ����",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0

	if(LuaQuery("level")>=75 and LuaQueryTask("T950")==0)then
		AddTopSayMenuItem("���������ѭ����","T950")
		havetask1=1
	end
	if(LuaQuery("level")>=77 and LuaQueryTask("T951")==0)then
		AddTopSayMenuItem("���ֽ��᡾ѭ����","T951")
		havetask1=1
	end
	
	if(LuaQueryTask("T950")>0)then
		AddTopSayMenuItem("@2���������ѭ����","T950")
		havetask4=1
	end
	
	
	if(LuaQueryTask("T951")>0)then
		AddTopSayMenuItem("@2���ֽ��᡾ѭ����","T951")
		havetask4=1
	end

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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("������ѷ���ҵ����������������ƶˣ���һλ��Ů%����&*��OO���㶮��!") 
	
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>���������ѭ����
elseif(answer=="T950")then
	if(LuaQueryStrTask("950day")~=GetCurrentDay())then
			LuaDelTask("T950num")
	end
	if(LuaQueryTask("T950")==0)then
		LuaSay("������ѷ�����������о��������꣬����ҵ�һ�����͵�@3���@0��������������30ֻ@3���@0����һ�����ǵ�����")
		LuaSetTask("task_kill/mon_065/T950",1)
		LuaSetTask("T950",1)
		LuaAddTask("T950num",1)
		LuaSetTask("950day",GetCurrentDay())
		AddLog("���������ѭ����",950)
		UpdateMenu()
	elseif(LuaQueryTask("T950")==1)then
		local a = LuaQueryTask("task_kill/mon_065/T950") - 1
		if(a >= 30)then
			LuaSay("������ѷ���ɵ���Щ͵�������Ҿͷ��Ķ��ˡ�")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T950jl")
		else
			LuaSay("������ѷ��������ɱ��@3���@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T950jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T950")==1 and LuaQueryTask("task_kill/mon_065/T950")>=31)then
			local money
			local jy
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
			LuaDelTask("task_kill/mon_065/T950")
			if(LuaQueryTask("T950num")<=30)then
				LuaGive("coin",money,"T950")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T950")
			if(LuaQueryTask("T950_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T950_a",99)
			end
			LuaDelTask("T950")
			DelLog("950")
			UpdateMenu()
			
		end



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>���ֽ��᡾ѭ����
elseif(answer=="T951")then
	if(LuaQueryStrTask("951day")~=GetCurrentDay())then
			LuaDelTask("T951num")
	end
	if(LuaQueryTask("T951")==0)then
		LuaSay("������ѷ����������ֵ�@3����@0�Ѿ��൱�����ͣ��Ѿ�Σ�������ص����ڣ���������ȥ����30ֻ@3����@0�����һ㱨")
		LuaSetTask("task_kill/mon_066/T951",1)
		LuaSetTask("T951",1)
		LuaAddTask("T951num",1)
		LuaSetTask("951day",GetCurrentDay())
		AddLog("���ֽ��᡾ѭ����",951)
		UpdateMenu()
	elseif(LuaQueryTask("T951")==1)then
		local a = (LuaQueryTask("task_kill/mon_066/T951")-1)
		if(a>=30)then
			LuaSay("������ѷ���ɵ���Щ͵�������Ҿͷ��Ķ��ˡ�")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T951jl")
		else
			LuaSay("������ѷ��������ɱ��@3����@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T951jl")then
		local level=LuaQuery("level")
			if(level>80)then
				level=80
			end
		if(LuaQueryTask("T951")==1 and LuaQueryTask("task_kill/mon_066/T951")>=31)then
			local money
			local jy
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
			LuaDelTask("task_kill/mon_066/T951")
			if(LuaQueryTask("T951num")<=30)then
				LuaGive("coin",money,"T951")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T951")
			if(LuaQueryTask("T951_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T951_a",99)
			end
			LuaDelTask("T951")
			DelLog("951")
			UpdateMenu()
			
		end


		       
end
LuaSendMenu()
return 1
end 

