function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------�������
cr=LuaRandom(1860)
	--if(cr<300)then		--���̳�δ�������ӵò���Կ���ݲ���������
		--if(level<18)then
		--	LuaGive("o_box0"..LuaRandom(3)..""..(LuaRandom(4)+1).."",1,"Tpresent100")
		--end
		--if(level<26 and level>=18)then
		--	LuaGive("o_box0"..LuaRandom(3)..""..(LuaRandom(3)+5).."",1,"Tpresent100")
		--end
		--if(level<34 and level>=26)then
		--	LuaGive("o_box0"..LuaRandom(3)..""..(LuaRandom(3)+6).."",1,"Tpresent100")
		--end
		--if(level>=34)then
		--	LuaGive("o_box0"..LuaRandom(3)..""..(LuaRandom(2)+9).."",1,"Tpresent100")
		--end
	--else++
	if(cr>=300 and cr<380)then
		LuaGive("o_present011",1,"Tpresent100")
	elseif(cr>=380 and cr<399)then
		LuaGive("o_present012",1,"Tpresent100")
	elseif(cr==399)then
		LuaGive("o_present013",1,"Tpresent100")
	elseif(cr>=400 and cr<500)then
		LuaGive("o_present014",1,"Tpresent100")
	elseif(cr>=500 and cr<650)then
		LuaGive("o_present015",1,"Tpresent100")
	elseif(cr>=650 and cr<1100)then
		LuaGive("o_present016",1,"Tpresent100")
	elseif(cr>=1100 and cr<1250)then
		LuaGive("o_present017",1,"Tpresent100")
	elseif(cr>=1250 and cr<1300)then
		LuaGive("o_present018",1,"Tpresent100")
	elseif(cr>=1300 and cr<1310)then
		LuaGive("o_present019",1,"Tpresent100")
	elseif(cr>=1310 and cr<1320)then
		LuaGive("o_present020",1,"Tpresent100")
	elseif(cr>=1320 and cr<1330)then
		LuaGive("o_present021",1,"Tpresent100")
	elseif(cr>=1330 and cr<1340)then
		LuaGive("o_present022",1,"Tpresent100")
	elseif(cr>=1340 and cr<1350)then
		LuaGive("o_present023",1,"Tpresent100")
	elseif(cr>=1350 and cr<1360)then
		LuaGive("o_present024",1,"Tpresent100")
	--elseif(cr>=1360 and cr<1860)then
	--	LuaGive("o_present025",1,"Tpresent100")		--�س�������ڵ�ͼ�����ݲ���
	else
		LuaGive("coin",100,"Tpresent100")
	end
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
