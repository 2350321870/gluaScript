T32_nTotalMonsterNum = 3
function OnDie()
if(LuaQueryTask("T32")==1) then
if(LuaQueryTask("task_kill/mon_002/T32")==3) then	
     LuaSay("���Ѿ�������@22ֻ����@0����ȥ������Դ���@3����@0�������Ϣ��")
     LuaOtherSendMenu()
end
end
return 1
end