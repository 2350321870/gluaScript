T901_nTotalMonsterNum =31
function OnDie()
if(LuaQueryTask("T901")==1)then
	if(LuaQueryTask("task_kill/mon_078/T901")==31)then
		CheckNpcStatusByMonItemID("T901","mon_078")
		LuaSay("���Ѿ�ɱ��30ֻ@2��ʦа��@0���쵽@3��ʦ¬ѭ@0����ȡ�����ɣ�")
		LuaOtherSendMenu()
	end
end
return 1
end