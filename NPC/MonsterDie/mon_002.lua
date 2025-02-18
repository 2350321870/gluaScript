T32_nTotalMonsterNum = 3
function OnDie()
if(LuaQueryTask("T32")==1) then
if(LuaQueryTask("task_kill/mon_002/T32")==3) then	
     LuaSay("你已经消灭了@22只公鸡@0，快去告诉桃源村的@3长老@0这个好消息吧")
     LuaOtherSendMenu()
end
end
return 1
end