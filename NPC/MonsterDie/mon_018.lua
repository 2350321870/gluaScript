T426_nTotalMonsterNum = 26
T269_nTotalMonsterNum = 101
function OnDie()
-----------------------
if(LuaQueryTask("T426")==1) then
	local count = LuaQueryTask("task_kill/mon_018/T426")
	if(count==31) then
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@2������Ӫ@0��@2��վС��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T269")==1) then
	if(LuaQueryTask("task_kill/mon_018/T269")==101) then
		LuaSay("���Ѿ��ɹ���ɱ��100��@2��������@0")
		LuaOtherSendMenu()
	end
end
return 1
end

