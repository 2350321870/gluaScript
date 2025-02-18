NPCINFO = {
serial= "161" ,
icon= 2590 ,
NpcMove=2590,
name= "边境布告牌" , 
iconaddr=1, 
butt="30|10|72", 
name_color ="CEFFCE" , 
lastsay="一直向右走是出口",
LuaType=1,
}
function do_talk(answer)                          
if(answer=="ask") then
	havetask =0
	AddTopSayMenuItem("@7国家说明","")
        AddTopSayMenuItem("@3我要回国","4")
	AddTopSayMenuItem("国家系统介绍","1")
	AddTopSayMenuItem("国家区别介绍","2")
	AddTopSayMenuItem("国战介绍","3")
	AddTopSayMenuItem("@3通缉令","5")
	return 1                                          


elseif(answer=="1") then
	LuaSay("头上显示的字是国家名字，当你等级到20级后，进入别的国家将会从边境进入，边境地图一直向右可以进入该国，如果想变成该国家的人必须到本国宫殿申请叛国。")
	LuaSay("外国地图名字都会有个国家名字，请注意下自己是否在外国！")
elseif(answer=="2") then
	LuaSay("你在外国杀人等级差距20内可不会受到PK惩罚！在外国将不能使用飞世界切图，无法看到自己寄卖元宝，无自己帮派信息，不能加入外国帮派，")
elseif(answer=="3") then
	LuaSay("每晚20点-21点可以到边境地图右边的边境管理员处申请入侵该国家！还可以直接去洛阳偷该国砖回国换铜币奖励！金砖可以换取大量铜币！手头紧的话可以去试试！")
	LuaSay("在国战中获得的积分可以回去宫殿处战争使者处换取威武的称号！和金钱，但必须积分要达到50以上！")
elseif(answer=="4") then
	LuaSay("您不小心出了国！来到了其他国家的边境。在外国不能飞世界。")
	LuaSay("您@2如果想在这个国家逛逛@0，那就@2一直向右走@0，大概走3000多米就能找到@3边境管理员@0，可以进入您现在所在的国家。")
	LuaSay("如果您想要回国，这里为您提供2种不同的回国方式：")
	AddMenuItem("@7请选择","")
	AddMenuItem("@3手动下线回国","sd")
	AddMenuItem("@3在线换国","cs")
elseif(answer=="5") then
	LuaSay("今天暂无通缉的外国人供你杀！")	
elseif(answer=="cs") then
	if(LuaItemCount("o_tgws") >=1) then 
		ChangeServer()
	else
		LuaSay("边境管理员：你身上无通关文书，不能在线换国。你是否愿意购买张文书！20个@9通宝@0可换取一张永久文书")
                AddMenuItem("@7你现在想要：","")
		AddMenuItem("@5我要换张文书","yes1")
		AddMenuItem("@5暂时不用","no1")
	end
	elseif(answer=="yes1")then
		if(LuaItemCount("o_gold1y") >=20) then 
			DelItem("o_gold1y",20)
			LuaGive("o_tgws",1)
		elseif(LuaItemCount("o_gold2y") >=2)then
			DelItem("o_gold2y",2)  
			LuaGive("o_tgws",1)
		else
			LuaSay("边境管理员：你没有足够的@9通宝@0，如何换文书?@9通宝@0可以在商城中购买！")
		end
	       
	elseif(answer=="no1")then
		LuaSay("没有通关文书者，要进入他国，必须下线，选择国家，再上线，才能到其他国家。回到国家后才能使用世界！")

	elseif(answer=="sd")then
		LuaSay("您现在可以@2下线@0，然后@2重新登录@0，在@2线路选择列表@0中选择@2和自己头顶显示的国家名一致@0的线路！")
		LuaSay("进入后就回到了自己的国家边境，然后@2一直向右走@0！大概走3000多米就能找到@3边境管理员@0，可以进入您自己的国家。")
end
LuaSendMenu()
return 1
end 