NPCINFO = {
serial= "43" ,--NPC id
base_name="qi01",
icon= 2533, 
NpcMove=2533, --������BIN�ļ���
name= "����" , --NPC��
--level=10 ,--����
iconaddr=1, --��Դ�ļ����ŵ�λ��,1:Ϊ������.0Ϊ�ͻ���
butt="15|15|65", --��ײ ��ײ����|��ײ����|��ɫ�ߣ���ײ����ͳ�������ֱ�Ӹ�����
--name_color = "CEFFCE" , --����ɫ��
lastsay="Ҫ��Ӵ˹���������·Ǯ��",
LuaType=1,
}

function do_talk(answer)
if (answer=="ask") then 		
		local T41 = LuaQueryTask("T41")
		if(T41 ==1 or T41 ==3 ) then
			AddTopSayMenuItem("@2������졾���顿@0","T41") 
			end 
		return 1	
	
elseif(answer=="T41") then 
		if(LuaQueryTask("T41") == 1 ) then
				LuaSay(""..LuaQueryStr("name").."���������װ����������ֵ�����") 
				LuaSay(""..LuaQueryStr("name").."���������ã��ж���") 
				LuaSay("��ʾ��������մ���˶�ҩ����������ȫ������״̬,������Σ") 
				LuaSay(""..LuaQueryStr("name").."�����Ǳ���Ҫ�����һ��ǻ�ȥ����@3ʿ����@0��") 
				LuaSetTask("T41",2) 
				UpdateTopSay("����ȥ��ʿ������") 
				AddLog("������졾���顿",41) 
				local maxhp=LuaQuery("max_hp")
	            LuaSet("hp",maxhp/10)
                FlushMyInfo("0x4")                 ------------------ˢ������ֵ
                UpdateMenu()
				UpdateNPCMenu("shibingding")
		end 
		if(LuaQueryTask("T41") == 3 ) then
				LuaSay(""..LuaQueryStr("name").."�������������ǽ�ʵ���������û�һ��ʱ��") 
				LuaSay("��ʾ����ɹ��ĸ����˴����һ��") 
				LuaSay(""..LuaQueryStr("name").."�����������ڳɹ��ˣ�����Щ@3����@0��ô����") 
				LuaSetTask("T41",4) 
				LuaGive("o_mission056",1)
				UpdateTopSay("") 
				AddLog("������졾���顿",41) 
                UpdateMenu()
				UpdateNPCMenu("shibingding")
		end 	

end
LuaSendMenu()
return 1
end	