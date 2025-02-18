ans = {} 	
function Onleave(door_order)		
if(LuaQuery("bjail")~= 0 )then
        ans.rtype = -1 
	LuaSay("你服刑时间没到，不能离开本地图！")
	LuaOtherSendMenu()
else
       ans.rtype = 1 
end
return ans.rtype
end 