NPCINFO = {
serial="108" ,
base_name="linyunxianzi" ,
icon=2561,
NpcMove=2561,
name="��������" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="��������Բȱ" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0    
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("Tqxzf")>=1 and LuaQueryTask("Tqxzf")<5)then
		AddTopSayMenuItem("@2��Ϧף��@0","Tqxzf")				--��Ϧף��
		havetask =2
	end 
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
elseif(answer=="liaotian") then
	LuaSay("�������ӣ�Ը�������ճɾ���")

-------------------------------------**��Ϧף��**-------------------------------------------------------
elseif(answer=="Tqxzf")then
	if(LuaQueryTask("Tqxzf")==1)then
		LuaSay("�������ӣ����������Ƕ���������ºӵƣ�����ȵ��֮·�����మ���������طꡣÿյ�ӵƶ���һ�ζ��˵Ĺ��£�ÿ�����¶����మ���������ػ�")
		LuaSay("�������ӣ�����������������֮�ˣ�������һ��ף�����ǰɣ�")
		LuaSay("�������ӣ���ף��֮ǰ�����ȵ�@3���幫��@0�����@3��Ϧף��@0�˵����ش𼸵��й���Ϧ�����⣡")
		LuaSay("��ʾ�����һ���⣬�л�����@3ϲȵ��ë@0��ӵ��@3ϲȵ��ë@0���������@3õ�廨��@0���ʱ���м��ʻ�����ش�Ŷ��")
		LuaSay("��ʾ��һֱ�����߾���ȥ��������@!")
		LuaSetTask("Tqxzf",2)
		AddLog("��Ϧף��",qxzf)	
		UpdateMenu()
	elseif(LuaQueryTask("Tqxzf")==2) then
	    LuaSay("�������ӣ��㻹û����ɻش�����Ļ�أ��쵽@3���幫��@0�������Ϧף���˵��ش�����ɣ�")
	    LuaSay("��ʾ��һֱ�����߾���ȥ��������@!")
	elseif(LuaQueryTask("Tqxzf")==3)then
		LuaSay("�������ӣ�����������ǣ���ô��ͻش����ˣ�")
		LuaSay("�������ӣ�Ϊ�˱�ʾ��������Ϻ����ģ�������źӵ�ȥ��@4���ĺ���@0��@3��������@0�ɣ���ף���������ĺ��ǣ���ÿ���˶�����ף����������յĻ��֣�")
		LuaSay("��ʾ���ߵ�@4��������@0��@3��������@0�����@2ǧ������@0���ɽ���@4���ĺ���@0")
		LuaSetTask("Tqxzf",4)
	elseif(LuaQueryTask("Tqxzf")==4 )then
		LuaSay("�������ӣ���ô��û�е�@4���ĺ���@0��@3��������@0����ȥ����")
		LuaSay("��ʾ���ߵ�@4��������@0��@3��������@0�����@2ǧ������@0���ɽ�@4�����ĺ���@0")
	end
	UpdateMenu()
end
LuaSendMenu()
return 1
end