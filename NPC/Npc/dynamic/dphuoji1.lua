NPCINFO = {
serial= "27",
base_name="dphuoji1",
icon=2509,
NpcMove=2509,
name= "���̻�ơ�������", 
iconaddr=1, 
butt="15|10|63", 
name_color = "CEFFCE" , 
lastsay="���ص���Ʒ����������",
have_resell_item=1,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0	--��ɫ�ʺ�
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","") 
	if(LuaQueryTask("Tcoc")==13)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
	end
	AddTopSayMenuItem("@3����","buy1")
	AddTopSayMenuItem("@3����Ԫ��","buy2")
	AddTopSayMenuItem("@7��ȡ����","getagentmoney")
	AddTopSayMenuItem("@7��ȡ��ʱ��Ʒ","gettimeoutagent")
	AddTopSayMenuItem("@7����˵��","shuoming")
	     
--����Ϊ�޷��Ų���
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

--LuaCheckTimeOutAgentList() // ��ȡ��ʱ��Ʒ add by zzq 2011-12-23
--LuaSellYuanBao() // ����Ԫ�� add by zzq 2011-12-23
--LuaGetAgentMoney() // ��ȡ�������� add by zzq 2011-12-23
--LuaSellItem() // ������Ʒ add by zzq 2011-12-23
--elseif(answer=="buy1") then
	--LuaSellItem()
elseif(answer=="buy2") then    
	LuaSellYuanBao()
elseif(answer=="gettimeoutagent") then
	LuaCheckTimeOutAgentList()
elseif(answer=="getagentmoney") then
	LuaGetAgentMoney()
elseif(answer=="shuoming")then
	LuaSay("@7������Ʒ@0��ѡ��@3����@0����ѡ����Ҫ�����Ķ�����ȷ�������뵥�ۺ������Ϳ����ˡ�������ȡ50-5%ͭ�ҵ������ѣ����׳ɹ������5%�Ľ���˰��")
	LuaSay("@7����Ԫ��@0��ѡ��@3����Ԫ��@0�����뵥�ۺ�����������ȷ�Ϻ�Ϳ����ˡ�����Ԫ����ȡ���20-2%ͭ�ҵ������ѣ����׳ɹ������5%�Ľ���˰��")	
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@5������@0������˵��ٵ���������ˣ�������Ҽ����Ķ��������κεط����ܴ򿪣��۸���ܻ�����Ŷ��")
	else
		LuaSay("@5������@0���Ҽ�ϵͳ�˵�3���Ǽ������ˣ�������Ҽ����Ķ��������κεط����ܴ򿪣��۸���ܻ�����Ŷ��")
	end
	LuaSay("@7��ȡ����@0������������˼����Ķ������������������Ļ��ǲ����������Ķ�������@7��ȡ����@0���ɡ�")
	LuaSay("@1ע�⣡����������֮���ǲ���ͨ�ģ����Ĺ�������ȥ�Ĺ������棬��Щ�������ˣ���ʡ���鷳GM�ˡ�")
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("���̻�ƣ�����Զ�Ѱ·��Ӣ�ۿ�ʼ�������̰�")
	else
		LuaSay("���̻�ƣ����Ȱ���ȷ�ϼ���Ȼ����5�����Ϳ��Դ������ͼ�ˡ�")
	end
elseif(answer=="Tcoc")then---------------------�̼���7 Tcoc===13
	if(LuaQueryTask("Tcoc")==13)then 
		LuaSay("�����,�齨�̻���������ٿ��ǿ��ǰ�.")
		LuaSetTask("Tcoc",14)
		if(level>=25)then
			LuaGive("coin",1000,"Tcoc")
		else	
			LuaGive("coin",800,"Tcoc")
		end
		UpdateMenu()
	end

end
LuaSendMenu()
return 1
end
