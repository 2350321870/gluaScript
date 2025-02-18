ans = {} 	
function CheckNotice()
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=90) then
			if(LuaQueryTemp("temp") == 0)then
				LuaSetTemp("temp",1)
				LuaSetTemp("T1Noticetime",GetCurrentTime())
				return 1
			end
	if((GetCurrentTime() - LuaQueryTemp("T1Noticetime"))>=600) then
	if(LuaQuery("level")<=10) then
		if(LuaQueryTask("T1") ==99 and LuaQueryTask("Tqietu") ==0) then
  			ShowNoticeForNewer("南宫若兰：@2向右@0进入@4桃源径@0找@3冉闵@0对话，他会送你@2极品武器@0哦。@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 