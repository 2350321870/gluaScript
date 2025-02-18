T91_nTotalMonsterNum = 7
Txhuanxing_nTotalMonsterNum = 9
Tfjtx_nTotalMonsterNum = 9
T87_nTotalMonsterNum = 4
Thx03_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
function OnDie()
if(LuaQueryTask("T91")==1) then	
  if(LuaQueryTask("task_kill/mon_003/T91") == 7) then   
  CheckNpcStatusByMonItemID("T91","mon_003")       
  LuaSay("你已经打够了@26个匪盗@0，快去找迷雾之林的@3王主簿@0吧")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T87")==2)then
	if(LuaQueryTask("task_kill/mon_003/T87") == 5) then          
		LuaSay("你已经成功的击杀了4只匪盗")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==1)then
	if(LuaQueryTask("task_kill/mon_003/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只盗匪")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_003/Txhuanxing")==9)then
		LuaSay("你已经杀死8只盗匪，完成了环形任务的第一环，去向谢安回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_003/T464")==21)then
		LuaSay("你已经杀死20只盗匪，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end	




return 1
end