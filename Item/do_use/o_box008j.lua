function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end

        local r=LuaRandom(100)

        	if(r>=0 and r<20)then
         	LuaGive("e_head166",1,3,"Ac_51")
			elseif(r>=20 and r<37)then
			LuaGive("e_clothes166",1,3,"Ac_51")
   			elseif(r>=37 and r<54)then
   			LuaGive("e_pants166",1,3,"Ac_51")
   			elseif(r>=54 and r<67)then
   			LuaGive("e_shoes166",1,3,"Ac_51")
   			elseif(r>=67 and r<80)then
   			LuaGive("e_earring166",1,3,"Ac_51")
   			elseif(r>=80 and r<90)then
   			LuaGive("e_necklace166",1,3,"Ac_51")
   			elseif(r>=90 and r<97)then
   			LuaGive("e_knife166",1,3,"Ac_51")
   			elseif(r>=97 and r<=99)then
   			LuaGive("e_sword166",1,3,"Ac_51")
        	end

LuaOtherSendMenu()
return 1
end
