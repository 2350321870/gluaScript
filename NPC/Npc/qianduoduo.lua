NPCINFO = { 
serial="311" ,
base_name="qianduoduo",
icon=2510,
NpcMove=2510,
name="Ǯ��ࡾ����ʹ�ߡ�" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="˯��˯����Ȼ�ѣ���Ǯ�����ֳ��",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@3�ڱ���ͼ����","wb")


------------------------------------------------
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
------------------------------------------------

elseif(answer=="liaotian") then
	LuaSay("Ǯ��ࣺ˯��˯����Ȼ�ѣ���Ǯ�����ֳ�")
elseif(answer=="wb") then  
--[[SetAllTeamMemberValueTask
QueryAllTeamMemberTaskSuccess
AddAllTeamMemberValueTask ]]
	if(TeamCount()>=1  ) then
		if(QueryAllTeamMemberTaskSuccess("FBTGJL",10)==1 or true)then  -------------����boss��ͼʱ���ñ�ǻ���1
		LuaSay("Ǯ��ࣺ���ģʽ����ȫ���˺�����ɱboss������ȫ���˿��Խ���@3�ڱ�����@0��")
		LuaSay("Ǯ��ࣺ@3�ڱ�����@0���㽫��@36�λ���@0��������ȥ��ͼ�еĲƱ������κ�������Ч�������ᱻǿ�ƴ��ͻسǣ�")
		LuaSetTask("FBTG",10)
		AddMenuItem("@7�����б�","")
		AddMenuItem("@3����ȥ�ڱ�","go_fbwb")
		else
		LuaSay("Ǯ��ࣺ���ź���ֻ��@33������@0�Ķ��飬����ȫ����@3��boss��ͼ��ɱ��boss@0���ܽ����ڱ���ͼ��")
		LuaSay("Ǯ��ࣺһ����@3��boss��ͼ��ɱ��boss@0��ʱ��Ҫ�����˲���@3��boss��ͼ@0���ᱻ��Ϊ���Ž�Ķ��飬��ʧȥ���ν����ڱ���ͼ�Ļ��ᣡ")
		end 
	else
	LuaSay("Ǯ��ࣺ���ź���ֻ��@33������@0�Ķ��飬����ȫ����@3��boss��ͼ��ɱ��boss@0���ܽ����ڱ���ͼ��")
	end 
    
elseif(answer=="go_fbwb") then 
	ChangeMap("lu_fbwb")
	


end
LuaSendMenu()
return 1
end 
