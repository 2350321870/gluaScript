NPCINFO = {
serial= "111" ,
base_name="muxiang03",
icon= 2589, 
NpcMove=2589, 
name= "ľ��" , 
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE" ,
lastsay="�˵�����������",
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
        local T321=LuaQueryTask("T321")
        local T321B=LuaQueryTask("T321B")
	local level= LuaQuery("level")
		AddTopSayMenuItem("@7�����б�","")
		if(T321==1 and T321B==0)  then
			AddTopSayMenuItem("������","T321B")
		end
		if(LuaQueryTask("T357")==1)  then
			AddTopSayMenuItem("������","T357")
		end
		if(level >=15)  then		
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey1")		
			AddTopSayMenuItem("@7ʹ��ͭԿ��@0","usekey2")		
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey3")			
			AddTopSayMenuItem("@7ʹ�ý�Կ��@0","usekey4")			
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey5")			
	
		end
			AddTopSayMenuItem("��ֵı���","info")					
-------------------------------------------------------------------------

if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1          
-------------------------------------------------------------------------
elseif(answer=="liaotian")then
	LuaSay("��������ı����̲������޵�����")

 elseif(answer=="T321B") then	
  if(LuaQueryTask("T321B")==0) then 
    LuaGive("o_mission002",1)
    LuaSetTask("T321B",99)
    LuaSay("��ʾ����õ�һ��@2����@0����ȥ��@3����@0��")
    UpdateMenu()
    UpdateNPCMenu("huanchong")
  end
elseif(answer=="T357") then	
	if(LuaQueryTask("T357")==1) then 
		if(LuaItemCount("o_mission009") >= 1 and LuaItemCount("o_mission008") < 1) then
			LuaGive("o_mission008",1)
			LuaSay("��ʾ����õ�һ��@2��������ͼ@0����ȥ��@4�嶷ɽ@0��@3����@0��")
			UpdateMenu()
			AddMenuItem("@7����������","")
			AddMenuItem("ȷ�ϴ���������","Tcs_hx")
		elseif(LuaItemCount("o_mission009") < 1 and LuaItemCount("o_mission008") < 1) then
			LuaSay("��ʾ����û��@2����Կ��@0�����ܴ򿪴��䣬ȥ����@4�嶷ɽ@0��@2����@0���Ұ�")
			AddMenuItem("@7����������","")
			AddMenuItem("ȷ�ϴ���������","Tcs_ql")
		elseif(LuaItemCount("o_mission009") >= 1 and LuaItemCount("o_mission008") >= 1) then
			LuaSay("��ʾ�����Ѿ��õ�����������ͼ��ȥ����@4�嶷ɽ@0��@3����@0��")
			AddMenuItem("@7����������","")
			AddMenuItem("ȷ�ϴ���������","Tcs_hx")
		end
	 end
elseif(answer=="Tcs_hx")then
	ChangeMap("lu_wds",134,339)
elseif(answer=="Tcs_ql")then
	ChangeMap("lu_wds",212,369)
elseif(answer=="usekey1" or answer=="usekey2" or answer=="usekey3" or answer=="usekey4" or answer=="usekey5") then
	local level= LuaQuery("level")
	if(LuaQuery("hp")>0)then		--����ɫ����ǰ���˲˵�����ֹ�ȴ�����
		lockn=LuaGetLockNum()
		if(lockn~=0)then		--��ֹ����ʱ����Կ�ף����ж�һ���Ƿ�����
			if(answer=="usekey1")then
				key_n=1
				key_unlock=30		--30%���ʴ�
			elseif(answer=="usekey2")then
				key_n=2
				key_unlock=45
			elseif(answer=="usekey3")then
				key_n=3
				key_unlock=55
			elseif(answer=="usekey4")then
				key_n=4
				key_unlock=70
			elseif(answer=="usekey5")then
				key_n=5
				key_unlock=80
			end
			if(LuaItemStatusNormalCount("o_key"..(key_n+99).."")>=1)then							--�Ƿ���Կ��
				usekeytime=LuaQueryTask("usekeytime")
				cd=lockn*12		--��������CD�����60������12��
				if(usekeytime+cd<GetCurrentTime())then							--ʹ��Կ��CD��
					if(LuaRandom(100)<key_unlock-5*(5-lockn))then				--������Կ�������������أ�
						locknum=LuaSaveUnlock()						--/���ͱ��俪�����󣬲����ر��ο�������(locknum)

						if(locknum==0) then 								--�ѱ����˴�
							LuaSay("��ʾ����������ѱ��˴��ˣ�����տ���Ҳ")
                            if(LuaQueryTask("Thx2")==4) then
                              if(LuaQueryTask("Thx2D")==0) then
	                          LuaSay("��ʾ�����Ѿ���ɻ���������Ļ�����ȥ�ظ��ذϹ�ɡ�@!")
				LuaSetTask("Thx2D",99)
	                          end
	                          end
						elseif(locknum==1)then							--�����һ��
							DelItem("o_key"..(key_n+99).."",1)					--ɾ��1����ѡ��Կ��
							LuaSetTask("usekeytime",GetCurrentTime())
							LuaSay("��ʾ����ɹ��������һ�������õ�������ı���")
                            if(LuaQueryTask("Thx2")==4) then
                             if(LuaQueryTask("Thx2D")==0) then
	                          LuaSay("��ʾ�����Ѿ���ɻ���������Ļ�����ȥ�ظ��ذϹ�ɡ�@!")
                              LuaSetTask("Thx2D",99)
	                          end
	                          end
							if(LuaRandom(5)<4)then						
								money=LuaRandom(20000)+1
								LuaGive("coin",money,"Tunlockbox")
								if(money>10000)then
								LuaNotice("@2"..LuaQueryStr("name").."@0������õ�@2"..money.."ͭ�ҡ�@0")
								end
							end
							rb=LuaRandom(10)
							if(rb==2)then
								LuaGive("o_cangbaotu",1,"Tunlockbox")
								LuaNotice("@2"..LuaQueryStr("name").."@0����׷�����һ��@2�ر�ͼ@0")
							--elseif(rb==3)then
							--	LuaGive("o_fatescroll",1,"Tunlockbox")
							--	LuaNotice("@2"..LuaQueryStr("name").."@0����׷�����һ����ֵ�@2�������@0")
							end
							if(LuaRandom(10)<9)then
								LuaGive("o_material_"..(11+9*LuaRandom(6)).."",1,"Tunlockbox") 	--1����������һ
							end
							if(LuaRandom(5)<3)then
								LuaGive("o_material_"..(12+9*LuaRandom(6)).."",1,"Tunlockbox") 	--2����������һ
							end
							if(LuaRandom(10)<3)then
								LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tunlockbox") 	--3����������һ
							end
							if(LuaRandom(11)<1)then
								LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tunlockbox") 	--4����������һ
								LuaNotice("@2"..LuaQueryStr("name").."@0������õ�@24������@0һ��")
							end
							if(LuaRandom(50)<1)then
								LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tunlockbox")	--5����������һ
								LuaNotice("@2"..LuaQueryStr("name").."@0������õ�@25������@0һ��")
							end
							
						else										
							level= LuaQuery("level")
							DelItem("o_key"..(key_n+99).."",1)					
							LuaSetTask("usekeytime",GetCurrentTime())
							LuaSay("��ʾ����ɹ����˵�"..(6-locknum).."����")		--��ʾ��������������
                            if(LuaQueryTask("Thx2")==4) then
                             if(LuaQueryTask("Thx2D")==0) then
	                          LuaSay("��ʾ�����Ѿ���ɻ���������Ļ�����ȥ�ظ��ذϹ�ɡ�@!")
				  LuaSetTask("Thx2D",99)
	                          end
	                          end
							if(LuaRandom(10)<3)then						
								LuaGive("coin",LuaRandom(8000)+2000,"Tunlockbox")
							end
						end										
					else
						DelItem("o_key"..(key_n+99).."",1)
						LuaSetTask("usekeytime",GetCurrentTime())
						LuaSay("��ʾ�����Կ�ײ�С��Ū����")
                         if(LuaQueryTask("Thx2")==4) then
                          if(LuaQueryTask("Thx2D")==0) then
	                       LuaSay("��ʾ�����Ѿ���ɻ���������廷����ȥ�ظ��ذϹ�ɡ�@!")
                           LuaSetTask("Thx2D",99)
	                       end
	                       end
					end

				else
					LuaSay("��ʾ���㻹��Ҫ"..(usekeytime+cd-GetCurrentTime()).."�����ʹ��Կ��.")
				end
			else
				LuaSay("��ʾ����û�д�����Կ��.�뿪���Ӿ�ȥ��������@2��Ʒ��@0���ﹺ��ɡ�")		
			end
		else
		LuaSay("��ʾ����������ѱ��˴��ˣ�����տ���Ҳ")
          if(LuaQueryTask("Thx2")==4) then
           if(LuaQueryTask("Thx2D")==0) then
	      LuaSay("��ʾ�����Ѿ���ɻ���������廷����ȥ�ظ��ذϹ�ɡ�@!")
          LuaSetTask("Thx2D",99)
	      end
	      end
		end
	else
	LuaSay("��ʾ����ɫ���������ܿ���")
	end
elseif(answer=="info") then	
local level= LuaQuery("level")
    LuaSay("��ʾ����ֵ����ӣ������ƺ�����ĳЩ���ܡ�")
	if(level<15)then
	LuaSay("@1��ʾ:@015�����Ͽ��Բμӣ��������ӻ��")
	else
	LuaSay("�������ÿ��һ��ʱ������˲��϶�����������5������������������˲ر�����Ϣ������ȥ��������@2��Ʒ����@0�������ϼ���Կ��������������")
	LuaSay("@6ÿ��ʹ��Կ�׶������ĵ�һ��Կ�ף������Ƿ�ɹ�����")
	LuaSay("@6ʹ��Կ�׿������Ҫһ��ʱ���������ٴ�ʹ��Կ�ף�ʣ������Խ�٣����Խ��")
	LuaSay("@6�������ӳɹ�������Կ�׺�������أ��õ�Կ�׿������ʸߣ���ͬ����Կ����һ�����Ҫ����һ���ѿ�")
	LuaSay("@6��������ǰ4����л��ʵõ�һ������ͭ�ң��������һ���л��ʵõ�ͭ�ҡ�����������л��Ὺ��7������")
	end
end
LuaSendMenu()
return 1
end    	