function do_use()
    local day=GetCurrentDay()
if(LuaQueryTask("T591A")==1) then
LuaSay("提示：你已经用幸运鱼饵钓鱼了，请用幸运鱼饵收获！")
else
  if(MapName()=="lu_diaoyudao") then
--钓鱼开始
	x=LuaQueryTemp("posx")
	y=LuaQueryTemp("posy")
	if(LuaQueryTask("T590A")==0) then
			leftx1=127
			leftx2=144
			rightx1=153
			rightx2=135
			--左半边
			if(y>=528 and y<=544) then         ---第1钓鱼点
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",1)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
					
			elseif(y>=408 and y<=392) then     ---第2钓鱼点
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",2)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>=264 and y<=288) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",3)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>=224 and y<=208) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",4)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>104 and y<128) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",5)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			--右半边
			elseif(y>=464 and y<=480) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",6)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>=328 and y<=352) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",7)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>=176 and y<=192) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",8)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			elseif(y>=40 and y<=64) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("提示：你已经成功使用了鱼饵，等一段时间后再来收获鱼吧！")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",9)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
				end
			else
				LuaSay("提示：必须在鱼竿附近才能使用鱼饵")
			end
		LuaSetTask("T590date",GetCurrentDay())
		LuaOtherSendMenu()
		return 0
	else
		if(LuaQueryStrTask("T590date")~=GetCurrentDay()) then
			LuaSetTask("T590time",LuaQuery("onlinetime"))
			LuaSetTask("T590date",GetCurrentDay())
			LuaSay("提示：你已经成功使用了鱼饵，昨天的时间已清除，等@310分钟@0后再来收获鱼吧！")
			LuaOtherSendMenu()
			return 0
		end
		shijiancha=(LuaQuery("onlinetime")-LuaQueryTask("T590time"))/60
		if(shijiancha>10)  then
			LuaSetTask("Tdydotime",1)
			r= LuaRandom(8)
			T590xy=LuaQueryTask("T590xy")
			if(T590xy==1) then
			if(y>=528 and y<=544) then
				if(x<=144) then
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
					local rfish=LuaRandom(150)
					if(rfish<10)then
						LuaGive("o_mission168",1,"Tdiaoyu")--副产品甲鱼1/15
					end
					if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(20)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                    end
					LuaSetTask("T590A",0)
					LuaOtherSendMenu()
					return 1
				else
					LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
				end
			else
				LuaSay("提示：你撒的窝子在@31号@0附近")
				SetDirection("lu_diaoyutai|136|536")
			end
		elseif(T590xy==2) then
			if(y>=392 and y<=416) then
			if(x<=144) then
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
				local rfish=LuaRandom(150)
				if(rfish<10)then
				LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
				end
				if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(20)==0)then
						LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
						end
                end
				LuaSetTask("T590A",0)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
			end
		else
			LuaSay("提示：你撒的窝子在@32号@0附近")
			SetDirection("lu_diaoyutai|136|400")
		end

        elseif(T590xy==3) then
          if(y>=272 and y<=296) then
            if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@33号@0附近")
            SetDirection("lu_diaoyutai|136|280")
          end
        
        
        elseif(T590xy==4) then
           if(y>=208 and y<=244) then
            if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
  			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@34号@0附近")
            SetDirection("lu_diaoyudao|136|216")
          end
        
        
        
        elseif(T590xy==5) then
          if(y>=104 and y<=128) then
		if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在左边，再向左移动一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@35号@0附近")
            SetDirection("lu_diaoyudao|136|120")
          end
        
        
        elseif(T590xy==6) then
           if(y>=463 and y<=488) then
		if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@36号@0附近")
            SetDirection("lu_diaoyudao|152|472")
          end
        
        elseif(T590xy==7) then
           if(y>=335 and y<=360) then
            if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@37号@0附近")
            SetDirection("lu_diaoyudao|152|344")
          end
        
        
        elseif(T590xy==8) then
           if(y>=168 and y<=200) then
		if(x>=136) then
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
			local  rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@38号@0附近")
            SetDirection("lu_diaoyudao|152|184")
          end
        
        
        elseif(T590xy==9) then
           if(y>=46 and y<=64) then
            if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--副产品王八
			end
  			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--端午节活动，粽子
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("提示：你撒的窝子在右边，再@3向右移动@0一点吧")
            end
          else
            LuaSay("提示：你撒的窝子在@39号@0附近")
			SetDirection("lu_diaoyudao|152|56")
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