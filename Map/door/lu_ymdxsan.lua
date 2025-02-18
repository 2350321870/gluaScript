ans = {} 	
function Onleave(door_order)
 local  num=LuaQueryTask("task_kill/mon_126/Tymdxer")-1	
 if(num>=200) then
       LuaDelTask("task_kill/mon_126/Tymdxer")
 end		
return 1
end 