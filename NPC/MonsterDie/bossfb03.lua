function OnDie()
if(TeamCount()>1) then
LocalMsg("�����ڵĶ���ɹ�ɱ��FB1BOSS3���Կ�����3��")
else
LuaSay("��ɹ�ɱ��FB1BOSS3���Կ�����3��")
end
LuaPublicSet("fbdata/fb01/kb3",1)
LuaOtherSendMenu()
return 1
end