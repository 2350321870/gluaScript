                                                        function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
      if(LuaItemStatusNormalCount("o_mission297")>=1) then
      		DelItem("o_mission297",1)
      		LuaGive("o_mission299",1,"Tyuanx")
      		LuaSay("��ʾ��Ԫ��������@!")
		LuaOtherSendMenu()
			LuaGive("coin",200,"Tyuanx") 
		return 1                             
      else  
      	  LuaSay("��ʾ����û����Ԫ������ô���أ�")
	  LuaOtherSendMenu()
      	  return 0
      end
      		
end
