--Tjjlyi_nTotalMonsterNum = 201 
function OnDie()

	local r = LuaRandom(70)
	if(r<1)then     --小于1或2
		if (LuaItemCount("o_mission413") < 1) then
		LuaGive("o_mission413",1)
			if(LuaItemCount("o_mission413")==1) then
			LuaSay("你已得到1个@2叛军令牌@0，下一关你打怪将会轻松很多！")
			LuaOtherSendMenu()
			end
		end
	end

return 1
end