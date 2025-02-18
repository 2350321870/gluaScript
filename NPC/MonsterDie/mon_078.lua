T901_nTotalMonsterNum =31
function OnDie()
if(LuaQueryTask("T901")==1)then
	if(LuaQueryTask("task_kill/mon_078/T901")==31)then
		CheckNpcStatusByMonItemID("T901","mon_078")
		LuaSay("你已经杀死30只@2天师邪灵@0，快到@3天师卢循@0处领取奖励吧！")
		LuaOtherSendMenu()
	end
end
return 1
end