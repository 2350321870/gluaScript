                                                        function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
      if(LuaItemStatusNormalCount("o_mission297")>=1) then
      		DelItem("o_mission297",1)
      		LuaGive("o_mission299",1,"Tyuanx")
      		LuaSay("提示：元宵煮熟啦@!")
		LuaOtherSendMenu()
			LuaGive("coin",200,"Tyuanx") 
		return 1                             
      else  
      	  LuaSay("提示：你没有生元宵，怎么煮呢？")
	  LuaOtherSendMenu()
      	  return 0
      end
      		
end
