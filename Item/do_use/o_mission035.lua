function do_use()
local szMapId=MapName()
if(szMapId=="lu_jkcn" or szMapId=="lu_jkdj" or szMapId=="lu_wds" or szMapId=="lu_bfjy"
	or szMapId=="lu_wszb" or szMapId=="lu_chp")then--开放记的加啊
	if(IsMapHost(szMapId)=="true")then	
		AddMenuItem("收税200[对10000以上玩家]","nc_combine o_mission035 a","征税令")--[对10000以上玩家]
		AddMenuItem("收税500[对25000以上玩家]","nc_combine o_mission035 b","征税令")
		AddMenuItem("收税1000[对50000以上玩家]","nc_combine o_mission035 c","征税令")
	else	LuaSay("非本地领主在此收税,只能收领主定税的一半")
		AddMenuItem("收税100[对10000以上玩家]","nc_combine o_mission035 a","征税令")--[对10000以上玩家]
		AddMenuItem("收税250[对25000以上玩家]","nc_combine o_mission035 b","征税令")
		AddMenuItem("收税500[对50000以上玩家]","nc_combine o_mission035 c","征税令")
	end
else	LuaShowNotify("提示：本地图未开放征税，现在开放的地图有建康城南、建康东郊、五斗山、山寨、北府军营、渭水之滨、参合坡")
end
	AddMenuItem("@9征税令使用说明书","nc_combine o_mission035 t","征税令")
LuaOtherSendMenu()
return 0
end
function nc_combine(type)
if(type=="t")then
	LuaSay("使用收税令后,会对所在地图的其他玩家进行收税,收税规则收富不收穷,如选择收200时,如果当前地图有10个玩家可以收,则共可收到2000铜")
	LuaSay("收税规则收富不收穷,如选择收200时,如果当前地图的10个玩家中有5个身上不足10000铜,则只能收到1000铜")
	LuaSay("当前地图领主收税会比非领主收到更多的税金")
else
	if(GetCurrentTime()-LuaPublicQuery("taxtime")>600)then--收税派钱公用公用CD10min,所有玩家公用,A玩家刚收完税,10min内任何人不能再次征税
		if(LuaQueryPersonInMap(MapName())>1)then
			if(IsMapHost(MapName())=="true")then	taxper=1
			else	taxper=0.5
			end
			if(type=="a")then	taxmorethen=10000	taxmoney=200*taxper
			elseif(type=="b")then	taxmorethen=25000	taxmoney=500*taxper
			elseif(type=="c")then	taxmorethen=50000	taxmoney=1000*taxper
			end
			--taxmsg={
			--""..LuaQueryStr("name").."大喊:收税了收税了,钱多于"..taxmorethen.."的,每人交税"..taxmoney.."铜,谁敢偷税漏税逃税抗税,叫城管队砸你们的摊子",
			--}
			--local r=LuaRandom(1)+1
			LocalMsg(LuaQueryStr("name").."大喊:收税了收税了,钱多于"..taxmorethen.."的,每人交税"..taxmoney.."铜,谁敢偷税漏税逃税抗税,叫城管队砸你们的摊子")
			GetRevenue(taxmorethen,taxmoney)--GetRevenue(N,M)N为收税标准，M为收税量
			LuaPublicSet("taxtime",GetCurrentTime())
			DelItem("o_mission035",1)--自删一个
		else	LuaSay("现在本地图除你之外没有别人,还是别使用了")
		end
	else	LuaSay("刚刚有人行使过权力了,请稍后再用吧.收税与派钱存在公共的10分钟使用间隔.")
	end
end
LuaOtherSendMenu()
--return 1
end
