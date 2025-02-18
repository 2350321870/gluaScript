ans = {} 	
function OnEnter()
	if(LuaQueryTask("Tfbrw")==0) then
		LuaSetTask("Tfbrw",1)
		LuaSay("提示：你已经完成了副本每日任务，可以回复副本使者了！")
		 LuaOtherSendMenu()
	end
	LuaSetTask("FBTGJL",1)
	ans.rtype = 1

return ans.rtype
end    