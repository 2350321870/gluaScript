function do_use()
if(EquipInfo(10)~="")then
	AddMenuItem("褐色","nc_combine o_cwmbs a","宠物名变色【普通】")
	AddMenuItem("青蓝","nc_combine o_cwmbs b","宠物名变色【普通】")
	AddMenuItem("蓝色","nc_combine o_cwmbs c","宠物名变色【普通】")
	AddMenuItem("紫色","nc_combine o_cwmbs d","宠物名变色【普通】")
	AddMenuItem("粉红","nc_combine o_cwmbs e","宠物名变色【普通】")
else
	LuaSay("提示：请先把宠物装备在身上！")
end
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
 	LuaPetSet("name_color","808000")
 	LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs",1)
elseif(type=="b")then
    LuaPetSet("name_color","00FFFF")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs",1)
elseif(type=="c")then
    LuaPetSet("name_color","0000C8")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs",1)
elseif(type=="d")then
    LuaPetSet("name_color","800080")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs",1)
elseif(type=="e")then
    LuaPetSet("name_color","FF00FF")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs",1)

end
LuaOtherSendMenu()
--return 1
end
