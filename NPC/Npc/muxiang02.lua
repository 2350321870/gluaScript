NPCINFO = {
serial= "54" ,
base_name="muxiang02",
icon= 2589,
NpcMove=2589,
name= "ľ��" ,
iconaddr=1, 
butt="5|5|63",
name_color = "CEFFCE" , --����ɫ��
lastsay="�˵�����������",
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("�����б�","")
	if(LuaQueryTask("T404") == 1 or LuaQueryTask("T404") == 2)then
		AddTopSayMenuItem("@2��Ȩ���ա����顿","T404")
	end
		AddTopSayMenuItem("��","dakai")
-------------------------------------------------------------------------
--[[
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1                 ]]
-------------------------------------------------------------------------

	elseif(answer=="T404")then         ------��Ȩ����
	 if(LuaQueryTask("T404") == 1)then
   		LuaSay("��ľ�䣡")
		LuaSetTask("T404",2)
		LuaGive("o_mission336",1)
 		UpdateTopSay("��ʾ���뽨���ǹ������˾����ӶԻ���")
 		AddLog("��Ȩ���ա����顿",404)
		UpdateMenu()    
		UpdateNPCMenu("xiexuan")
	 elseif (LuaQueryTask("T404") == 2)then
		LuaSay("��ʾ����@2������ȯ@0��@4�����ǹ�����@0��@3˾�����@0����")
	 end
	elseif(answer=="dakai")then
		LuaSay("��ʾ���տ���Ҳ���ѵ���ʲô������")
end 
LuaSendMenu()
return 1
end    	 	