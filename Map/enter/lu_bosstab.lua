ans = {} 	
function OnEnter()
ans.rtype = 0
if(LuaQueryTask("Tbossta")==1)then
	LuaSay("60����֮�������һ��BOSS���ɽ�����һ�أ�������ӣ�ֻ�����һ������BOSS���˲��ܽ�����һ�أ����ʵ����ǿ������ɱ������BOSS��")
	LuaSay("�뿪���߳�BOSS���������ٴβ�����ս��")
	ans.rtype = 1
else
	LuaSay("�㻹û�������BOSSŶ������Ե���BOSS��Ҳ������ӣ�����ɱBOSS��ֻ�����һ������BOSS���˲��ܽ�����һ�أ�")
end
LuaOtherSendMenu()
return ans.rtype
end