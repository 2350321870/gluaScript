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
			ShowNoticeForNewer("����������Ը�����������һ���㽱����Ӵ~")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T92") ~=0 and LuaQueryTask("T85") ~=99) then
  			ShowNoticeForNewer("ʿ���ף�����ʲô�����ף������Ұɣ��һ����ͳһ���£�")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T93") ~=0 and LuaQueryTask("T86") ==99 and LuaQueryTask("T74") ==0) then
  			ShowNoticeForNewer("���鳤�����鳤��������Ҫ����ֻ��Ӣ�۲��ܽ�ȡ���������ɣ�")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T74") ==1) then
  			ShowNoticeForNewer("���鳤��ȥ��@4�����Ͻ�@0��@3�س�ʿ��@0�ɣ������͸���һֻ�ɰ���@3����@0Ŷ��")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end