function do_use()
    local day=GetCurrentDay()
if(LuaQueryTask("T590A")==1) then
LuaSay("��ʾ�����Ѿ�����ͨ��������ˣ�������ͨ����ջ�")
else
  if(MapName()=="lu_diaoyudao") then
--���㿪ʼ
	x=LuaQueryTemp("posx")
	y=LuaQueryTemp("posy")
	if(LuaQueryTask("T591A")==0) then
			--����
			if(y>496 and y<528) then         ---��1�����
				if(x>96 and x<160)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",1)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
					
			elseif(y>368 and y<400) then     ---��2�����
				if(x>96 and x<160)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",2)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>240 and y<272) then
				if(x>96 and x<160)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",3)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>176 and y<208) then
				if(x>96 and x<160)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",4)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>80 and y<112) then
				if(x>96 and x<160)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",5)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			--�Ұ��
			elseif(y>432 and y<464) then
				if(x>128 and x<192)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",6)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>304 and y<336) then
				if(x>128 and x<192)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",7)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>144 and y<176) then
				if(x>128 and x<192)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",8)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>16 and y<46) then
				if(x>128 and x<192)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T591A",1)
					LuaSetTask("T591xy",9)
					LuaSetTask("T591time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			else
				LuaSay("��ʾ����������͸�������ʹ�����")
			end
		LuaSetTask("T591date",GetCurrentDay())
		LuaOtherSendMenu()
		return 0
	else
		if(LuaQueryStrTask("T591date")~=GetCurrentDay()) then
			LuaSetTask("T591time",LuaQuery("onlinetime"))
			LuaSetTask("T591date",GetCurrentDay())
			LuaSay("��ʾ�����Ѿ��ɹ�ʹ��������������ʱ�����������@310����@0�������ջ���ɣ�")
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
						LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
						if(a==1)then
							LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
						end
						if(b==1)then
							LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
						end
					elseif(shijiancha<30) then
						local c = LuaRandom(40)
						LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
						if(c==1)then
							LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
						end
					elseif(shijiancha<40) then
						LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
						if(r<4) then
							LuaGive("o_material_30",2,"Tdiaoyu") 
						elseif(r==5) then
							LuaGive("o_material_31",1,"Tdiaoyu")
						end
					else
						LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
						if(r==0 or r==6) then
							LuaGive("o_material_30",2,"Tdiaoyu") --2����
						elseif(r==1) then
							if(LuaRandom(2)==0)then
								LuaGive("o_material_31",1,"Tdiaoyu")--3����
							else
								LuaGive("o_mission020",1,"Tdiaoyu")
							end
						elseif(r==2)then
							 if(LuaRandom(3)==0)then
								LuaGive("o_material_32",1,"Tdiaoyu")--4����
							 else
								LuaGive("o_mission020",1,"Tdiaoyu")
							 end
						elseif(r==3 )then
							LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
						elseif(r==4)then
							LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
						elseif(r==5 or r==7)then
							LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
						end
					end

					if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
                    local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
					LuaSetTask("T591A",0)
					LuaOtherSendMenu()
					return 1
				else
					LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
				end
			else
				LuaSay("��ʾ��������������@3(144��514)@0����")
				SetDirection("lu_diaoyutai|130|530")
			end
		elseif(T591xy==2) then
			if(y>368 and y<400) then
			if(x<166) then
				if(shijiancha<20) then
					local a = LuaRandom(50)
					local b = LuaRandom(10)
					LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
					if(a==1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
					end
					if(b==1)then
						LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
					end
				elseif(shijiancha<30) then
					local c = LuaRandom(40)
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
					if(c==1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
					end
				elseif(shijiancha<40) then
					LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
					 if(r<4) then
					 LuaGive("o_material_30",2,"Tdiaoyu") 
					 elseif(r==5) then
					 LuaGive("o_material_31",1,"Tdiaoyu")
					 end
				else
					 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
					 if(r==0 or r==6) then
					 LuaGive("o_material_30",2,"Tdiaoyu") --2����
					 elseif(r==1) then
						if(LuaRandom(2)==0)then
							LuaGive("o_material_31",1,"Tdiaoyu")--3����
						else
							LuaGive("o_mission020",1,"Tdiaoyu")
						end
					 elseif(r==2)then
						  if(LuaRandom(3)==0)then
							LuaGive("o_material_32",1,"Tdiaoyu")--4����
						  else
							LuaGive("o_mission020",1,"Tdiaoyu")
						  end
					 elseif(r==3 )then
					 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
					 elseif(r==4)then
					 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
					 elseif(r==5 or r==7)then
					 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
					 end
				 end
				    if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
    				local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
				LuaSetTask("T591A",0)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
			end
		else
			LuaSay("��ʾ��������������@3(144��384)@0����")
			SetDirection("lu_diaoyutai|130|400")
		end

        elseif(T591xy==3) then
          if(y>240 and y<272) then
            if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			 elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					 if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4����
					 else
						LuaGive("o_mission020",1,"Tdiaoyu")
					 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��256)@0����")
            SetDirection("lu_diaoyutai|130|272")
          end
        
        
        elseif(T591xy==4) then
           if(y>186 and y<208) then
            if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4����
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��192)@0����")
            SetDirection("lu_diaoyudao|130|208")
          end
        
        
        
        elseif(T591xy==5) then
          if(y>80 and y<112) then
		if(x<166) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					 if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4����
					 else
						LuaGive("o_mission020",1,"Tdiaoyu")
					 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��96)@0����")
            SetDirection("lu_diaoyudao|130|112")
          end
        
        
        elseif(T591xy==6) then
           if(y>432 and y<464) then
		if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					 if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
					  if(LuaRandom(3)==0)then
						LuaGive("o_material_32",1,"Tdiaoyu")--4����
					  else
						LuaGive("o_mission020",1,"Tdiaoyu")
					  end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��448)@0����")
            SetDirection("lu_diaoyudao|154|464")
          end
        
        elseif(T591xy==7) then
           if(y>304 and y<336) then
            if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					 if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4����
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144,320)@0����")
            SetDirection("lu_diaoyudao|154|336")
          end
        
        
        elseif(T591xy==8) then
           if(y>144 and y<176) then
		if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4����
				 else
					LuaGive("o_mission020",1,"Tdiaoyu")
				 end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��160)@0����")
            SetDirection("lu_diaoyudao|154|176")
          end
        
        
        elseif(T591xy==9) then
           if(y>16 and y<48) then
            if(x>122) then
			if(shijiancha<20) then
				local a = LuaRandom(50)
				local b = LuaRandom(10)
				LuaGive("o_mission020",1,"Tdiaoyu")   ---��������
				if(a==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")
				end
				if(b==1)then
					LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				end
			elseif(shijiancha<30) then
				local c = LuaRandom(40)
				LuaGive("o_mission039",1,"Tdiaoyu")   ---��������
				if(c==1)then
					LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
				end
			elseif(shijiancha<40) then
				LuaGive("o_mission040",1,"Tdiaoyu")   ---��Ʒ����
				 if(r<4) then
				 LuaGive("o_material_30",2,"Tdiaoyu") 
				 elseif(r==5) then
				 LuaGive("o_material_31",1,"Tdiaoyu")
				 end
			else
				 LuaGive("o_mission040",2,"Tdiaoyu")  ---��Ʒ����
				 if(r==0 or r==6) then
				 LuaGive("o_material_30",2,"Tdiaoyu") --2����
				 elseif(r==1) then
					if(LuaRandom(2)==0)then
						LuaGive("o_material_31",1,"Tdiaoyu")--3����\
					else
						LuaGive("o_mission020",1,"Tdiaoyu")
					end
				 elseif(r==2)then
				  if(LuaRandom(3)==0)then
					LuaGive("o_material_32",1,"Tdiaoyu")--4����
				  else
					LuaGive("o_mission020",1,"Tdiaoyu")
				  end
				 elseif(r==3 )then
				 LuaGive("e_book003",1,"Tdiaoyu")--��ѧ 27LV ��
				 elseif(r==4)then
				 LuaGive("e_earring005",1,"Tdiaoyu")--lv27 ����
				 elseif(r==5 or r==7)then
				 LuaGive("e_pants013",1,"Tdiaoyu")--lv37 ����
				 end
			 end
			        if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(5)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
   					local rfish=LuaRandom(7)
					if(rfish<1)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/7
					end
                    if(LuaRandom(2)==0)then
                        local rou_r=LuaRandom(5)+1
						LuaGive("o_mission039",rou_r,"Tdiaoyu")--����������⽱��
					end
             LuaSetTask("T591A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@3(144��32)@0����")
          end
		end
	 else
        LuaSay("��ʾ�������������ʱ�䲻��@310����@0�������û�Ϲ��أ��ǵ�һ��������ʱ��Ŷ�����ߵ�ʱ��ɲ������@!")
	 end
  end
     LuaOtherSendMenu()
  else
    LuaShowNotify("�����ڵ���̨����ʹ�������ͨ�������ǵ����̿ɽ���")
 end
end--��Ӧ�ж�����ͨ��������������
end