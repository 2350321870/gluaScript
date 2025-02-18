ans = {} 	
function CheckNotice()
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=90) then
			if(LuaQueryTemp("temp") == 0)then
				LuaSetTemp("temp",1)
				LuaSetTemp("T1Noticetime",GetCurrentTime())
				return 1
			end
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=1200) then
	if(LuaQuery("level")<=10) then
		if(LuaQueryTask("T92") ==0 or LuaQueryTask("T93") ==0) then
			ShowNoticeForNewer("王主簿：您愿意来帮我吗？我会给你奖励的哟~")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T92") ~=0 and LuaQueryTask("T85") ~=99) then
  			ShowNoticeForNewer("士兵甲：还有什么不明白？来找我吧，我会教你统一天下！")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T93") ~=0 and LuaQueryTask("T86") ==99 and LuaQueryTask("T74") ==0) then
  			ShowNoticeForNewer("田伍长：本伍长这里有重要任务，只有英雄才能接取，您快来吧！")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T74") ==1) then
  			ShowNoticeForNewer("田伍长：去找@4建康南郊@0的@3守城士兵@0吧，他会送给你一只可爱的@3坐骑@0哦！")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end