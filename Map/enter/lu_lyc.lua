ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_002")==0  and  LuaQuery("level")>=30) then
	LuaSay("恭喜你第一次来到@3洛阳城@0，获得成就@5游历！洛阳城@0！")
	LuaSetAchievementSchedule("Fristmap_lyc",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_002",LuaQueryAchievementSchedule("Fristmap_lyc"))
	ans.rtype = 1
end
if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then 
      LuaSay("该国闭门造车中,不对外开放!")      
      --if(LuaRandom(8)==1)then
      --LuaNotice("猥琐的外国人"..LuaQueryStr("name").."进入我洛阳意图不轨！本国人速去皇城杀之！") 
      --end      
      --LuaDel("rightanswer")    
      --ChangeMap("lu_border")
      ans.rtype=0
end
--[[if(LuaQueryTask("part4_3")==0 and LuaQuery("level")>=30)then
	if((LuaQueryMoney() + LuaQueryCost())==1500)then
		LuaSay("亲爱的朋友，恭喜您到达30级，系统特此奖励您@31500@0元宝，祝您游戏愉快！*@1角色重新登陆在背包中就能看到元宝信息了哦")
		LuaAddYB(1,1500)
		SendMail("您获得系统赠送的1500元宝","系统","","你现在可以进入元宝商城啦！你已经拥有1500元宝啦！下一次领取元宝需要40级，加油！")
		LuaSetTask("part4_3",99)
		ans.rtype = 1
	end
end
if(LuaQueryTask("part4_4")==0 and LuaQuery("level")>=40)then
	if((LuaQueryMoney() + LuaQueryCost())==3000)then
		LuaSay("亲爱的朋友，恭喜您到达40级，系统特此奖励您@32000@0元宝，祝您游戏愉快！*@1角色重新登陆在背包中就能看到元宝信息了哦")
		LuaAddYB(1,2000)
		SendMail("您获得系统赠送的2000元宝","系统","","你现在可以进入元宝商城啦！你已经拥有2000元宝啦！以后的路需要你自己努力奋斗啦！加油！")
		LuaSetTask("part4_4",99)
		ans.rtype = 1
	end
end]]
LuaOtherSendMenu()
return ans.rtype
end