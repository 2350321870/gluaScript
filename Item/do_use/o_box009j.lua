function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
        local r=LuaRandom(100)

        	if(r>=0 and r<20)then
         	LuaGive("e_head151",1,3,"Ac_51")
			elseif(r>=20 and r<37)then
			LuaGive("e_clothes151",1,3,"Ac_51")
   			elseif(r>=37 and r<54)then
   			LuaGive("e_pants151",1,3,"Ac_51")
   			elseif(r>=54 and r<67)then
   			LuaGive("e_shoes151",1,3,"Ac_51")
   			elseif(r>=67 and r<80)then
   			LuaGive("e_earring151",1,3,"Ac_51")
   			elseif(r>=80 and r<90)then
   			LuaGive("e_necklace151",1,3,"Ac_51")
   			elseif(r>=90 and r<97)then
   			    if(LuaQueryStr("class")=="wu")then			--侠客
   			    LuaGive("e_knife151",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="xian")then		--谋士
				LuaGive("e_book151",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="shen")then		--战士
				LuaGive("e_shield151",1,3,"Ac_51")
				end
   			elseif(r>=97 and r<=99)then
   			    if(LuaQueryStr("class")=="wu")then			--侠客
          		LuaGive("e_sword151",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="xian")then		--谋士
				LuaGive("e_pen151",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="shen")then		--战士
				LuaGive("e_falchion151",1,3,"Ac_51")
				end

        	end

LuaOtherSendMenu()
return 1
end
