NPCINFO = { 
serial="136" ,
base_name="tianshiluxun",
icon=2555,
NpcMove=2555,
name="��ʦ¬ѭ" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�����Թ�˭��������ȡ�����պ���",
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
	level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")
	if(LuaQuery("level")>=71 and LuaQueryTask("T900")==0)then
		AddTopSayMenuItem("а��ȭ����ѭ����","T900")
		havetask1=1
	end
	if(LuaQuery("level")>=72 and LuaQueryTask("T901")==0)then
		AddTopSayMenuItem("��ʦа�顾ѭ����","T901")
		havetask1=1
	end
	

	if(LuaQueryTask("T900")>0)then
		AddTopSayMenuItem("@2а��ȭ����ѭ����","T900")
		havetask4=1
	end
	if(LuaQueryTask("T901")>0)then
		AddTopSayMenuItem("@2��ʦа�顾ѭ����","T901")
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
	LuaSay("��ʦ¬ѭ����е�������ע����Ҫ��������ûһ��") 
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>а��ȭ����ѭ����
elseif(answer=="T900")then
	if(LuaQueryStrTask("900day")~=GetCurrentDay())then
			LuaDelTask("T900num")
	end
	if(LuaQueryTask("T900")==0)then
		LuaSay("��ʦ¬ѭ����а���@3��Ȼȭ��@0������������ѵ�����ǣ�����ȴ���ҵĹ�����ӳԵ�һ����ʣ")
		LuaSay("��ʦ¬ѭ���������ǿ��ܻ�˽�ص��У���ȥ������Ҫ20������ӻ���")
		LuaSetTask("T900",1)
		LuaAddTask("T900num",1)
		LuaSetTask("900day",GetCurrentDay())
		AddLog("а��ȭ����ѭ����",900)
		UpdateMenu()
	elseif(LuaQueryTask("T900")==1)then
		local a = LuaItemCount("o_mission192")
		if(a >= 20)then
			LuaSay("��ʦ¬ѭ���ҵĹ�����Ӱ����۹���")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T900jl")
		else
			LuaSay("��ʦ¬ѭ����Ÿ��Ҵ�����"..a.."��������ӣ��ռ���20��һ������Ұ�")
		end
	end
	
	elseif(answer=="T900jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T900")==1)then
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
			DelItem("o_mission192",LuaItemCount("o_mission192"))
			if(LuaQueryTask("T900num")<=30)then
				LuaGive("coin",money,"T900")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T900")
			if(LuaQueryTask("T900_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T900_a",99)
			end
			LuaDelTask("T900")
			DelLog("900")
			UpdateMenu()
			
		end
	       
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��ʦа�顾ѭ����
elseif(answer=="T901")then
	if(LuaQueryStrTask("901day")~=GetCurrentDay())then
			LuaDelTask("T901num")
	end
	if(LuaQueryTask("T901")==0)then
		LuaSay("��ʦ¬ѭ��@3��ʦа��@0�ٶ��������ڴ˵�ѵ����������Ϊ����׼����������Ϊ�ȷ��Ȱ�������30ֻ@3@��ʦа��@0")
		LuaSetTask("task_kill/mon_078/T901",1)
		LuaSetTask("T901",1)
		LuaAddTask("T901num",1)
		LuaSetTask("901day",GetCurrentDay())
		AddLog("��ʦа�顾ѭ����",901)
		UpdateMenu()
	elseif(LuaQueryTask("T901")==1)then
		local a =(LuaQueryTask("task_kill/mon_078/T901")-1)
		if(a>=30)then
			LuaSay("��ʦ¬ѭ����Щ�ɶ��@3��ʦа��@0����������̫ƽ��һ��")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T901jl")
		else
			LuaSay("��ʦ¬ѭ��������ɱ��@3��ʦа��"..a.."ֻ@0����������ȡ����Ŷ")
		end
	end
	
	elseif(answer=="T901jl")then
		local level=LuaQuery("level")
		if(LuaQueryTask("T901")==1 and LuaQueryTask("task_kill/mon_078/T901")>=31)then
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
			LuaDelTask("task_kill/mon_078/T901")
			if(LuaQueryTask("T901num")<=30)then
				LuaGive("coin",money,"T901")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T901")
			if(LuaQueryTask("T901_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T901_a",99)
			end
			LuaDelTask("T901")
			DelLog("901")
			UpdateMenu()
			
		end
	
		       

end
LuaSendMenu()
return 1
end 

