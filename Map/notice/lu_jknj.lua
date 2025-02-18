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
		if(LuaQueryTask("T74")==1) then
			ShowNoticeForNewer("守城士兵：与我对话，我便送你一只可爱坐骑哦。@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T74")==99 and LuaQueryTask("T21")==0) then
  			ShowNoticeForNewer("守城士兵：想了解当今天下谁主沉浮吗？来我这接取@3擎天之柱@0的任务吧。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T21")==1) then
  			ShowNoticeForNewer("守城士兵：擂台、博彩、FB、钓鱼…建康城里什么玩的都有，快去@4建康城南@0找@3谢安@0吧。向上走即可。")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 