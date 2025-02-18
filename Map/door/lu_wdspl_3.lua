ans = {} 	
function Onleave(door_order)
local num=LuaQueryTask("task_kill/mon_116/Twdspl_2")-1+LuaQueryTask("task_kill/mon_116BT/Twdspl_2")-1	
 if(num>=20) then
    LuaDelTask("task_kill/mon_116/Twdspl_2")
    LuaDelTask("task_kill/mon_116BT/Twdspl_2")
 end		
return 1
end 