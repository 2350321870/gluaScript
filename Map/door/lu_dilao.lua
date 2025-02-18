ans = {} 	
function Onleave(door_order)	
 if(LuaQueryTask("T270")==1) then
   LuaSetTask("pks2",LuaQuery("pks"))
 end		
return 1
end 