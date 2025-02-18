function do_use()
if(EquipInfo(10)~="")then
	AddMenuItem("褐色","nc_combine o_cwmbs2 a","宠物名变色【高级】")
	AddMenuItem("青蓝","nc_combine o_cwmbs2 b","宠物名变色【高级】")
	AddMenuItem("蓝色","nc_combine o_cwmbs2 c","宠物名变色【高级】")
	AddMenuItem("紫色","nc_combine o_cwmbs2 d","宠物名变色【高级】")
	AddMenuItem("粉红","nc_combine o_cwmbs2 e","宠物名变色【高级】")
	AddMenuItem("枫叶血红","nc_combine o_cwmbs2 f","宠物名变色【高级】")
	AddMenuItem("高贵金黄","nc_combine o_cwmbs2 g","宠物名变色【高级】")
	AddMenuItem("优雅粉红","nc_combine o_cwmbs2 h","宠物名变色【高级】")
	AddMenuItem("活泼草绿","nc_combine o_cwmbs2 i","宠物名变色【高级】")
	AddMenuItem("酷酷纯黑","nc_combine o_cwmbs2 j","宠物名变色【高级】")
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
	DelItem("o_cwmbs2",1)
elseif(type=="b")then
    LuaPetSet("name_color","00FFFF")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="c")then
    LuaPetSet("name_color","0000C8")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="d")then
    LuaPetSet("name_color","800080")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="e")then
    LuaPetSet("name_color","FF00FF")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="f")then
    LuaPetSet("name_color","FF0000")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="g")then
    LuaPetSet("name_color","FFCC00")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="h")then
    LuaPetSet("name_color","FF99CC")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="i")then
    LuaPetSet("name_color","00FF00")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)
elseif(type=="j")then
    LuaPetSet("name_color","000000")
    LuaSay("提示：你的宠物名颜色已经改变！如果没立刻刷新，请卸载下宠物，再装备上！")
	DelItem("o_cwmbs2",1)

end
LuaOtherSendMenu()
--return 1
end
