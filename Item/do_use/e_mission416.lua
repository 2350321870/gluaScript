function do_use()

if(LuaQueryStrTask("blessday")~=GetCurrentDay())then
	LuaDelTask("num")
end
--30000+level^2*60+level*60ԭ����
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
local jingyan=100000+level^2*60+level*90
if(LuaQueryTask("num")==0)then --��һ��
	LuaSay("�װ������ѣ����������Ѷ������ĵ�ף��")
	LuaAddJx("combat_exp",100000+level^2*60+level*90,"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==1)then--�ڶ���
	LuaSay("�װ������ѣ����������Ѷ������ĵ�ף�������������ڶ����յ����ѵ�ף��Ŷ�����õľ���ֻ�е�һ�ε�@2һ��@0Ŷ��")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/2),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==2)then--������
	LuaSay("�װ������ѣ����������Ѷ������ĵ�ף�������������������յ����ѵ�ף��Ŷ�����õľ���ֻ�е�һ�ε�@2����֮һ@0Ŷ��")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/3),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==3)then--���ĸ�
	LuaSay("�װ������ѣ����������Ѷ������ĵ�ף���������������Ĵ��յ����ѵ�ף��Ŷ�����õľ���ֻ�е�һ�ε�@2�ķ�֮һ@0Ŷ��")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/4),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
elseif(LuaQueryTask("num")==4)then--�����
	LuaSay("�װ������ѣ����������Ѷ������ĵ�ף������������������յ����ѵ�ף��Ŷ�����õľ���ֻ�е�һ�ε�@2���֮һ@0Ŷ��")
	LuaAddJx("combat_exp",((100000+level^2*60+level*90)/5),"Tbless")
	LuaAddTask("num",1)
	LuaOtherSendMenu()
else
	LuaSay("��ʾ��������Ѿ��յ�������ϵ�ף���ˣ��޷�������þ���Ŷ@!")
	LuaOtherSendMenu()
end
LuaSetTask("blessday",GetCurrentDay())

return 1
end