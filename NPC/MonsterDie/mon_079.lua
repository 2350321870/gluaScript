function OnDie()

-----------------------------------------------------�ռ��Թ�����
if(LuaQueryTask("Txmg1")==12)then
	if(LuaQueryTask("xmglv")==2)then
		if(LuaItemCount("o_mission218")<5)then
			LuaGive("o_mission218",1)
			if(LuaItemCount("o_mission218")==5)then
				LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
				LuaOtherSendMenu()
			end
		end
	elseif(LuaQueryTask("xmglv")==3)then
		local r=LuaRandom(10)
		if(r<=9)then
			if(LuaItemCount("o_mission218")<5)then
				LuaGive("o_mission218",1)
				if(LuaItemCount("o_mission218")==5)then
					LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	elseif(LuaQueryTask("xmglv")==4)then
		local r=LuaRandom(10)
		if(r<=6)then
			if(LuaItemCount("o_mission218")<5)then
				LuaGive("o_mission218",1)
				if(LuaItemCount("o_mission218")==5)then
					LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	elseif(LuaQueryTask("xmglv")==5)then
		local r=LuaRandom(10)
		if(r<=4)then
			if(LuaItemCount("o_mission218")<5)then
				LuaGive("o_mission218",1)
				if(LuaItemCount("o_mission218")==5)then
					LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end	
	elseif(LuaQueryTask("xmglv")==6)then
		local r=LuaRandom(10)
		if(r<=3)then
			if(LuaItemCount("o_mission218")<5)then
				LuaGive("o_mission218",1)
				if(LuaItemCount("o_mission218")==5)then
					LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end

	elseif(LuaQueryTask("xmglv")==7)then
		local r=LuaRandom(10)
		if(r<=2)then
			if(LuaItemCount("o_mission218")<5)then
				LuaGive("o_mission218",1)
				if(LuaItemCount("o_mission218")==5)then
					LuaSay("���ѵõ�5���Թ�������ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	end

-----------------------------------------------------�ռ��Թ���
elseif(LuaQueryTask("Txmg1")==14)then
	if(LuaQueryTask("xmglv")==2)then
		if(LuaItemCount("o_mission219")<10)then
			LuaGive("o_mission219",1)
			if(LuaItemCount("o_mission219")==10)then
				LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
				LuaOtherSendMenu()
			end
		end
	elseif(LuaQueryTask("xmglv")==3)then
		local r=LuaRandom(10)
		if(r<=9)then
			if(LuaItemCount("o_mission219")<10)then
				LuaGive("o_mission219",1)
				if(LuaItemCount("o_mission219")==10)then
					LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	elseif(LuaQueryTask("xmglv")==4)then
		local r=LuaRandom(10)
		if(r<=6)then
			if(LuaItemCount("o_mission219")<10)then
				LuaGive("o_mission219",1)
				if(LuaItemCount("o_mission219")==10)then
					LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	elseif(LuaQueryTask("xmglv")==5)then
		local r=LuaRandom(10)
		if(r<=4)then
			if(LuaItemCount("o_mission219")<10)then
				LuaGive("o_mission219",1)
				if(LuaItemCount("o_mission219")==10)then
					LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end	
	elseif(LuaQueryTask("xmglv")==6)then
		local r=LuaRandom(10)
		if(r<=3)then
			if(LuaItemCount("o_mission219")<10)then
				LuaGive("o_mission219",1)
				if(LuaItemCount("o_mission219")==10)then
					LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end

	elseif(LuaQueryTask("xmglv")==7)then
		local r=LuaRandom(10)
		if(r<=2)then
			if(LuaItemCount("o_mission219")<10)then
				LuaGive("o_mission219",1)
				if(LuaItemCount("o_mission219")==10)then
					LuaSay("���ѵõ�10���Թ��𶧣�ȥ���Թ�ʹ�߰�")
					LuaOtherSendMenu()
				end
			end
		end
	end
---------------------------------------------------------------------------------------------------------------


end

return 1
end