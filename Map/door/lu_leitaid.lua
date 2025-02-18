ans = {} 	
function Onleave(door_order)
	local c=LuaItemCount("o_mission165")
 	if(c>=1) then
		DelItem("o_mission165",c)
 	end
return 1
end 