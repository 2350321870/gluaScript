function do_use()
    local day=GetCurrentDay()
if(LuaQueryTask("T590A")==1) then
LuaSay("提示：你已经用普通鱼饵钓鱼了，请用普通鱼饵收获！")
else
  if(MapName()=="lu_diaoyudao") then
--钓鱼开始
	x=LuaQueryTemp("posx")
	y=LuaQueryTemp("posy")
	if(LuaQueryTask("T591A")==0) then
			--左半边
			if(y>496 and y<528) then         ---第1钓鱼点
				if(x>96 and x<160)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",1)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
					
			elseif(y>368 and y<400) then     ---第2钓鱼点
				if(x>96 and x<160)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",2)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>240 and y<272) then
				if(x>96 and x<160)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",3)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>176 and y<208) then
				if(x>96 and x<160)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",4)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>80 and y<112) then
				if(x>96 and x<160)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",5)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			--右半边
			elseif(y>432 and y<464) then
				if(x>128 and x<192)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",6)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>304 and y<336) then
				if(x>128 and x<192)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",7)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>144 and y<176) then
				if(x>128 and x<192)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",8)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>16 and y<46) then
				if(x>128 and x<192)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",9)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			else
				LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
			end
		LuaSetTask("T591date",GetCurrentDay())
		LuaOtherSendMenu()
		return 0
	else
		if(LuaQueryStrTask("T591date")~=GetCurrentDay()) then
			LuaSetTask("T591time",LuaQuery("onlinetime"))
			LuaSetTask("T591date",GetCurrentDay())
			LuaSay("提示：你已经成功使用了鱼饵，昨天的时间已清除，等@310分钟@0后再来收获鱼吧！")
			LuaOtherSendMenu()
			return 0
		end
		shijiancha=(LuaQuery("onlinetime")-LuaQueryTask("T591time"))/60
		if(shijiancha>10)  then
			LuaSetTask("Tdydotime",1)
			r= LuaRandom(8)
			T591xy=LuaQueryTask("T591xy")
			if(T591xy==1) then
			if(y>496 and y<528) then
				if(x<166) then
					if(shijiancha<20) then
						local a = LuaRandom(50)
						local b = LuaRandom(10)
						LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
						if(a==1)then
							LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
						end
						if(b==1)then
							LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
						end
					elseif(shijiancha<30) then
						local c = LuaRandom(40)
						LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
						if(c==1)then
							LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
						end
					elseif(shijiancha<40) then
						LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
						if(r<4) then
							LuaGive("o_material_30",2,"Tdiaoyu") 
						elseif(r==5) then
							LuaGive("o_material_31",1,"Tdiaoyu")
						end
					else
						LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
						if(r==0 or r==6) then
							LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
						elseif(r==1) then
							if(LuaRandom(2)==0)then
								LuaGive("o_material_31",1,"Tdiaoyu")--3级肉
							else
								LuaGive("o_mission020",1,"Tdiaoyu")
							end
						elseif(r==2)then
							 if(LuaRandom(3)==0)then
								LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
							 else
								LuaGive("o_mission020",1,"Tdiaoyu")
							 end
						elseif(r==3 )then
							LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
						elseif(r==4)then
							LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
						elseif(r==5 or r==7)then
							LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
						end
					end

					if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
                    local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
					LuaSetTask("T591A",0)
					LuaOtherSendMenu()
					return 1
				else
					LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
				end
			else
				LuaSay("提示：你撒的窝子在@3(144，514)@0附近")
				SetDirection("lu_diaoyutai|130|530")
			end
		elseif(T591xy==2) then
			if(y>368 and y<400) then
			if(x<166) then
				if(shijiancha<20) then
					local a = LuaRandom(50)
					local b = LuaRandom(10)
					LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
					if(a==1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
					end
					if(b==1)then
						LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
					end
				elseif(shijiancha<30) then
					local c = LuaRandom(40)
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
					if(c==1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
					end
				elseif(shijiancha<40) then
					LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
					 if(r<4) then
					 LuaGive("o_material_30",2,"Tdiaoyu") 
					 elseif(r==5) then
					 LuaGive("o_material_31",1,"Tdiaoyu")
					 end
				else
					 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
					 if(r==0 or r==6) then
					 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
					 elseif(r==1) then
						if(LuaRandom(2)==0)then
							LuaGive("o_material_31",1,"Tdiaoyu")--3级肉
						else
							LuaGive("o_mission020",1,"Tdiaoyu")
						end
					 elseif(r==2)then
						  if(LuaRandom(3)==0)then
							LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
						  else
							LuaGive("o_mission020",1,"Tdiaoyu")
						  end
					 elseif(r==3 )then
					 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
					 elseif(r==4)then
					 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
					 elseif(r==5 or r==7)then
					 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
					 end
				 end
				    if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
    				local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
				LuaSetTask("T591A",0)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
			end
		else
			LuaSay("提示：你撒的窝子在@3(144，384)@0附近")
			SetDirection("lu_diaoyutai|130|400")
		end

        elseif(T591xy==3) then
          if(y>240 and y<272) then
            if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			 elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					 if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
					 else
						LuaGive("o_mission020",1,"Tdiaoyu")
					 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，256)@0附近")
            SetDirection("lu_diaoyutai|130|272")
          end
        
        
        elseif(T591xy==4) then
           if(y>186 and y<208) then
            if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，192)@0附近")
            SetDirection("lu_diaoyudao|130|208")
          end
        
        
        
        elseif(T591xy==5) then
          if(y>80 and y<112) then
		if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					 if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
					 else
						LuaGive("o_mission020",1,"Tdiaoyu")
					 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，96)@0附近")
            SetDirection("lu_diaoyudao|130|112")
          end
        
        
        elseif(T591xy==6) then
           if(y>432 and y<464) then
		if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					 if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					  if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
					  else
						LuaGive("o_mission020",1,"Tdiaoyu")
					  end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，448)@0附近")
            SetDirection("lu_diaoyudao|154|464")
          end
        
        elseif(T591xy==7) then
           if(y>304 and y<336) then
            if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					 if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144,320)@0附近")
            SetDirection("lu_diaoyudao|154|336")
          end
        
        
        elseif(T591xy==8) then
           if(y>144 and y<176) then
		if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，160)@0附近")
            SetDirection("lu_diaoyudao|154|176")
          end
        
        
        elseif(T591xy==9) then
           if(y>16 and y<48) then
            if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---劣质鱼肉
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---优质鱼肉
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---精品鱼肉
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---精品鱼肉
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2级肉
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3级肉\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4级肉
				  else
					LuaGive("o_mission020",1,"Tdiaoyu")
				  end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--大学 27LV 书
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 耳环
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 裤子
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--幸运鱼饵额外奖励
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@3(144，32)@0附近")
          end
		end
	 else
        LuaSay("提示：你撒下鱼饵的时间不到@310分钟@0，鱼儿还没上钩呢，记得一定是在线时间哦，下线的时间可不算的呢@!")
	 end
  end
     LuaOtherSendMenu()
  else
    LuaShowNotify("必须在钓鱼台才能使用鱼饵，通过建康城的渔翁可进入")
 end
end--对应判断是普通鱼饵还是幸运鱼饵
end