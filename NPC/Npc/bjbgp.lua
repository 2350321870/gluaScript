NPCINFO = {
serial= "161" ,
icon= 2590 ,
NpcMove=2590,
name= "�߾�������" , 
iconaddr=1, 
butt="30|10|72", 
name_color ="CEFFCE" , 
lastsay="һֱ�������ǳ���",
LuaType=1,
}
function do_talk(answer)                          
if(answer=="ask") then
	havetask =0
	AddTopSayMenuItem("@7����˵��","")
        AddTopSayMenuItem("@3��Ҫ�ع�","4")
	AddTopSayMenuItem("����ϵͳ����","1")
	AddTopSayMenuItem("�����������","2")
	AddTopSayMenuItem("��ս����","3")
	AddTopSayMenuItem("@3ͨ����","5")
	return 1                                          


elseif(answer=="1") then
	LuaSay("ͷ����ʾ�����ǹ������֣�����ȼ���20���󣬽����Ĺ��ҽ���ӱ߾����룬�߾���ͼһֱ���ҿ��Խ���ù���������ɸù��ҵ��˱��뵽�������������ѹ���")
	LuaSay("�����ͼ���ֶ����и��������֣���ע�����Լ��Ƿ��������")
elseif(answer=="2") then
	LuaSay("�������ɱ�˵ȼ����20�ڿɲ����ܵ�PK�ͷ��������������ʹ�÷�������ͼ���޷������Լ�����Ԫ�������Լ�������Ϣ�����ܼ���������ɣ�")
elseif(answer=="3") then
	LuaSay("ÿ��20��-21����Ե��߾���ͼ�ұߵı߾�����Ա���������ָù��ң�������ֱ��ȥ����͵�ù�ש�ع���ͭ�ҽ�������ש���Ի�ȡ����ͭ�ң���ͷ���Ļ�����ȥ���ԣ�")
	LuaSay("�ڹ�ս�л�õĻ��ֿ��Ի�ȥ���ս��ʹ�ߴ���ȡ����ĳƺţ��ͽ�Ǯ�����������Ҫ�ﵽ50���ϣ�")
elseif(answer=="4") then
	LuaSay("����С�ĳ��˹����������������ҵı߾�����������ܷ����硣")
	LuaSay("��@2�������������ҹ��@0���Ǿ�@2һֱ������@0�������3000���׾����ҵ�@3�߾�����Ա@0�����Խ������������ڵĹ��ҡ�")
	LuaSay("�������Ҫ�ع�������Ϊ���ṩ2�ֲ�ͬ�Ļع���ʽ��")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("@3�ֶ����߻ع�","sd")
	AddMenuItem("@3���߻���","cs")
elseif(answer=="5") then
	LuaSay("��������ͨ��������˹���ɱ��")	
elseif(answer=="cs") then
	if(LuaItemCount("o_tgws") >=1) then 
		ChangeServer()
	else
		LuaSay("�߾�����Ա����������ͨ�����飬�������߻��������Ƿ�Ը�⹺�������飡20��@9ͨ��@0�ɻ�ȡһ����������")
                AddMenuItem("@7��������Ҫ��","")
		AddMenuItem("@5��Ҫ��������","yes1")
		AddMenuItem("@5��ʱ����","no1")
	end
	elseif(answer=="yes1")then
		if(LuaItemCount("o_gold1y") >=20) then 
			DelItem("o_gold1y",20)
			LuaGive("o_tgws",1)
		elseif(LuaItemCount("o_gold2y") >=2)then
			DelItem("o_gold2y",2)  
			LuaGive("o_tgws",1)
		else
			LuaSay("�߾�����Ա����û���㹻��@9ͨ��@0����λ�����?@9ͨ��@0�������̳��й���")
		end
	       
	elseif(answer=="no1")then
		LuaSay("û��ͨ�������ߣ�Ҫ�����������������ߣ�ѡ����ң������ߣ����ܵ��������ҡ��ص����Һ����ʹ�����磡")

	elseif(answer=="sd")then
		LuaSay("�����ڿ���@2����@0��Ȼ��@2���µ�¼@0����@2��·ѡ���б�@0��ѡ��@2���Լ�ͷ����ʾ�Ĺ�����һ��@0����·��")
		LuaSay("�����ͻص����Լ��Ĺ��ұ߾���Ȼ��@2һֱ������@0�������3000���׾����ҵ�@3�߾�����Ա@0�����Խ������Լ��Ĺ��ҡ�")
end
LuaSendMenu()
return 1
end 