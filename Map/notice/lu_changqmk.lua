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
  			ShowNoticeForNewer("�Ϲ�������@2����@0����@4��Դ��@0��@3Ƚ��@0�Ի�����������@2��Ʒ����@0Ŷ��@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 