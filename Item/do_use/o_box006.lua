function do_use()
if(LuaFreeBag()<3)then	LuaShowNotify("请至少保有@23@0格背包空间")	return 0 end
	local rf=LuaRandom(4)
	if(LuaQuery("onlinetime")>=7200)then	
	LuaSay("温馨提示：您已经在线超过2小时，如果您未满18周岁或尚未绑定手机号验证身份，可能会受到防沉迷系统的限制。")
	LuaSay("温馨提示：建议您去@4建康南郊@0的@3守城士兵@0处@2绑定手机号@0，或者下线稍事休息！感谢您对统一ol的支持，祝您游戏愉快！")
	end						
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox006")------防
			LuaGive("o_state008j",2,"Tbox006")------经
		elseif(rf==1)then
			LuaGive("o_state008j",2,"Tbox006")------经
			LuaGive("o_state065j",1,"Tbox006")----小血池
		elseif(rf==2)then
			LuaGive("o_state001j",LuaRandom(2)+1,"Tbox006")------攻
			LuaGive("o_state008j",2,"Tbox006")------经
		elseif(rf==3)then
			LuaGive("o_state008j",2,"Tbox006")------经
			LuaGive("o_state068j",1,"Tbox006")----小魔池
		end

LuaOtherSendMenu()
return 1
end
