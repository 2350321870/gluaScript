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
			ShowNoticeForNewer("Ƚ�ɣ���������@3��ȡ��Ʒ����@0�ɣ�������ʧ�ޡ�@!")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T12") ==99 and LuaQueryTask("T10") ==0) then
  			ShowNoticeForNewer("Ƚ�ɣ���֪����ô��������������ȡ@3��һ�δ��@0�ɣ��з��Ľ���Ŷ��")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T10") ==1) then
  			ShowNoticeForNewer("Ƚ�ɣ�����1ֻ���Ϳ�����������ȡ@3�����@0��")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T10") ==99 and LuaQueryTask("T11")==0) then
  			ShowNoticeForNewer("Ƚ�ɣ���֪����Ĵ��ӳ���ʲô���𣿵�������������@3����@0������")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T11")==1) then
  			ShowNoticeForNewer("Ƚ�ɣ������ߣ�����Դ�����ϴ峤�Ի����������������")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 