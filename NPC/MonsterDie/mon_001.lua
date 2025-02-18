T10_nTotalMonsterNum = 2	--ID所对应任务要杀怪物的总数用这个变量来保存
function OnDie()		
 if(LuaQueryTask("T10")==1) then	
  if(LuaQueryTask("task_kill/mon_001/T10") == 2) then
    CheckNpcStatusByMonItemID("T10","mon_001")		
   LuaSay("你已经打败并捉到了@21只巨螳@0，快去告诉@3冉闵@0这个好消息吧")
  LuaOtherSendMenu()
  end
end
return 1
end