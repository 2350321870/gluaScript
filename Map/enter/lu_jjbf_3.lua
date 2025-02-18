ans = {} 	
function OnEnter()
ans.rtype = 0
	local num=LuaQueryTask("task_kill/mon_112/Tjjbf_2")-1
	if(num>=80) then     --------为了测试方便暂定0个 ，别忘记改回80
		--if(num>=5) then
		if(LuaCheckBuff("401")==1)  then  ---检测有没有401的buff 
			LuaDeleteBuff("401")           --------删除 
			FlushMyInfo("1")              ---------刷新角色数值
		end 
		if(LuaCheckBuff("403")==1)  then ---检测有没有401的buff 
			LuaDeleteBuff("403")           --------删除 
			FlushMyInfo("1")              ---------刷新角色数值
		end 

		LuaSay("提示：洛阳北山将在40分钟后关闭，请抓紧时间击杀姚襄！")
		if(LuaQueryTask("Tfbrw")==0) then
			LuaSetTask("Tfbrw",1)
			LuaSay("提示：你已经完成了副本每日任务，可以回复副本使者了！")
			LuaOtherSendMenu()
		end
		LuaSetTask("FBTGJL",1)
		ans.rtype=1
	else
		LuaSay("提示：你所在的队伍已经消灭的姚军士兵"..num.."个！" )
		LuaSay("提示：必须在@340分钟内@0消灭姚军士兵80个@0才能进入洛阳北山！")
	end
LuaOtherSendMenu()
return ans.rtype
end