function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
       local r=LuaRandom(5)
       if(r==0) then
       		LuaGive("o_mission292",1,"Tyuanx")
       elseif(r==1) then
       	    LuaGive("o_mission293",1,"Tyuanx")
       elseif(r==2) then
       		LuaGive("o_mission294",1,"Tyuanx")
       elseif(r==3) then
       		LuaGive("o_mission295",1,"Tyuanx")
       else
       		LuaGive("o_mission296",1,"Tyuanx")
       end
LuaOtherSendMenu()
return 1       		
end
