NPCINFO = {
serial= "21" ,
base_name="muxiang01",
icon= 2589,
NpcMove=2589,
name= "ľ��" , --NPC��
iconaddr=1, --ͼƬ�ŵ�λ��1������2�ͻ���
butt="10|10|28", --��ײ ��ײ����|��ײ����|��ɫ��
name_color = "CEFFCE" , 
LuaType=1,
lastsay="�˵�����������",
}
function do_talk(answer)
if (answer=="ask") then
	local T294=LuaQueryTask("T294")
	local T294A=LuaQueryTask("T294A")
	local level= LuaQuery("level")
    AddTopSayMenuItem("@7�����б�","")
		if(T294==1 and T294A==0)  then
			AddTopSayMenuItem("������","T294A")
			end
		if(level >15)  then
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey1")	
			AddTopSayMenuItem("@7ʹ��ͭԿ��@0","usekey2")	
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey3")	
			AddTopSayMenuItem("@7ʹ�ý�Կ��@0","usekey4")	
			AddTopSayMenuItem("@7ʹ����Կ��@0","usekey5")	

		end
			AddTopSayMenuItem("@6�������ӻ˵��","info")		
-------------------------------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	AddTopSayMenuItem("����","liaotian","0")
end
return 1
-------------------------------------------------------------------------
elseif(answer=="T294A") then	
  if(LuaQueryTask("T294A")==0) then 
    LuaGive("o_mission048",1)
    LuaSetTask("T294A",99)
    LuaSay("��ʾ����õ�һ��@2�ָ�@0") 
    UpdateMenu()
  end

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
						elseif(locknum==1)then							--�����һ��
							DelItem("o_key"..(key_n+99).."",1)					--ɾ��1����ѡ��Կ��
							LuaSetTask("usekeytime",GetCurrentTime())
							LuaSay("��ʾ����ɹ��������һ�������õ�������ı���")
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
							if(LuaRandom(10)<3)then						
								LuaGive("coin",LuaRandom(8000)+2000,"Tunlockbox")
							end
						end										
					else
						DelItem("o_key"..(key_n+99).."",1)
						LuaSetTask("usekeytime",GetCurrentTime())
						LuaSay("��ʾ�����Կ�ײ�С��Ū����")
					end

				else
					LuaSay("��ʾ���㻹��Ҫ"..(usekeytime+cd-GetCurrentTime()).."�����ʹ��Կ��.")
				end
			else
				LuaSay("��ʾ����û�д�����Կ��.�뿪���Ӿ�ȥʿ�������ﹺ��ɡ�")		
			end
		else
		LuaSay("��ʾ����������ѱ��˴��ˣ�����տ���Ҳ")
		end
	else
	LuaSay("��ʾ����ɫ���������ܿ���")
	end
elseif(answer=="info") then	
	local level= LuaQuery("level")
	if(level<=15)then
	LuaSay("@1��ʾ:@016�����ϲ��ܲμӿ�����")
	end
	LuaSay("�������ÿ��һ��ʱ������˲��϶�����������5������������������˲ر�����Ϣ������ȥ@2��Ʒ����@0�������ϼ���Կ��������������")
	LuaSay("@6ÿ��ʹ��Կ�׶������ĵ�һ��Կ�ף������Ƿ�ɹ�����")
	LuaSay("@6ʹ��Կ�׿������Ҫһ��ʱ���������ٴ�ʹ��Կ�ף�ʣ������Խ�٣����Խ��")
	LuaSay("@6�������ӳɹ�������Կ�׺�������أ��õ�Կ�׿������ʸߣ���ͬ����Կ����һ�����Ҫ����һ���ѿ�")
	LuaSay("@6��������ǰ4����л��ʵõ�һ������ͭ�ң��������һ���л��ʵõ�ͭ�ҡ�����������л��Ὺ��7������")
end
LuaSendMenu()
return 1
end    	