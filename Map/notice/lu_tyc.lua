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
  			ShowNoticeForNewer("�ϴ峤�������з������˸���û����ȡ���뵽����������ȡ���˸�����")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T60")~=99 and LuaQueryTask("Txrfuli") ~=0) then
  			ShowNoticeForNewer("�������ӣ����⻹������û�����Ŷ���һ������ı��ꡣ")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T50") ~=99 and LuaQueryTask("T60")==99) then
  			ShowNoticeForNewer("�������������ˣ�����������ɣ��һ�̸���ܶ����õ�֪ʶ����Ŷ��")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		elseif(LuaQueryTask("T51") ==1) then
  			ShowNoticeForNewer("�������������߳��壬ȥ������֮�ֵ�����������İ�ҵ���������￪ʼ��")
			LuaSetTemp("T1Noticetime",GetCurrentTime())
		end
	end
	end
	end
	return 1
end 