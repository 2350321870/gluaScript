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
			ShowNoticeForNewer("�س�ʿ�������ҶԻ����ұ�����һֻ�ɰ�����Ŷ��@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T74")==99 and LuaQueryTask("T21")==0) then
  			ShowNoticeForNewer("�س�ʿ�������˽⵱������˭���������������ȡ@3����֮��@0������ɡ�")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T21")==1) then
  			ShowNoticeForNewer("�س�ʿ������̨�����ʡ�FB�����㡭��������ʲô��Ķ��У���ȥ@4��������@0��@3л��@0�ɡ������߼��ɡ�")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 