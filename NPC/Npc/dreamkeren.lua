NPCINFO = { 
serial="179" ,
base_name="dreamkeren",
icon=2561,
NpcMove=2561,
name="����" ,
iconaddr=1 ,
butt="5|5|55" ,
name_color="CEFFCE" ,
lastsay="���µ�ج��" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
	AddTopSayMenuItem("@7���ȿ���","") 
	AddTopSayMenuItem("@3�����ξ��Ŀ���","zjkr")
	AddTopSayMenuItem("����","liaotian","1") 
	return 1 

elseif(answer=="liaotian") then
	LuaSay("���ˣ�ʲôʱ�������һϯ����")
    
elseif(answer=="zjkr") then
	if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then 
		LuaSay("���ˣ�û�뵽�ǿɶ�Ĺ���ʹ�߾��ܽ����ҵ����У�ʵ�ڿɶ�")
		LuaSay("���ˣ�ֻ�д�������Ӯȡ@320���м��ۻ�ʯ@0�����ܾ��ҡ��������@320���м��ۻ�ʯ@0��ȥ�������������ɡ�")
 	else
		LuaSay("���ˣ�лл������ң���Ҫ������һ�£������Ҷ����Ŀ־壬���ȳ�ȥ��@3�ξ�ʹ��@0�콱���ɡ�")
	end
	
	
	 
end 
LuaSendMenu()
return 1
end 