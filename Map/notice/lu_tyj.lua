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
		if(LuaQueryTask("T12") ==0) then
			ShowNoticeForNewer("冉闵：来我这里@3领取极品武器@0吧，机不可失噢。@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T12") ==99 and LuaQueryTask("T10") ==0) then
  			ShowNoticeForNewer("冉闵：想知道怎么打怪吗？来我这里接取@3第一次打怪@0吧，有丰厚的奖励哦。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T10") ==1) then
  			ShowNoticeForNewer("冉闵：消灭1只巨螳就可以来找我领取@3丰厚奖励@0。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T10") ==99 and LuaQueryTask("T11")==0) then
  			ShowNoticeForNewer("冉闵：想知道你的村子出了什么事吗？到我这里来接受@3回乡@0的任务。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T11")==1) then
  			ShowNoticeForNewer("冉闵：向右走，进桃源村与老村长对话，他会给你丰厚的礼物。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 