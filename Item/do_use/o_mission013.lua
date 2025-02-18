function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
  if(MapName()=="lu_jkdj") then
    x=LuaQueryTemp("posx")
    y=LuaQueryTemp("posy")

      if(y>300 and y<400 and x>420 and x<500 ) then
         if(LuaQueryTask("T111A")==0)then 
         LuaSetTask("T111A",99)
         LuaGive("o_mission016",1)
         LuaSay("提示：成功找到1个宝物，集齐3个就可以在建康城南刘裕处领取丰厚奖励！")
         if(LuaRandom(10)==0)then
         LuaGive("e_clothes007",1,1)
         end
         LuaOtherSendMenu()
          if(LuaQueryTask("T111A")==99 and LuaQueryTask("T111B")==99 and LuaQueryTask("T111C")==99) then
          return 1
		  else 
          return 0
          end
         else
         LuaShowNotify("附近的宝物刚被你挖走")
         end 

      elseif(y>190 and y<230 and x>150 and x<220 ) then
         if(LuaQueryTask("T111B")==0)then   
         LuaSetTask("T111B",99)
         LuaGive("o_mission016",1)
         LuaSay("提示：成功找到1个宝物，集齐3个就可以在建康城南刘裕处领取丰厚奖励！")
         if(LuaRandom(10)==0)then
         LuaGive("e_falchion006",1,1)
         end
         LuaOtherSendMenu()
          if(LuaQueryTask("T111A")==99 and LuaQueryTask("T111B")==99 and LuaQueryTask("T111C")==99) then
          return 1
		  else 
          return 0
          end
         else
         LuaShowNotify("附近的宝物刚被你挖走")
         end 

 
      elseif(y>10 and y<100 and x>320 and x<390) then
         if(LuaQueryTask("T111C")==0)then 
         LuaSetTask("T111C",99)
         LuaGive("o_mission016",1)
         LuaSay("提示：成功找到1个宝物，集齐3个就可以在建康城南刘裕处领取丰厚奖励！")
         if(LuaRandom(10)==0)then
         LuaGive("e_pants006",1,1)
         end
         LuaOtherSendMenu()
          if(LuaQueryTask("T111A")==99 and LuaQueryTask("T111B")==99 and LuaQueryTask("T111C")==99) then
          return 1
		  else 
          return 0
          end
          else
          LuaShowNotify("附近的宝物刚被你挖走")
          end
        else
        LuaShowNotify("附近没有发现任何宝物，请到建康东郊树下寻找")
        end
 
   else
   LuaShowNotify("附近没有发现任何宝物，请到建康东郊树下寻找")
   end
end
