ans = {} 	
function OnEnter()
ans.rtype = 0
if(LuaQueryTask("Tbossta")==0)then
	LuaSay("60����֮�������һ��BOSS���ɽ�����һ�أ�������ӣ�ֻ�����һ������BOSS���˲��ܽ�����һ�أ����ʵ����ǿ������ɱ������BOSS��")
	LuaSay("�뿪���߳�BOSS���������ٴβ�����ս��")
	ans.rtype = 1
else
	LuaSay("���¿���Ա���һ��ֻ����սһ�Σ�������Ѿ���ս���ˣ������ٽ��ˣ�")
end
LuaOtherSendMenu()
return ans.rtype
end