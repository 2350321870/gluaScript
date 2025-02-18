ans = {} 	
function Onleave(door_order)
  local num1=LuaQueryTask("task_kill/mon_123/Tdxcxyi")-1
  local num2=LuaQueryTask("task_kill/mon_124/Tdxcxyi")-1	
 if(num1>99 and num2>99) then
    LuaDelTask("task_kill/mon_123/Tdxcxyi")
    LuaDelTask("task_kill/mon_124/Tdxcxyi")
 end		
return 1
end 