--Tjjlyi_nTotalMonsterNum = 201 
function OnDie()

	local r = LuaRandom(70)
	if(r<1)then     --С��1��2
		if (LuaItemCount("o_mission413") < 1) then
		LuaGive("o_mission413",1)
			if(LuaItemCount("o_mission413")==1) then
			LuaSay("���ѵõ�1��@2�Ѿ�����@0����һ�����ֽ������ɺܶ࣡")
			LuaOtherSendMenu()
			end
		end
	end

return 1
end