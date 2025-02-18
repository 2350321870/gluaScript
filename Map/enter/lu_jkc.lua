ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_001")==0 and LuaQuery("level")>=10 ) then
	LuaSay("恭喜你第一次来到@3建康城@0，获得成就@5游历！建康城@0！")
	LuaSetAchievementSchedule("Fristmap_jck",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_001",LuaQueryAchievementSchedule("Fristmap_jck"))
	ans.rtype = 1
	
end
--[[if(LuaQueryTask("part4_1")==0 and LuaQuery("level")>=10)then
	if((LuaQueryMoney() + LuaQueryCost())==0)then
		LuaSay("亲爱的朋友，欢迎您内测期间第一次进入建康城，系统特此奖励您@3500@0元宝，祝您游戏愉快！*@1角色重新登陆在背包中就能看到元宝信息了哦")
		LuaAddYB(1,500)
		SendMail("您获得系统赠送的500元宝","系统","","你现在可以进入元宝商城啦！你已经拥有500元宝啦！下一次领取元宝需要20级，加油！")
		LuaSetTask("part4_1",99)
		ans.rtype = 1
	end
end
if(LuaQueryTask("part4_2")==0 and LuaQuery("level")>=20)then
	if((LuaQueryMoney() + LuaQueryCost())==500)then
		LuaSay("亲爱的朋友，恭喜您到达20级，系统特此奖励您@31000@0元宝，祝您游戏愉快！*@1角色重新登陆在背包中就能看到元宝信息了哦")
		SendMail("您获得系统赠送的1000元宝","系统","","你现在可以进入元宝商城啦！你已经拥有1000元宝啦！下一次领取元宝需要30级，加油！")
		LuaAddYB(1,1000)
		LuaSetTask("part4_2",99)
		ans.rtype = 1
	end
end]]
LuaOtherSendMenu()
return ans.rtype
end