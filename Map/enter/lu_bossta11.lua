ans = {} 	
function OnEnter()
ans.rtype = 0
if(LuaQuery("level")>=80)then
if(LuaQueryTask("Tbossta")==10)then
	LuaSay("��ϲ���������һ�㣬����������ս�ɣ�60����֮�������BOSS��")
	LuaSay("�뿪���߳�BOSS���������ٴβ�����ս��")
	ans.rtype = 1
else
	LuaSay("�㻹û�������BOSSŶ������Ե���BOSS��Ҳ������ӣ�����ɱBOSS��ֻ�����һ������BOSS���˲��ܽ�����һ�أ�")
end
else
	LuaSay("80�����ϲ��ܽ���!")
end
LuaOtherSendMenu()
return ans.rtype
end