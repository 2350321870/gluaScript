function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
        local r=LuaRandom(100)

        	if(r>=0 and r<20)then
         	LuaGive("e_head153",1,3,"Ac_51")
			elseif(r>=20 and r<37)then
			LuaGive("e_clothes153",1,3,"Ac_51")
   			elseif(r>=37 and r<54)then
   			LuaGive("e_pants153",1,3,"Ac_51")
   			elseif(r>=54 and r<67)then
   			LuaGive("e_shoes153",1,3,"Ac_51")
   			elseif(r>=67 and r<80)then
   			LuaGive("e_earring153",1,3,"Ac_51")
   			elseif(r>=80 and r<90)then
   			LuaGive("e_necklace153",1,3,"Ac_51")
   			elseif(r>=90 and r<97)then
   			    if(LuaQueryStr("class")=="wu")then			--����
   			    LuaGive("e_knife153",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="xian")then		--ıʿ
				LuaGive("e_book153",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="shen")then		--սʿ
				LuaGive("e_shield153",1,3,"Ac_51")
				end
   			elseif(r>=97 and r<=99)then
   			    if(LuaQueryStr("class")=="wu")then			--����
          		LuaGive("e_sword153",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="xian")then		--ıʿ
				LuaGive("e_pen153",1,3,"Ac_51")
				elseif(LuaQueryStr("class")=="shen")then		--սʿ
				LuaGive("e_falchion153",1,3,"Ac_51")
				end

        	end

LuaOtherSendMenu()
return 1
end
