function OnDie()
LuaGive("o_douyu",20,"FB_Lv60_over")
LuaAddJx("combat_exp",level*100,"FB_Lv60_over")
if(QueryAllTeamMemberTaskSuccess("FBTGJL",1)==1)then
SetAllTeamMemberValueTask("FBTGJL",10)
end 
if(TeamCount()>=2  ) then
AddAllTeamMemberValueTask("ymdxintime",1)
else
LuaAddTask("ymdxintime",1)
end	
--[[if(LuaFreeBag()>1)then	
	local r2=LuaRandom(100)

		if(r2<3) then
		LuaGive("e_book168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��׹")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵѥ")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes168t",1,3,"PublicBeta_106")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		end
	else
		LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
	end]]
LuaOtherSendMenu()
return 1
end