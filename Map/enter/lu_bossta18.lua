ans = {} 	
function OnEnter()
ans.rtype = 0
if(LuaQueryTask("Tbossta")==17)then
	LuaSay("��ϲ���������һ�㣬����������ս�ɣ�60����֮�������BOSS��")
	LuaSay("�뿪���߳�BOSS���������ٴβ�����ս��")
	ans.rtype = 1
else
	LuaSay("�㻹û�������BOSSŶ������Ե���BOSS��Ҳ������ӣ�����ɱBOSS��ֻ�����һ������BOSS���˲��ܽ�����һ�أ�")
end
LuaOtherSendMenu()
return ans.rtype
end