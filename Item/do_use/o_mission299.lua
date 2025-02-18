function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	AddMenuItem("元宵攻击祝符","nc_combine o_mission299 a","选择元宵祝符")
	AddMenuItem("元宵防御祝符","nc_combine o_mission299 b","选择元宵祝符")
	AddMenuItem("元宵经验祝符","nc_combine o_mission299 c","选择元宵祝符")
	AddMenuItem("元宵贪婪祝符","nc_combine o_mission299 d","选择元宵祝符")
	AddMenuItem("元宵免战祝符","nc_combine o_mission299 e","选择元宵祝符")


LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_mission292",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="b")then
	LuaGive("o_mission293",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="c")then
	LuaGive("o_mission294",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="d")then
	LuaGive("o_mission295",1,"Tyuanx")
	DelItem("o_mission299",1)
elseif(type=="e")then
	LuaGive("o_mission296",1,"Tyuanx")
	DelItem("o_mission299",1)
else
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()

end
