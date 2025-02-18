ans = {} 	
function CheckNotice()
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=90) then
			if(LuaQueryTemp("temp") == 0)then
				LuaSetTemp("temp",1)
				LuaSetTemp("T1Noticetime",GetCurrentTime())
				return 1
			end
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=900) then
	if(LuaQuery("level")<=10) then
		if(LuaQueryTask("Txrfuli") ==0 and LuaQuery("level")<10) then
  			ShowNoticeForNewer("老村长：您还有丰厚的新人福利没有领取，请到我这里来领取新人福利。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T60")~=99 and LuaQueryTask("Txrfuli") ~=0) then
  			ShowNoticeForNewer("浣衣娘：孩子，我这还有任务没有完成哦，我会给你丰厚的报酬。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T50") ~=99 and LuaQueryTask("T60")==99) then
  			ShowNoticeForNewer("孟铁匠：年轻人，到我这边来吧，我会教给你很多有用的知识技巧哦。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T51") ==1) then
  			ShowNoticeForNewer("孟铁匠：向右走出村，去找迷雾之林的王主簿，你的霸业将从他那里开始。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 