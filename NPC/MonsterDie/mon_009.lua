T331_nTotalMonsterNum = 16
T324_nTotalMonsterNum = 16
Tbprw004_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
T271_nTotalMonsterNum = 51
function OnDie()
-------------�׼׳� 
------------------------------------
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_009/T331") == 16) then
  LuaSay("���Ѿ�������@215���׼׳�@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T324")==1) then
  if(LuaQueryTask("task_kill/mon_009/T324") == 21) then
  LuaSay("���Ѿ�������@215���׼׳�@0����ȥ�ظ�@4��������@0��@3����@0��")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_009/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220���׼׳�@0����ȥ�ظ�@4����@0��@3����@0��")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==6)then
	if(LuaQueryTask("task_kill/mon_009/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ�׼׳�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==1)then	
	if(LuaQueryTask("task_kill/mon_009/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ�׼׳�")
		LuaOtherSendMenu()
	end
end
return 1
end