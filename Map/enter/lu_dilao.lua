ans = {} 	
function OnEnter()
 if(LuaQueryTask("T341")~=1) then
 LuaSetTask("Tdilaointime",GetCurrentTime())
 end
 return 1
end