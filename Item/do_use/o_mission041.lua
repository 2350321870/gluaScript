function do_use()
    local day=GetCurrentDay()
if(LuaQueryTask("T591A")==1) then
LuaSay("��ʾ�����Ѿ���������������ˣ�������������ջ�")
else
  if(MapName()=="lu_diaoyudao") then
--���㿪ʼ
	x=LuaQueryTemp("posx")
	y=LuaQueryTemp("posy")
	if(LuaQueryTask("T590A")==0) then
			leftx1=127
			leftx2=144
			rightx1=153
			rightx2=135
			--����
			if(y>=528 and y<=544) then         ---��1�����
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",1)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
					
			elseif(y>=408 and y<=392) then     ---��2�����
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",2)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>=264 and y<=288) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",3)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>=224 and y<=208) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",4)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>104 and y<128) then
				if(x>=leftx1 and x<=leftx2)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",5)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			--�Ұ��
			elseif(y>=464 and y<=480) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",6)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>=328 and y<=352) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",7)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>=176 and y<=192) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",8)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			elseif(y>=40 and y<=64) then
				if(x>=rightx2 and x<=rightx1)then
					LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����������һ��ʱ��������ջ���ɣ�")
					LuaSetTask("T590A",1)
					LuaSetTask("T590xy",9)
					LuaSetTask("T590time",LuaQuery("onlinetime"))
				else
					LuaSay("��ʾ����������͸�������ʹ�����")
				end
			else
				LuaSay("��ʾ����������͸�������ʹ�����")
			end
		LuaSetTask("T590date",GetCurrentDay())
		LuaOtherSendMenu()
		return 0
	else
		if(LuaQueryStrTask("T590date")~=GetCurrentDay()) then
			LuaSetTask("T590time",LuaQuery("onlinetime"))
			LuaSetTask("T590date",GetCurrentDay())
			LuaSay("��ʾ�����Ѿ��ɹ�ʹ��������������ʱ�����������@310����@0�������ջ���ɣ�")
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
					local rfish=LuaRandom(150)
					if(rfish<10)then
						LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����1/15
					end
					if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(20)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                    end
					LuaSetTask("T590A",0)
					LuaOtherSendMenu()
					return 1
				else
					LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
				end
			else
				LuaSay("��ʾ��������������@31��@0����")
				SetDirection("lu_diaoyutai|136|536")
			end
		elseif(T590xy==2) then
			if(y>=392 and y<=416) then
			if(x<=144) then
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
				local rfish=LuaRandom(150)
				if(rfish<10)then
				LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
				end
				if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
						if(LuaRandom(20)==0)then
						LuaGive("o_mission529",1,"Ac_47")--����ڻ������
						end
                end
				LuaSetTask("T590A",0)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
			end
		else
			LuaSay("��ʾ��������������@32��@0����")
			SetDirection("lu_diaoyutai|136|400")
		end

        elseif(T590xy==3) then
          if(y>=272 and y<=296) then
            if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@33��@0����")
            SetDirection("lu_diaoyutai|136|280")
          end
        
        
        elseif(T590xy==4) then
           if(y>=208 and y<=244) then
            if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
  			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@34��@0����")
            SetDirection("lu_diaoyudao|136|216")
          end
        
        
        
        elseif(T590xy==5) then
          if(y>=104 and y<=128) then
		if(x<=144) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ����������������ߣ��������ƶ�һ���")
            end
          else
            LuaSay("��ʾ��������������@35��@0����")
            SetDirection("lu_diaoyudao|136|120")
          end
        
        
        elseif(T590xy==6) then
           if(y>=463 and y<=488) then
		if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@36��@0����")
            SetDirection("lu_diaoyudao|152|472")
          end
        
        elseif(T590xy==7) then
           if(y>=335 and y<=360) then
            if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@37��@0����")
            SetDirection("lu_diaoyudao|152|344")
          end
        
        
        elseif(T590xy==8) then
           if(y>=168 and y<=200) then
		if(x>=136) then
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
			local  rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@38��@0����")
            SetDirection("lu_diaoyudao|152|184")
          end
        
        
        elseif(T590xy==9) then
           if(y>=46 and y<=64) then
            if(x>=136) then
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
			local rfish=LuaRandom(150)
			if(rfish<10)then
			LuaGive("o_mission168",1,"Tdiaoyu")--����Ʒ����
			end
  			if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
				if(LuaRandom(20)==0)then
				LuaGive("o_mission529",1,"Ac_47")--����ڻ������
				end
            end
             LuaSetTask("T590A",0)
             LuaOtherSendMenu()
             return 1
            else
            LuaSay("��ʾ���������������ұߣ���@3�����ƶ�@0һ���")
            end
          else
            LuaSay("��ʾ��������������@39��@0����")
			SetDirection("lu_diaoyudao|152|56")
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