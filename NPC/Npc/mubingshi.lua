NPCINFO = { 
serial="15" ,
base_name="mubingshi",
icon=2521,
NpcMove=2521,
name="ļ��ʹ" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="����һ�������ߵ������Ҽ��ɽ���",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
		if(LuaQueryTask("T44") == 0)  then
			AddTopSayMenuItem("��;�����顿","T44")
			havetask =1
		end
		if(LuaQueryTask("T51") ==1)then
			AddTopSayMenuItem("@2�Ӿ������顿@0","T51")
			havetask =2
		end
		if(LuaQueryTask("T44") == 1)  then
			AddTopSayMenuItem("@2��;�����顿","T44")
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
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("ļ��ʹ��վ����һ�������ߣ��������ң����ɽ���@3�����˵�@0��")
	else
		LuaSay("ļ��ʹ����@2ȷ����@0�ɽ���@3�����˵�@0����@2ȡ����@0�ɽ���@3ϵͳ�˵�@0��վ����һ�������ߣ���@2ȷ����@0�ɽ���@3�����˵�@0��") 		       
	end
		      
elseif(answer=="T44") then              ------------------------��; 
		if(LuaQueryTask("T44")==0) then
		LuaSay("ļ��ʹ�����·��ң�������Դ�帽��Ҳ������֮���ˡ����ٴ˴����������һ��ǰ������������֮���ġ�")
		LuaSay("ļ��ʹ�����������������������������㽨����ҵ��ʱ��ȥ��@4����֮��@0��@3������@0����ʼ�����;�ɡ�")
                LuaSetTask("T44",1)
		UpdateTopSay("ȥ������֮�ֵ���������")
                AddLog("��;�����顿",44)
                UpdateMenu()
		elseif(LuaQueryTask("T44")==1) then
		       LuaSay("ļ��ʹ��ȥ��@4����֮��@0��@3������@0����ʼ�����;�ɣ�����֮�־����ұ߲�Զ�ĵط���")
		       UpdateTopSay("�ʺ�����֮�ֵ�������") 
		end 



elseif(answer=="T51") then  
		if(LuaQueryTask("T51")==1) then
		LuaSay("ļ��ʹ���ã��ã��ã����䲻�ڴ�С�����β������ݣ�ֻҪ��һǻ��Ѫ�����Ǳ��ٵĵ��֡����ս�׾��͸���ɡ�")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("ļ��ʹ�����@3�˵�@0�ٵ��@33������@0�ɴ򿪱������棬@2�ڱ�����ѡ��װ��@0���ٴ�@3���@0��ѡ��@3ʹ��@0���ɴ����ˡ�")
		else
			LuaSay("ļ��ʹ����@3ȷ����@0�ٰ�@33����@0�ɴ򿪱������棬@2�ڱ�����ѡ��װ��@0����@3ȷ����@0��ѡ��@3ʹ��@0���ɴ����ˡ�")
	        end
		AddMenuItem("@7�������","")
	        AddMenuItem("��ȡ����","T51jl")
		end 
		elseif(answer=="T51jl")then	            
		       if(LuaQueryTask("T51")==1)then
				LuaSetTask("T51",99) 
				LuaAddJx("combat_exp",6300,"T51") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_clothes002",1,1,"T51")
				DelLog("51") 
				UpdateMenu() 
				UpdateNPCMenu("mengtiejiang")
				end
end
LuaSendMenu()
return 1
end 

