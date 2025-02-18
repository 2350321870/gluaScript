NPCINFO = {
serial= "27",
base_name="dphuoji1",
icon=2509,
NpcMove=2509,
name= "当铺伙计【寄卖】", 
iconaddr=1, 
butt="15|10|63", 
name_color = "CEFFCE" , 
lastsay="贵重的物品拿来寄卖吧",
have_resell_item=1,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0	--灰色问号
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","") 
	if(LuaQueryTask("Tcoc")==13)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
	end
	AddTopSayMenuItem("@3寄卖","buy1")
	AddTopSayMenuItem("@3寄卖元宝","buy2")
	AddTopSayMenuItem("@7获取收益","getagentmoney")
	AddTopSayMenuItem("@7获取超时物品","gettimeoutagent")
	AddTopSayMenuItem("@7寄卖说明","shuoming")
	     
--以上为无符号部分
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1

--LuaCheckTimeOutAgentList() // 获取超时物品 add by zzq 2011-12-23
--LuaSellYuanBao() // 寄卖元宝 add by zzq 2011-12-23
--LuaGetAgentMoney() // 获取寄卖收益 add by zzq 2011-12-23
--LuaSellItem() // 寄卖物品 add by zzq 2011-12-23
--elseif(answer=="buy1") then
	--LuaSellItem()
elseif(answer=="buy2") then    
	LuaSellYuanBao()
elseif(answer=="gettimeoutagent") then
	LuaCheckTimeOutAgentList()
elseif(answer=="getagentmoney") then
	LuaGetAgentMoney()
elseif(answer=="shuoming")then
	LuaSay("@7寄卖物品@0：选择@3寄卖@0，再选包里要寄卖的东西，确定后输入单价和数量就可以了。寄卖收取50-5%铜币的手续费，交易成功后缴纳5%的交易税。")
	LuaSay("@7寄卖元宝@0：选择@3寄卖元宝@0，输入单价和数量，二次确认后就可以了。寄卖元宝收取最低20-2%铜币的手续费，交易成功后缴纳5%的交易税。")	
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@5寄卖店@0：点击菜单再点击寄卖键了，内有玩家寄卖的东西，在任何地方都能打开，价格可能还便宜哦。")
	else
		LuaSay("@5寄卖店@0：右键系统菜单3就是寄卖店了，内有玩家寄卖的东西，在任何地方都能打开，价格可能还便宜哦。")
	end
	LuaSay("@7获取收益@0：如果你卖掉了寄卖的东西，不管在线卖掉的还是不在线卖掉的都来找我@7获取收益@0即可。")
	LuaSay("@1注意！寄卖店国与国之间是不相通的，在哪国寄卖的去哪国领收益，这些你记清楚了，就省下麻烦GM了。")
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("当铺伙计：点击自动寻路，英雄开始您的征程吧")
	else
		LuaSay("当铺伙计：首先按下确认键，然后按下5键，就可以打开世界地图了。")
	end
elseif(answer=="Tcoc")then---------------------商贾向背7 Tcoc===13
	if(LuaQueryTask("Tcoc")==13)then 
		LuaSay("这个嘛,组建商会的事容我再考虑考虑吧.")
		LuaSetTask("Tcoc",14)
		if(level>=25)then
			LuaGive("coin",1000,"Tcoc")
		else	
			LuaGive("coin",800,"Tcoc")
		end
		UpdateMenu()
	end

end
LuaSendMenu()
return 1
end
