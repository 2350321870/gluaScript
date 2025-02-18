function do_use()
local szMapId=MapName()
if(szMapId=="lu_jknj" or szMapId=="lu_jkcn" or szMapId=="lu_jkdj" or szMapId=="lu_wds" or szMapId=="lu_sz" or szMapId=="lu_bfjy"
	or szMapId=="lu_jyqs" or szMapId=="lu_fszb" or szMapId=="lu_fsda" or szMapId=="lu_lyjw" or szMapId=="lu_mwzl" or szMapId=="lu_tyc")then--开放记的加啊
	if(IsMapHost(szMapId)=="true")then
		AddMenuItem("派钱1万铜","nc_combine o_mission091 a","施恩令")
		AddMenuItem("派钱5万铜","nc_combine o_mission091 b","施恩令")
		AddMenuItem("派钱10万铜","nc_combine o_mission091 c","施恩令")
	else
	LuaSay("非本地领主派钱,获得声望没有领主多")
		AddMenuItem("派钱1万铜","nc_combine o_mission091 a","施恩令")
		AddMenuItem("派钱5万铜","nc_combine o_mission091 b","施恩令")
		AddMenuItem("派钱10万铜","nc_combine o_mission091 c","施恩令")
	end
else	LuaShowNotify("提示：本地图未开放派钱，暂开放洛阳城之前除BOSS地图、主城地图的所有地图")
end
	AddMenuItem("@9施恩令使用说明书","nc_combine o_mission091 t","施恩令")
LuaOtherSendMenu()
return 0
end
--LuaNotice("x分钟后XXX将为在XX地的玩家派钱…")—公告
--SendMoney(m,t,r,str1)—延时t分钟给当前地图所有玩家不包括派钱者发floor(m/本图人数)铜钱，零头系统吃掉，加r点声望
function nc_combine(type)
if(type=="t")then
	LuaSay("使用施恩令后,会把你要派送的钱平均分送给所在地图的其他玩家")
	LuaSay("派钱会得到一定声望,当前地图领主使用会比非领主获得更多的声望")
else
	if(GetCurrentTime()-LuaPublicQuery("taxtime")>600)then
		if(IsMapHost(MapName())=="true")then	percent=1
		else	percent=0.6
		end
		if(type=="a")then	sendM=10000	repu=5*percent
		elseif(type=="b")then	sendM=50000	repu=25*percent
		elseif(type=="c")then	sendM=100000	repu=50*percent
		end
		if(sendM<=LuaItemStatusNormalCount("coin"))then
			SendMoney(sendM,5,repu,""..LuaQueryStr("name").."5分钟后将为在"..MapShowName().."的玩家派钱…")--延时t分钟给当前地图所有玩家不包括派钱者发floor(m/本图人数)铜钱，零头系统吃掉，加r点声望
			LuaPublicSet("taxtime",GetCurrentTime())--与收税共用CD
			DelItem("o_mission091",1)
		else	LuaSay("你身上的钱不足"..sendM..".")
		end
	else	LuaSay("刚刚有人行使过权力了,请稍后再用吧.收税与派钱存在公共的10分钟使用间隔.")
	end
end
LuaOtherSendMenu()
return 1
end
