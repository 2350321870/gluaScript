function OnDie()
if(TeamCount()>1) then
LocalMsg("�����ڵĶ���ɹ�ɱ��FB1BOSS2���Կ�����2��")
else
LuaSay("��ɹ�ɱ��FB1BOSS2���Կ�����2��")
end
LuaPublicSet("fbdata/fb01/kb2",1)
LuaOtherSendMenu()
return 1
end