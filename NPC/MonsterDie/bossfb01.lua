function OnDie()
if(TeamCount()>1) then
LocalMsg("�����ڵĶ���ɹ�ɱ��FB1BOSS1���Կ�����1��")
else
LuaSay("��ɹ�ɱ��FB1BOSS1���Կ�����1��")
end
LuaPublicSet("fbdata/fb01/kb1",1)
LuaOtherSendMenu()
return 1
end