NPCINFO = {
serial= "121" ,
base_name="shiwei02" ,
icon= 2537,
NpcMove=2537,
name= "������" ,
iconaddr=1, 
butt="10|10|54", 
name_color = "CEFFCE" ,
lastsay="��Ҫ���빬��͵ø�Ǯ",
LuaType=1,
}
function do_talk(answer)
name=LuaQueryStr("name")
if (answer=="ask") then
AddTopSayMenuItem("@7�����б�","","0")
        if(LuaQueryTask("T1000B") == 0)  then
	AddTopSayMenuItem("����ͨ��","T1000B")
	havetask ==1
	end
	if(LuaQueryTask("T730") == 0)  then
	AddTopSayMenuItem("Խ��͵Ϯ����","T730")
	havetask ==1
	end
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
elseif(answer=="T1000B") then
if(LuaQueryTask("T1000B") ==0 or LuaQueryTask("T1000B") == 88) then
	LuaSay(""..name.."����λ��ү��������Ҫ���빬��ʥ�������и����㣡")
	LuaSay("�����ң����Ȳ������ţ������ֵܷ��࣬��ôҲ����˼��˼�ɣ�")
	AddTopSayMenuItem("@7��˼��˼?","")
	AddMenuItem("����200ͭ��","YES","")
	AddMenuItem("��¸20000ͭ��","NO","")
end
elseif(answer=="YES") then
        if(LuaItemCount("coin") >= 200  ) then
		LuaGive("coin",-200,"T1000B")    
		LuaSetTask("T1000B",1)
		LuaSay("�����ң����㻹����أ��Ҷ�����ֵܣ��ǲ��ǣ��Ǻǣ��㶮�ͺã�")
		UpdateMenu()
	else
		LuaSay(""..name.."������������Я��ͭ�Ҳ���@3200@0��߶���ˡ�")
	end
elseif(answer=="NO") then
	if(LuaItemCount("coin") >= 20000  ) then
		LuaGive("coin",-20000,"T1000B")    
		LuaSetTask("T1000B",99)
		LuaSetTask("T1000A",99)
		LuaSay(""..name.."��СС��˼�����ɾ��⣬������������ֵ��Ժ��и����㣡")
		LuaSay("�����ң���ѽ�����³��ֲ��������վ��ǳ���֮��ֵ��Ǿ�����Ľ�����Ժ���빬���Ϊ�Ѹ��£�")
		LuaAdd("repute",1)
		UpdateMenu()
	else
		LuaSay(""..name.."������������Я��ͭ�Ҳ���@320000@0��߶���ˡ�")
	end
elseif(answer=="T730") then
	if(GetCurrentDay()~=LuaQueryStrTask("T730Day")) then
		LuaSetTask("T730",0)
	end 
	if(LuaQueryTask("T730")==0) then  
		LuaSay("�����ӣ���������Ϊ�������ֵ���15��ͭ����������ÿ�ս�����5000ͭ�ң��������1000���Ա��֮����֮�ģ�")
		LuaGive("coin",5000,"bprx")
		LuaSetTask("T730",1)
		LuaSetTask("T730Day",GetCurrentDay())
	end

end
LuaSendMenu()
return 1
end
