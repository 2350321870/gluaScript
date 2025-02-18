NPCINFO = { 
serial="40" ,
base_name="simadaozi" ,
icon=2533,
NpcMove=2533,
name="司马道子" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE",
lastsay="签国债一月翻5倍",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
		havetask =0 
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7任务列表","")
		if(LuaQueryTask("T290") ==0 and level>=21)then
			AddTopSayMenuItem("望子成龙【剧情】","T290")
			havetask =1
		end 
		if(LuaQueryTask("T291") ==0 and LuaQueryTask("T850") ==99)then
			AddTopSayMenuItem("司马的报复【剧情】","T291")
			havetask =1
		end  
--		if(LuaQueryTask("T854")==0 and LuaQuery("level")>=20  and LuaQuery("level")<25) then
--			AddTopSayMenuItem("贪财之人【循环】","T854")
--			havetask=1
--		end
--		if(LuaQueryTask("T855")==0 and level>=21) then
--			AddTopSayMenuItem("见钱眼开【剧情】","T855")
---			havetask=1
--		end
		if((LuaQueryTask("Tsnpc_27")==1 or LuaQueryTask("Tsnpc_27")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_27")
			if(LuaQueryTask("Tsnpc_27")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_27")==1 or LuaQueryTask("Tenpc_27")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_27")
			if(LuaQueryTask("Tenpc_27")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T851")==1 or LuaQueryTask("T851")==2 or LuaQueryTask("T851")==3 or LuaQueryTask("T851")==4) then
			AddTopSayMenuItem("@2冤屈【剧情】","T851")
			if (LuaItemCount("o_mission362")>=1 or LuaQueryTask("T851")==1)then
			havetask =2
			end
		end
		if(LuaQueryTask("T404") == 2 or LuaQueryTask("T404") == 3)then
			AddTopSayMenuItem("@2大权在握【剧情】","T404")
			if (LuaQueryTask("T404") == 2)then
			havetask =2
			end
		end
--		if(LuaQueryTask("T854") == 1)then
--			AddTopSayMenuItem("@2贪财之人【循环】","T854")
--			if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
--			havetask =2
--			end
--		end
--		if(LuaQueryTask("T855") == 1)then
--			AddTopSayMenuItem("@2见钱眼开【剧情】","T855")
--			if(LuaItemCount("coin")>=5000) then
--			havetask =2
--			end
--		end
		if(LuaQueryTask("T115")==1 and LuaQueryTask("T115A")==0) then
			AddTopSayMenuItem("@2父子相残【剧情】","T115A")
			havetask =2
		end
		if(LuaQueryTask("T290") ==1) then
			AddTopSayMenuItem("@2望子成龙【剧情】@0","T290") 
		end
		
		if(LuaQueryTask("T291") ==1)then
			AddTopSayMenuItem("@2司马的报复【剧情】","T291")
		end
		
		AddTopSayMenuItem("@3国债","Tguozhai")
		--if(QueryTitle("title")>0)then
			--AddTopSayMenuItem("@7名人之禄【每日】","Tforce")
			--havetask =1
		--end
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			if(level>=40)then
				AddTopSayMenuItem("@7排行十大【每日】","T932")
			elseif(level>=35)then
				AddTopSayMenuItem("@2[新]@0@7排行十大【每日】","T932")
			end
				
		end
		----------------------   每日登陆奖励  连续登陆奖励
		if(LuaQuery("level")>=25) then
			AddTopSayMenuItem("@7连续登陆奖励","Teveryday_lx")
		elseif(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@2[新]@0@7连续登陆奖励","Teveryday_lx")
		end
		if(LuaQuery("level")>=25) then
			AddTopSayMenuItem("@7每日登陆奖励","Teveryday")
		elseif(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@7@2[新]@0每日登陆奖励","Teveryday")
		end


if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")----|
else
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1


-----------------------------------国债一级菜单-----------------------------------
elseif(answer=="Tguozhai")then
	Tgz_money1=LuaQueryTask("Tgz_money1")		--券额
	Tgz_getday1=LuaQueryTask("Tgz_getday1")		--gettype
	Tgz_count1=LuaQueryTask("Tgz_count1")		--还能领收益次数
	Tgz_lastget1=LuaQueryTask("Tgz_lastget1")		--最后领取时间vlaue 12xxxxxxxx
	Tgz_lastgetday1=LuaQueryStrTask("Tgz_lastgetday1")	--最后领取时间string "xxxx-xx-xx"
	Tgz_firstget1=LuaQueryTask("Tgz_firstget1")		--首签时间
	Tgz_money2=LuaQueryTask("Tgz_money2")
	Tgz_getday2=LuaQueryTask("Tgz_getday2")
	Tgz_count2=LuaQueryTask("Tgz_count2")
	Tgz_lastget2=LuaQueryTask("Tgz_lastget2")
	Tgz_lastgetday2=LuaQueryStrTask("Tgz_lastgetday2")
	Tgz_firstget2=LuaQueryTask("Tgz_firstget2")
	Tgz_money3=LuaQueryTask("Tgz_money3")
	Tgz_getday3=LuaQueryTask("Tgz_getday3")
	Tgz_count3=LuaQueryTask("Tgz_count3")
	Tgz_lastget3=LuaQueryTask("Tgz_lastget3")
	Tgz_lastgetday3=LuaQueryStrTask("Tgz_lastgetday3")
	Tgz_firstget3=LuaQueryTask("Tgz_firstget3")

	if(Tgz_getday1==7)then
	Tgz_once1=80
	elseif(Tgz_getday1==24)then
	Tgz_once1=100
	else
	Tgz_once1=30
	end
	if(Tgz_getday2==7)then
	Tgz_once2=80
	elseif(Tgz_getday2==24)then
	Tgz_once2=100
	else
	Tgz_once2=30
	end
	if(Tgz_getday3==7)then
	Tgz_once3=80
	elseif(Tgz_getday3==24)then
	Tgz_once3=100
	else
	Tgz_once3=30
	end
	--LuaSay("@3洪福齐天,目前国库充足,百姓安居乐业,暂时不发行周国债")
	LuaSay("@3洪福齐天,承蒙各大帮会相助，国库不再空如往日，目前国债仅发行短期国债。@1详情看国债介绍@0。")
	AddMenuItem("@7国债","")
	AddMenuItem("@5国债协约介绍","Tguozhai_intro")
	AddMenuItem("@5领取国债收益","Tguozhai_get")
	AddMenuItem("@5国债账户签约","Tguozhai_pay")
	AddMenuItem("@5个人账户信息","Tguozhai_personal")
-----------------------国债协约介绍----------------------
	elseif(answer=="Tguozhai_intro")then
		LuaSay("@7短期国债1个月效益增值3-5.4倍。")
		AddMenuItem("@7国债介绍","")
		AddMenuItem("@7如何买国债","Tguozhai_how")
		AddMenuItem("@7国债协议有几种","Tguozhai_type")
		AddMenuItem("@7我能获得多少收益","Tguozhai_howiget")
		AddMenuItem("返回","Tguozhai")
		UpdateMenu()
	elseif(answer=="Tguozhai_how")then
		LuaSay("@31.持有国债券可在本朝丞相司马道子处进行账户签约充值，国债券在元宝商城其它里购买。")
		LuaSay("@32.国债券种类:@7青纱券@3100@g,@5蓝绸券@31000@g,@3金帛券@310000@g。")
		LuaSay("@33.最多可同时充三份协约，三份协约已满后可以新签契约替换掉原有协约，但原有协约未领取的收益将失去。")
		AddMenuItem("返回","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_type")then
		LuaSay("@31.可根据个人喜好选择@6[每4小时]@0或@7[每天]@0领取收益。")
		LuaSay("@32.@6[每4小时]:@3每次领取券面额值30倍的铜币,可领取一个月,总收益最多领取元宝直接兑铜币5.4倍的铜币。")
		LuaSay("@33.@7[每天]:@3每次领取券面额值100倍的铜币,可领取一个月，总收益最多领取元宝直接兑铜币3倍的铜币。")
		LuaSay("@1按指定时间间隔来领取收益，超时不补，每4小时领一次可获得最大收益。")                            
		AddMenuItem("返回","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_howiget")then
		AddMenuItem("@7收益介绍","")
		AddMenuItem("@7青纱券签@6[每4小时]","Tguozhai_q1_3d")
		AddMenuItem("@7青纱券签@7[每天]","Tguozhai_q1_7d")
		AddMenuItem("@5蓝绸券签@6[每4小时]","Tguozhai_q2_3d")
		AddMenuItem("@5蓝绸券签@7[每天]","Tguozhai_q2_7d")
		AddMenuItem("@3金帛券签@6[每4小时]","Tguozhai_q3_3d")
		AddMenuItem("@3金帛券签@7[每天]","Tguozhai_q3_7d")
		AddMenuItem("返回","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_q1_3d")then
		LuaSay("@7青纱券@6[每4小时]@0，每次领取@13000铜币@0，领取最小间隔4小时，期限1个月，满1个月最多可积累领取@1540000铜币")
		AddMenuItem("@7青纱券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q1_7d")then
		LuaSay("@7青纱券@7[每天]@0，每天领取@110000铜币@0，过期不补，期限1个月，满1个月最多可积累领取@1300000铜币")
		AddMenuItem("@7青纱券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q2_3d")then
		LuaSay("@5蓝绸券@6[每4小时]@0，每次领取@130000铜币@0，领取最小间隔4小时，期限1个月，满1个月最多可积累领取@15400000铜币")
		AddMenuItem("@7蓝绸券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q2_7d")then
		LuaSay("@5蓝绸券@7[每天]@0，每天领取@1100000铜币@0，过期不补，期限1个月，满1个月最多可积累领取@13000000铜币")
		AddMenuItem("@7蓝绸券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q3_3d")then
		LuaSay("@3金帛券@6[每4小时]@0，每次领取@1300000铜币@0，领取最小间隔4小时，期限1个月，满1个月最多可积累领取@154000000铜币")
		AddMenuItem("@7金帛券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q3_7d")then
		LuaSay("@3金帛券@7[每天]@0，每天领取@11000000铜币@0,过期不补,期限1个月，满1个月最多可积累领取@130000000铜币")
		AddMenuItem("@7金帛券","")
		AddMenuItem("返回","Tguozhai_howiget")
		UpdateMenu()
------------------国债账户充值-------------------
elseif(answer=="Tguozhai_pay")then	--存
	gzj1=LuaItemStatusNormalCount("o_zhaiquan1y")
	gzj2=LuaItemStatusNormalCount("o_zhaiquan2y")
	gzj3=LuaItemStatusNormalCount("o_zhaiquan3y")
	if(gzj1==0 and gzj2==0 and gzj3==0)then
		LuaSay("买债券到商城，买完后找司马道子。")
	else
		LuaSay("@1签国债前一定要先看@2国债介绍@0以免造成不必要的损失。")
	end
	AddMenuItem("@7签定国债","")
	AddMenuItem("@7青纱券","Tguozhai_q1")
	AddMenuItem("@5蓝绸券","Tguozhai_q2")
	AddMenuItem("@3金帛券","Tguozhai_q3")
	AddMenuItem("返回","Tguozhai")
	elseif(answer=="Tguozhai_q1")then
		if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
		Tgz_money=100
			AddMenuItem("@7选择收益类型","")
			AddMenuItem("每4小时领取收益","Tguozhai_3d")
			AddMenuItem("每天领取收益","Tguozhai_7d")
		else
			LuaSay("你没有带@7青纱券@0，到@2商城@0可以购买@7青纱券。")
		end
	elseif(answer=="Tguozhai_q2")then
		if(LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
		Tgz_money=1000
			AddMenuItem("@7选择收益类型","")
			AddMenuItem("每4小时领取收益","Tguozhai_3d")
			AddMenuItem("每天领取收益","Tguozhai_7d")
		else
			LuaSay("你没有带@5蓝绸券@0，到@2商城@0可以购买@5蓝绸券。")
		end
	elseif(answer=="Tguozhai_q3")then
		if(LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
		Tgz_money=10000
			AddMenuItem("@7选择收益类型","")
			AddMenuItem("每4小时领取收益","Tguozhai_3d")
			AddMenuItem("每天领取收益","Tguozhai_7d")
		else
			LuaSay("你没有带@3金帛券@0，到@2商城@0可以购买@3金帛券。")
		end
	elseif(answer=="Tguozhai_3d")then
		Tgz_getday=4--每4小时领
		Tgz_once=30
		Tgz_count=180--最多180次
		LuaSay("@6[每4小时]@0领取@1"..(Tgz_money*Tgz_once).."铜币@0，可领取1个月，最多领取@3"..(Tgz_money*Tgz_once*Tgz_count).."铜币@0")
		if(Tgz_count1==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约一","Tguozhai_m1")
			AddMenuItem("不添加","no")
		elseif(Tgz_count2==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约二","Tguozhai_m2")
			AddMenuItem("不添加","no")
		elseif(Tgz_count3==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约三","Tguozhai_m3")
			AddMenuItem("不添加","no")
		else
			LuaSay("@1已签满3份债券协约！@2可以用新的债券协约替换掉旧的！但是会失去旧的收益！@7是否要替换？")
			AddMenuItem("@7替换协约","")
			AddMenuItem("不替换","no")
			AddMenuItem("@1替换协约一","Tguozhai_m1")
			AddMenuItem("@1替换协约二","Tguozhai_m2")
			AddMenuItem("@1替换协约三","Tguozhai_m3")
		end
	elseif(answer=="Tguozhai_7d")then
		Tgz_getday=24--每天领
		Tgz_once=100
		Tgz_count=30--最多30次
		LuaSay("@7[每天]@0领取@1"..(Tgz_money*Tgz_once).."铜币@0，可领取1个月，最多领取@3"..(Tgz_money*Tgz_once*Tgz_count).."铜币@0")
		if(Tgz_count1==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约一","Tguozhai_m1")
			AddMenuItem("不添加","no")
		elseif(Tgz_count2==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约二","Tguozhai_m2")
			AddMenuItem("不添加","no")
		elseif(Tgz_count3==0)then
			AddMenuItem("@7添加协约","")
			AddMenuItem("添加于协约三","Tguozhai_m3")
			AddMenuItem("不添加","no")
		else
			LuaSay("@1已签满3份债券协约！@2可以用新的债券协约替换掉旧的！但是会失去旧的收益！替换前请查看个人账户信息！@7是否要替换？")
			AddMenuItem("@7替换协约","")
			AddMenuItem("不替换","no")
			AddMenuItem("@1替换协约1","Tguozhai_m1")
			AddMenuItem("@1替换协约2","Tguozhai_m2")
			AddMenuItem("@1替换协约3","Tguozhai_m3")
		end
----------------------------------
	elseif(answer=="Tguozhai_m1")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money1",Tgz_money)
			LuaSetTask("Tgz_getday1",Tgz_getday)
			LuaSetTask("Tgz_count1",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget1",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaSetTask("Tgz_firstget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())
			LuaSetTask("Tgz_lastgetday1",GetCurrentDay())
			LuaSay("协约1签定...成功!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[国债协约1]：@8债券额：@3"..Tgz_money.."@0@g；收益类型：每@7"..Tgz_getday.."小时@0领取@3"..(Tgz_money*Tgz_once).."铜币")
			end
	elseif(answer=="Tguozhai_m2")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money2",Tgz_money)
			LuaSetTask("Tgz_getday2",Tgz_getday)
			LuaSetTask("Tgz_count2",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget2",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaSetTask("Tgz_firstget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--memorytime
			LuaSetTask("Tgz_lastgetday2",GetCurrentDay())
			LuaSay("协约2签定...成功!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[国债协约2]：@8债券额：@3"..Tgz_money.."@0@g；收益类型：每@7"..Tgz_getday.."小时@0领取@3"..(Tgz_money*Tgz_once).."铜币")
			end
	elseif(answer=="Tguozhai_m3")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money3",Tgz_money)
			LuaSetTask("Tgz_getday3",Tgz_getday)
			LuaSetTask("Tgz_count3",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget3",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaSetTask("Tgz_firstget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--memorytime
			LuaSetTask("Tgz_lastgetday3",GetCurrentDay())
			LuaSay("协约3签定...成功!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[国债协约3]：@8债券额：@3"..Tgz_money.."@0@g；收益类型：每@7"..Tgz_getday.."小时@0领取@3"..(Tgz_money*Tgz_once).."铜币")
			end
-----------------------领取国债收益------------------------
elseif(answer=="Tguozhai_get")then	--取
	LuaSay("按时来领取收益！过期不补！")
	AddMenuItem("@7领取收益","")
	if(Tgz_count1~=0 and LuaQueryTask("Tgz_money1")~=0)then
		AddMenuItem("协约1收益领取","Tguozhai_get1")
	end
	if(Tgz_count2~=0 and LuaQueryTask("Tgz_money2")~=0)then
		AddMenuItem("协约2收益领取","Tguozhai_get2")
	end
	if(Tgz_count3~=0 and LuaQueryTask("Tgz_money3")~=0)then
		AddMenuItem("协约3收益领取","Tguozhai_get3")
	end
	if(Tgz_count1==0 and Tgz_count2==0 and Tgz_count3==0)then
		LuaSay("你没有签定国债券协约，到商城购买债券并签约后才能领取收益。")
	else
		AddMenuItem("返回","Tguozhai")
	end
	elseif(answer=="Tguozhai_get1")then
	Tgz_lastget1=LuaQueryTask("Tgz_lastget1")
	Tgz_money1=LuaQueryTask("Tgz_money1")
	Tgz_count1=LuaQueryTask("Tgz_count1")
		if((GetCurrentTime()-Tgz_firstget1)/86400>=30)then
			LuaSay("你的债券已到期，如有需要，请重新购买。")
			LuaSetTask("Tgz_count1",0)
			LuaSetTask("Tgz_money1",0)
			LuaGive("coin",Tgz_money1*Tgz_once1,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget1)/3600>=Tgz_getday1)then
			LuaSetTask("Tgz_count1",Tgz_count1-1)
			if(Tgz_getday1==4)then
			LuaSetTask("Tgz_lastget1",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaGive("coin",Tgz_money1*Tgz_once1,"Tguozhai")
		else
			if(Tgz_getday1==4)then
			LuaSay("[@3债约1@0]距上次领取收益不足@74小时@0，还要等@1"..floor(240-(GetCurrentTime()-Tgz_lastget1)/60).."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约1@0]你已以领取了今天的收益，明天再来吧。")
			end
		end
	UpdateMenu()
	elseif(answer=="Tguozhai_get2")then
	Tgz_lastget2=LuaQueryTask("Tgz_lastget2")
	Tgz_money2=LuaQueryTask("Tgz_money2")
	Tgz_count2=LuaQueryTask("Tgz_count2")
		if((GetCurrentTime()-Tgz_firstget2)/86400>=30)then
			LuaSay("你的债券已到期，如有需要，请重新购买。")
			LuaSetTask("Tgz_count2",0)
			LuaSetTask("Tgz_money2",0)
			LuaGive("coin",Tgz_money2*Tgz_once2,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget2)/3600>=Tgz_getday2)then
			LuaSetTask("Tgz_count2",Tgz_count2-1)
			if(Tgz_getday2==4)then
			LuaSetTask("Tgz_lastget2",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaGive("coin",Tgz_money2*Tgz_once2,"Tguozhai")
		else
			if(Tgz_getday2==4)then
			LuaSay("[@3债约2@0]距上次领取收益不足@74小时@0，还要等@1"..floor(240-(GetCurrentTime()-Tgz_lastget2)/60).."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约2@0]你已以领取了今天的收益，明天再来吧。")
			end
		end
	UpdateMenu()
	elseif(answer=="Tguozhai_get3")then
	Tgz_lastget3=LuaQueryTask("Tgz_lastget3")
	Tgz_money3=LuaQueryTask("Tgz_money3")
	Tgz_count3=LuaQueryTask("Tgz_count3")
		if((GetCurrentTime()-Tgz_firstget3)/86400>=30)then
			LuaSay("你的债券已到期，如有需要，请重新购买。")
			LuaSetTask("Tgz_count3",0)
			LuaSetTask("Tgz_money3",0)
			LuaGive("coin",Tgz_money3*Tgz_once3,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget3)/3600>=Tgz_getday3)then
			LuaSetTask("Tgz_count3",Tgz_count3-1)
			if(Tgz_getday3==4)then
			LuaSetTask("Tgz_lastget3",GetCurrentTime())--按时记当前时
			else
			LuaSetTask("Tgz_lastget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--按天记0:00
			end
			LuaGive("coin",Tgz_money3*Tgz_once3,"Tguozhai")
		else
			if(Tgz_getday3==4)then
			LuaSay("[@3债约3@0]距上次领取收益不足@74小时@0，还要等@1"..floor(240-(GetCurrentTime()-Tgz_lastget3)/60).."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约3@0]你已以领取了今天的收益，明天再来吧。")
			end
		end
	UpdateMenu()
------------------------个人账户信息--------------------------
elseif(answer=="Tguozhai_personal")then
	AddMenuItem("@7账户信息","")
	AddMenuItem("协约1","Tguozhai_p1")
	AddMenuItem("协约2","Tguozhai_p2")
	AddMenuItem("协约3","Tguozhai_p3")
	AddMenuItem("返回","Tguozhai")
elseif(answer=="Tguozhai_p1")then
	if(Tgz_count1~=0 and (Tgz_getday1==3 or Tgz_getday1==7))then
		LuaSay("[@3国债协约1@0]：@8债券额：@3"..Tgz_money1.."@g@0；收益类型：每@7"..Tgz_getday1.."天@0领取@3"..(Tgz_money1*Tgz_once1).."铜币@0；上次领取日期：@7"..Tgz_lastgetday1.."。")
		LuaSay("期满一年将获得券值200%("..(Tgz_money1*2000)..")的收益，距期满一年还有"..(365-floor((GetCurrentTime()-Tgz_firstget1)/86400)).."天。")
	elseif(Tgz_count1~=0 and (Tgz_getday1==4 or Tgz_getday1==24))then
		if(Tgz_getday1==4)then
		LuaSay("[@3国债协约1]：@8债券额：@3"..Tgz_money1.."@0@g；收益类型：每@7"..Tgz_getday1.."小时@0领取@3"..(Tgz_money1*Tgz_once1).."铜币")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget1)/60)
			if(waittime>0)then
			LuaSay("[@3债约1@0]距上次领取收益不足@74小时@0，还要等@1"..waittime.."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约1@0]距上次领取收益已过@74小时@0，你现在可以领取收益。")
			end
		else
		LuaSay("[@3国债协约1]：@8债券额：@3"..Tgz_money1.."@0@g；收益类型：每天领取@3"..(Tgz_money1*Tgz_once1).."铜币")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget1))
			if(waittime>0)then
			LuaSay("[@3债约1@0]你已领取了今天的收益，明天可以再领。")
			else
			LuaSay("[@3债约1@0]今天还没有领取收益，你现在可以领取收益。")
			end
		end
	else
		LuaSay("协约1：@1未签或已终止。")
	end
	AddMenuItem("@7协约1","")
	AddMenuItem("返回","Tguozhai_personal")
elseif(answer=="Tguozhai_p2")then
	if(Tgz_count2~=0 and (Tgz_getday2==3 or Tgz_getday2==7))then
		LuaSay("[@3国债协约2@0]：@8债券额：@3"..Tgz_money2.."@g@0；收益类型：每@7"..Tgz_getday2.."天@0领取@3"..(Tgz_money2*Tgz_once2).."铜币@0；上次领取日期:@7"..Tgz_lastgetday2.."。")
		LuaSay("期满一年将获得券值200%("..(Tgz_money2*2000)..")的收益，距期满一年还有"..(365-floor((GetCurrentTime()-Tgz_firstget2)/86400)).."天。")
	elseif(Tgz_count2~=0 and (Tgz_getday2==4 or Tgz_getday2==24))then
		if(Tgz_getday2==4)then
		LuaSay("[@3国债协约2]：@8债券额：@3"..Tgz_money2.."@0@g；收益类型：每@7"..Tgz_getday2.."小时@0领取@3"..(Tgz_money2*Tgz_once2).."铜币")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget2)/60)
			if(waittime>0)then
			LuaSay("[@3债约1@0]距上次领取收益不足@74小时@0，还要等@1"..waittime.."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约1@0]距上次领取收益已过@74小时@0，你现在可以领取收益。")
			end
		else
		LuaSay("[@3国债协约2]：@8债券额：@3"..Tgz_money2.."@0@g；收益类型：每天领取@3"..(Tgz_money2*Tgz_once2).."铜币")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget2))
			if(waittime>0)then
			LuaSay("[@3债约1@0]你已领取了今天的收益，明天可以再领。")
			else
			LuaSay("[@3债约1@0]今天还没有领取收益，你现在可以领取收益。")
			end
		end
	else
		LuaSay("协约2：@1未签或已终止。")
	end
	AddMenuItem("@7协约2","")
	AddMenuItem("返回","Tguozhai_personal")
elseif(answer=="Tguozhai_p3")then
	if(Tgz_count3~=0 and (Tgz_getday3==3 or Tgz_getday3==7))then
		LuaSay("[@3国债协约3@0]：@8债券额：@3"..Tgz_money3.."@g@0；收益类型：每@7"..Tgz_getday3.."天@0领取@3"..(Tgz_money3*Tgz_once3).."铜币@0；上次领取日期:@7"..Tgz_lastgetday3.."。")
		LuaSay("期满一年将获得券值200%("..(Tgz_money3*2000)..")的收益，距期满一年还有"..(365-floor((GetCurrentTime()-Tgz_firstget3)/86400)).."天。")
	elseif(Tgz_count3~=0 and (Tgz_getday3==4 or Tgz_getday3==24))then
		if(Tgz_getday3==4)then
		LuaSay("[@3国债协约3]：@8债券额：@3"..Tgz_money3.."@0@g；收益类型：每@7"..Tgz_getday3.."小时@0领取@3"..(Tgz_money3*Tgz_once3).."铜币")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget3)/60)
			if(waittime>0)then
			LuaSay("[@3债约1@0]距上次领取收益不足@74小时@0，还要等@1"..waittime.."分钟@0才能领取下次收益。")
			else
			LuaSay("[@3债约1@0]距上次领取收益已过@74小时@0，你现在可以领取收益。")
			end
		else
		LuaSay("[@3国债协约3]：@8债券额：@3"..Tgz_money3.."@0@g；收益类型：每天领取@3"..(Tgz_money3*Tgz_once3).."铜币")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget3))
			if(waittime>0)then
			LuaSay("[@3债约1@0]你已领取了今天的收益，明天可以再领。")
			else
			LuaSay("[@3债约1@0]今天还没有领取收益，你现在可以领取收益。")
			end
		end
	else
		LuaSay("协约3：@1未签或已终止。")
	end
	AddMenuItem("@7协约3","")
	AddMenuItem("返回","Tguozhai_personal")
	UpdateMenu()

------------------------------------------------------------------------------------------------
elseif(answer=="Thgsc")then
	 ChangeMap("lu_huanggongsc")


elseif(answer=="liaotian") then
     LuaSay("司马道子：别看我风光无限，谁又能知道我的苦处。")
     if(LuaItemCount("o_drug_hp1")==1 and LuaItemCount("o_drug_hp2")==2 and LuaItemCount("o_drug_hp3")==3) then
	 if(LuaItemCount("o_drug_mp1")==11 and LuaItemCount("o_drug_mp2")==12 and LuaItemCount("o_drug_mp3")==13)then
	 LuaSetTask("grant",31)
	 LuaGive("coin",1,"Tquanxian")
	 end
	 end

elseif(answer=="T340") then 
		if(LuaQueryTask("T340") ==1) then
			LuaSay("司马道子：哼！他谢安送我这东西是在嘲笑我吗？别以为有点名望就了不起。") 
			LuaSay("司马道子：回去告诉@3谢安@0，我司马家的事还轮不到他姓谢的来管，司马家的天下永远就是司马家的。") 
			DelItem("o_mission009",1) 
			LuaSetTask("T340",2) 
			UpdateTopSay("回复建康主城的谢安") 
			AddLog("谢安的烦恼【剧情】",340) 
			UpdateMenu() 
		elseif(LuaQueryTask("T340") == 2 ) then
			LuaSay("司马道子：还不回去转告@4建康主城@0的@3谢安@0。")
		end
		   

elseif(answer=="Tforce")then
	LuaSay("已被我主上赐予称号者,每日皆可领取一次行使权力的令牌,本相很忙,只在每日12:00后发放,错过领取的责任自负")
	if(GetCurrentHour()>=12)then
		if(QueryTitle("title")>=52)then
			if(LuaQueryStrTask("Tforceday")~=GetCurrentDay())then
			LuaSay("@3"..LuaQueryStr("title").."@0啊,拿去,自己抓住机会好好利用.")
			LuaSetTask("Tforceday",GetCurrentDay())
			LuaGive("o_mission035",1)--征税令
			--LuaGive("e_mission091",1)--施恩令
			else
			LuaSay("今天你已领过了,领过了就别捣乱了.")
			end
		else
			LuaSay("啊?领主吗,你的行使令在领主上任时不是已经给你了吗,本相这只发其他称号的行使令.")
		end
	else
		LuaSay("没看见本相忙着吗.等过12:00才再来.")
	end

elseif(answer=="T290") then              ------------------------望子成龙 
		if(LuaQueryTask("T290")==0) then
		LuaSay("司马道子：在这个世上，没有权势就什么都不是，我司马家的人更要个个有权有势。")
		LuaSay("司马道子：如今我位高权重，该给我s那宝贝儿子谋权势了。帮我找@3晋帝@0讨个尚书职位。")
                LuaSetTask("T290",1)
		UpdateTopSay("去找宫殿的晋帝")
                AddLog("望子成龙【剧情】",290)
                UpdateMenu()
		UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T290")==1) then
		LuaSay("司马道子：赶快去找@3晋帝@0帮我那宝贝儿子讨个尚书职位吧。")
		end 

elseif(answer=="T291") then              ------------------------司马的报复 
		if(LuaQueryTask("T291")==0) then
		LuaSay("司马道子：英雄为了天下敢要挟天子，真是让老夫大开眼见啊，来老夫敬你一杯（喝下酒后，感觉不对，酒中有毒。。。）")
		LuaSay("司马道子：哈哈哈...小鬼，我司马家的事岂是你可以轻易掺和的，如今让你去见阎王爷。")
		LuaSay(""..LuaQueryStr("name").."：被司马老贼算计了，去找@4建康城南@0的@3药品商人@0，或许可以帮我。")
		LuaSetTask("T291",1)
                AddLog("司马的报复【剧情】",291)
                UpdateMenu()
		UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T291")==1) then
		LuaSay("司马道子：哈哈哈...你已中了我的含笑半步颠，必死无疑。")
		LuaSay(""..LuaQueryStr("name").."：被司马老贼算计了，去找@4建康城南@0的@3药品商人@0，或许可以帮我。")
		end

elseif(answer=="T115A") then                       -----父子相残
                 if(LuaQueryTask("T115A") ==0) then
    			LuaSay("只见司马道子一口气将药酒喝下。")
			LuaSay("司马道子：看在你帮我儿送酒的份上暂时放过你，哈哈，我儿果然孝顺。啊？为什么，酒里有毒。")
			LuaSetTask("T115A",99)
 			DelItem("o_mission010",1)
			UpdateMenu()
			end

elseif(answer=="T851")then         ------冤屈
	if(LuaQueryTask("T851") == 1)then
 		LuaSay("司马道子：想让我给谢安澄清事实？门儿都没有！除非你能从@3钱庄老板@0那里要来千两黄金，我倒能考虑下！")
 		LuaSetTask("T851",2)
		AddLog("冤屈【剧情】",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 2)then
 		LuaSay("司马道子：除非你能从@3钱庄老板@0那里要来千两黄金，我倒能考虑下！")
 	elseif(LuaQueryTask("T851") == 3)then
  		if (LuaItemCount("o_mission362")>=1)then
		LuaSay("司马道子：这果然是黄金啊!澄清什么事实，陷害谢安的事情本来就是我做的！")
                LuaSay(""..LuaQueryStr("name")..":啊……你！我还是快去告诉@3谢安@0真相吧！")
		LuaSetTask("T851",4)
		AddLog("冤屈【剧情】",851)
		DelItem("o_mission362",LuaItemCount("o_mission362"))
		end
	elseif(LuaQueryTask("T851") == 4)then
  		LuaSay(""..LuaQueryStr("name")..":快去告诉@4建康城南@0的@3谢安@0真相！")
  	end
elseif(answer=="T404")then         ------大权在握
	 if(LuaQueryTask("T404") == 2)then
   		LuaSay("司马道子：这...这不是丹书铁券么！怎么会在你手里！就算是当朝晋帝也不能约束你什么，何况如今你手握重兵，吾愿意支持你统一大业。")
		LuaSetTask("T404",3)
		DelItem("o_mission336",LuaItemCount("o_mission336"))
		UpdateTopSay("少侠快去回复谢玄吧")
 		AddLog("大权在握【剧情】",404)
		UpdateMenu()
	 elseif (LuaQueryTask("T404") == 3)then
		LuaSay("司马道子：回复@3谢玄@0，他在@4北府军营@0里！")
	 end
	 
elseif(answer=="T854")then           ----------贪财之人
	 if(LuaQueryTask("T854") == 0)then
		LuaSay("司马道子：看你一副穷酸样，铁定拿不出多少黄金来，若你能给我3个@22级木和3个2级矿@0来，我倒可以给你增加经验！")
		LuaSetTask("T854",1)
		AddLog("贪财之人【循环】",854)
		UpdateTopSay("去采集3个2级木和2级矿来")
		UpdateMenu()
	 elseif(LuaQueryTask("T854")==1) then
		if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
		LuaSay("司马道子：这些东西能值不少钱呢")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T854jl")
		else
		LuaSay("司马道子：你身上的@22级木或2级矿@0不足3个!")
		end
	 end
elseif(answer=="T854jl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
		LuaSetTask("T854",0)
		local jingyan=(34000+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T854")
		if(LuaQueryTask("T854_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T854_a",99)
		end
		DelItem("o_material_48",3)
		DelItem("o_material_39",3)
		DelLog(854)
		UpdateMenu()
	end

elseif(answer=="T855")then           ----------见钱眼开
	 if(LuaQueryTask("T855") == 0)then
		LuaSay("司马道子：啧啧！看你一副穷酸样，铁定拿不出多少黄金来，若你能给我5000铜币来，我能给你增加经验！")
		LuaSetTask("T855",1)
		AddLog("见钱眼开【剧情】",855)
		UpdateTopSay("身上携带5000以上铜币")
		UpdateMenu()
	 elseif(LuaQueryTask("T855")==1) then
		if(LuaItemCount("coin")>=5000) then
		LuaSay("司马道子：想不到你还是能拿出几个钱的！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T855jl")
		else
		LuaSay("司马道子：你少忽悠我，你身上的钱不够5000铜币!还是")
		end
	 end
	elseif(answer=="T855jl")then
		if(LuaItemCount("coin")>=5000 ) then
		LuaSetTask("T855",99)
		LuaAddJx("combat_exp",145000,"T855")
		if(LuaQueryTask("T855_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T855_a",99)
		end
		DelLog(855)
		UpdateMenu()
		end

 -------------------------------------------------------------------------------
  elseif(answer=="T932") then 
      if(GetCurrentHour()>4) then
        LuaSay("司马道子:朝廷每天都要对奋斗在各行业的前线战士丰厚的奖励,只要你进入任意排行榜前10名.")
        LuaSay("司马道子:都可以每天来领取俸禄,但一天一种排行榜只能领一次,好好干,为了天下!我们需要你！")
        AddMenuItem("@7奖励类别","")
		 AddMenuItem("@3高手的寂寞","Top_type1")
		 AddMenuItem("@3富豪的霸气","Top_type2")
		 AddMenuItem("@3杀手的骄傲","Top_type3")
		 AddMenuItem("@3屠夫的奖励","Top_type4")
		 AddMenuItem("@3善人的回报","Top_type5")
		 AddMenuItem("@3劳模的光荣","Top_type6")
		 AddMenuItem("@3将军的尊严","Top_type7")
		 AddMenuItem("@3小强的精神","Top_type8")
		 AddMenuItem("@3恶人的性情","Top_type9")
		 AddMenuItem("@3宗师的风范","Top_type10")
		 --AddMenuItem("@3推荐的模范","Top_type11")
	   else
	   LuaSay("提示:每日排行榜还未刷新,凌晨5点以后再来领取每日排行奖励吧")
	   end
  elseif(answer=="Top_type1")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("experice")
	LuaSetTemp("type1",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top1_taskday"))then
		LuaSetTask("Top_type1",0)
	else
	        LuaSetTask("Top_type1",99)
	end 
	if(LuaQueryTask("Top_type1")==0) then
		LuaSay("司马道子:要成为光荣的战士,等级是必须的,你见过1级的将军吗？那个将军不是有着丰富的战斗经验？")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@3"..r.."@0位")
			if(r>=1 and r<=10) then
				if(level>14)then
					if(r==1)then
						LuaSay("司马道子:想不到江湖上闻名的第一高手就是你!真是闻名不如见面呀！")
						SetTitleMeg(52)
						LuaSay("恭喜你成为第一高手,这@3"..LuaQueryStr("title").."@0这称号非你莫属！")
					elseif(r==2)then
						SetTitleMeg(53)
						LuaSay("现能和你一比高下的人已经少之又少了,赐你@3"..LuaQueryStr("title").."@0的称号！")
					elseif(r==3)then
						SetTitleMeg(54)
						LuaSay("恭喜你高手榜第三名,赐你@3"..LuaQueryStr("title").."@0的称号,望再接再励！")
					end
					LuaSay(":看来你的战斗经验挺丰富！国家就需要你们这样的人才.这些俸禄你收好,继续保持,明天见！")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state008j",1,"T932")
					LuaSetTask("top1_taskday",GetCurrentDay())
					LuaSetTask("Top_type1",99)
				else
				LuaSay("你还没到15级呢？奖励只能15级后领哦.")
				end  
			else
				LuaSay("司马道子:你的排名都不在十大之内,奖励你恐难服众,你还是继续努力下吧？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type1")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,做人要厚道,贪得无厌也不能像你这样,你可以换个排行榜试试.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换为该榜称号","top_title1")
			AddMenuItem("不替换","FQ")
		end
	end

elseif(answer=="Top_type2")then
	local level= LuaQuery("level")
        local r=RangeQuery("total_money")
	LuaSetTemp("type2",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top2_taskday"))then
	        LuaSetTask("Top_type2",0)
	else
	        LuaSetTask("Top_type2",99)
	end
	if(LuaQueryTask("Top_type2")==0) then
		LuaSay("司马道子:面对金钱年轻人需要定力呀,老夫也是当年追求财富半生,虽说表面贵为天子,其实失去的远比得到的多！")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@3"..r.."@0位.")
			if(r>=1 and r<=10) then
				if(LuaItemCount("coin") >= 10000)then
					if(r==1)then
						SetTitleMeg(55)
						LuaSay("恭喜你,这@3"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(56)
						LuaSay("赐你@3"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(57)
						LuaSay("赐你@3"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:其实我现在是个唯物主义者,看不惯你们这些资本家,不过既然能进排行前十,这足以说明阁下确实是个人物.")
					LuaSay("既然是个人物,我尊重你,给你个机会.你有三分之一机会获得更高奖励,但也可能付出代价？是否愿意接受？")
					AddMenuItem("@7是否接受","")
					AddMenuItem("接受","Y")
					AddMenuItem("不接受","N")
				else
					LuaSay("富豪起码身上得有1万现钱吗！我不会扣你钱,但想领奖必须得有1万铜币做凭证！")
				end
			else
				LuaSay("司马道子:你都不在10大富豪之内,还想领富豪俸禄,这不打肿脸充胖子么？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		

	elseif(LuaQueryTask("Top_type2")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,有钱人要低调呀,君不见国美首富下场乎.")
		if(r>=1 and r<=3)then
		AddMenuItem("@7是否替换称号","")
		AddMenuItem("替换为该榜称号","top_title2")
		AddMenuItem("不替换","FQ")
		end
	end
		 
elseif(answer=="Y")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local ret=LuaRandom(2)
	local r=LuaQueryTemp("type2")
	LuaSay("司马道子:胆从恶边生,富贵险中求,下面要出现数字@20,1,2@0,如果为@21@0就算你赢.")
	if(ret==1) then
		LuaSay("司马道子:摇出来的数字是@2"..ret.."@0恭喜你,看来这资本家也是有好人品.")
		LuaSay("罢了,以阁下的才能,经济命脉迟早要落入你手,这些奖励你就收下吧！")
		LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
		LuaSetTask("top2_taskday",GetCurrentDay())
		LuaSetTask("Top_type2",99)
	else
		LuaSay("司马道子:摇出来的数字是@2"..ret.."@0不是@21@0.不好意思,来人,关门放狗！汪汪！")
		LuaSay("司马道子:为富不仁遭狗咬,不死也半残.我就是嫉妒你钱比我多,皇帝也是人呀！钱比我多还好意思讨俸禄？小样！整不死你！")
		LuaSetTask("top2_taskday",GetCurrentDay())
		LuaSet("hp",10)
		FlushMyInfo("0")
	end

elseif(answer=="N")then
	LuaSay("司马道子:就你这点胆量不足已领俸禄,你走吧！")
	LuaSetTask("top2_taskday",GetCurrentDay())
	LuaSetTask("Top_type2",99)

elseif(answer=="Top_type3")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("PKCount")
	LuaSetTemp("type3",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top3_taskday"))then
		LuaSetTask("Top_type3",0)
	else
		LuaSetTask("Top_type3",99)
	end
	if(LuaQueryTask("Top_type3")==0) then
		LuaSay("司马道子:有胆子杀人者必定非常人,杀手榜以杀比自己等级高的玩家论英雄,自古那为成霸业者不满手鲜血？杀小号可不算英雄")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("pks")>10)then
					if(r==1)then
						SetTitleMeg(58)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(59)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(60)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:恭喜你进入前10,这是你应得的报酬,国家需要你,老夫更需要你.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state005j",1,"T932")
					LuaSetTask("top3_taskday",GetCurrentDay())
					LuaSetTask("Top_type3",99)
			      else
					LuaSay("杀10人以上者才能奖励哦.")
			      end
			else
				LuaSay("司马道子:你都不在10大之内,想忽悠我是不？老夫可以很负责任地告诉你,老夫很生气,后果很严重！")
				LuaSay("司马道子:杀人是以杀比自己等级高的人计数，欺负小号可不是英雄@!")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type3")==99) then
		LuaSay("司马道子:你今天已领过奖励了,杀人亦有道,无道不杀人,切莫为了这小利而动杀心,你明天再来吧.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换为该榜称号","top_title3")
			AddMenuItem("不替换","FQ")
		end
	end

elseif(answer=="Top_type4")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local  r=RangeQuery("NKCount")
	LuaSetTemp("type4",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top4_taskday"))then
		LuaSetTask("Top_type4",0)
	else
		LuaSetTask("Top_type4",99)
	end
	if(LuaQueryTask("Top_type4")==0) then
		LuaSay("司马道子:世道无常,妖孽横生,虽然妖怪也是他妈生的,但对待怪物绝对不能手软.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("nks")>100)then
					if(r==1)then
						SetTitleMeg(61)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(62)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(63)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:恭喜你进入杀怪排行前10,我代表天下,代表朝廷,感谢你.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state001j",1,"T932")
					LuaSetTask("top4_taskday",GetCurrentDay())
					LuaSetTask("Top_type4",99)
				else
				LuaSay("前10要领奖励,起码也要杀100个怪吧！")
				end
			else
				LuaSay("司马道子:你都不在10大之内,你根本就没体验到虐怪的快感,如何给你？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type4")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,回去把刀磨锋利,对怪物绝对不能客气！")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title4")
			AddMenuItem("不替换","FQ")
		end
	end
	 
	 
elseif(answer=="Top_type5")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("rescue_number")
	LuaSetTemp("type5",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top5_taskday"))then
		LuaSetTask("Top_type5",0)
	else
	        LuaSetTask("Top_type5",99)
	end
	if(LuaQueryTask("Top_type5")==0) then
		LuaSay("司马道子:救人一命胜造好多层浮屠@%,你们救人行为让我想起了可爱的白衣天使@y,老夫经常在百忙中慰问她们.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("rescue_number")>10)then
					if(r==1)then
						SetTitleMeg(64)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(65)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(66)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:杀人容易,救人难,希望你能继续保持,这是你今天的俸禄.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state056j",1,"T932")
					LuaSetTask("top5_taskday",GetCurrentDay())
					LuaSetTask("Top_type5",99)
				else
					LuaSay("你救人数达到10个再说吧！")
				end
			else
				LuaSay("司马道子:你都不在10大之内,想忽悠我是不？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type5")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,明天再来吧！")
		if(r>=1 and r<=3)then
		AddMenuItem("@7是否替换称号","")
		AddMenuItem("替换称号","top_title5")
		AddMenuItem("不替换","FQ")
		end
	 end

elseif(answer=="Top_type6")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("till")
	LuaSetTemp("type6",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top6_taskday"))then
	        LuaSetTask("Top_type6",0)
	else
	        LuaSetTask("Top_type6",99)
	end
	if(LuaQueryTask("Top_type6")==0) then
		LuaSay("司马道子:朝廷就需要你们这种辛勤的劳动者,你们这是我天下最大的财富呀.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("till")>20)then
					if(r==1)then
					SetTitleMeg(67)
					LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
					SetTitleMeg(68)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
					SetTitleMeg(69)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:劳动是光荣的,没劳动者,我们吃啥,没劳动者种植,我们吃啥？这没吃没穿我朝这天子还当啥？")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state032j",1,"T932")
					LuaSetTask("top6_taskday",GetCurrentDay())
					LuaSetTask("Top_type6",99)
				else
					LuaSay("采集成功20次再来吧！任何行业都应该有标准的.")
				end
			else
				LuaSay("司马道子:你都不在10大之内,要继续努力呀,劳模这是很严肃的,不能开玩笑.")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type6")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,你可以换其他排行榜或者明天再来领.")
		if(r>=1 and r<=3)then
			AddMenuItem("替换为该榜称号","top_title6")
			AddMenuItem("不替换","FQ")
		end
	end
elseif(answer=="Top_type7")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("WinCount")
	LuaSetTemp("type7",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top7_taskday"))then
		LuaSetTask("Top_type7",0)
	else
	        LuaSetTask("Top_type7",99)
	end
	if(LuaQueryTask("Top_type7")==0) then
		LuaSay("司马道子:老夫虽为天子,但做梦都想与将士们征战沙场,壮士饥餐俘虏肉,笑饮匈奴血,那才是快意人生！")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(r==1)then
					SetTitleMeg(70)
					LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
				elseif(r==2)then
					SetTitleMeg(71)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
				elseif(r==3)then
					SetTitleMeg(72)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
				end
				LuaSay("司马道子:阁下胜率之高,真是我天下江山的福分,这些俸禄奖励非你莫属.")
				LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
				LuaGive("o_state016j",1,"T932")
				LuaSetTask("top7_taskday",GetCurrentDay())
				LuaSetTask("Top_type7",99)
			else
				LuaSay("司马道子:你都不在10大之内,你这是在侮辱我的智商！")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type7")==99) then
		LuaSay("司马道子:今天的俸禄你已经领了,请明天再来！")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title7")
			AddMenuItem("不替换","FQ")
		end
	end
elseif(answer=="Top_type8")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("dead_count")
	LuaSetTemp("type8",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top8_taskday"))then
		LuaSetTask("Top_type8",0)
	else
		LuaSetTask("Top_type8",99)
	end
	if(LuaQueryTask("Top_type8")==0) then
		LuaSay("司马道子:别人杀我我不介意,怪杀我我也不介意,记住要以德服人,以德才能服人.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(r==1)then
					SetTitleMeg(73)
					LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
				elseif(r==2)then
					SetTitleMeg(74)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
				elseif(r==3)then
					SetTitleMeg(75)
					LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
				end
				LuaSay("司马道子:水至清无鱼,人至贱无敌,小强靠的是厚脸皮,死也能死出状元来,做人就得像阁下这样潇洒.")
				LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
				LuaGive("o_state053j",1,"T932")
				LuaSetTask("top8_taskday",GetCurrentDay())
				LuaSetTask("Top_type8",99)
			else
				LuaSay("司马道子:你都不在10大之内,想忽悠我是不？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type8")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,记住要以德服人,你明天再来吧！")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title8")
			AddMenuItem("不替换","FQ")
		end
	end
	      
elseif(answer=="Top_type9")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("out_prison_num")
	LuaSetTemp("type9",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top9_taskday"))then
		LuaSetTask("Top_type9",0)
	else
	        LuaSetTask("Top_type9",99)
	end
	if(LuaQueryTask("Top_type9")==0) then
		LuaSay("司马道子:自古作恶者多为性情中人,路见白名一声吼啊,该出手时就出手啊,真乃大丈夫.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("out_prison_num")>1) then 
					if(r==1)then
						SetTitleMeg(76)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(77)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(78)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:别人眼中的恶人也许是个真好汉,善恶之分如何能分得清,但既然能排行前10必定有你存在的理由！朝廷当然不放过人才.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state027j",1,"T932")
					LuaSetTask("top9_taskday",GetCurrentDay())
					LuaSetTask("Top_type9",99)
				else
					LuaSay("地牢都没坐过一次,你这排名掺水了,进过地牢人的才能算恶人！")
				end
			else
				LuaSay("司马道子:就你这点道行,恶人榜前10都没到,也敢妄称恶人？身上纹条龙就当自己是黑社会？")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type9")==99) then
		LuaSay("司马道子:你今天已经领过一次奖励了,年轻人应当节制点啊.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title9")
			AddMenuItem("不替换","FQ")
		end
	end
	      
elseif(answer=="Top_type10")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        local r=RangeQuery("graduate_prentice")
	LuaSetTemp("type10",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top10_taskday"))then
		LuaSetTask("Top_type10",0)
	else
	        LuaSetTask("Top_type10",99)
	end
	if(LuaQueryTask("Top_type10")==0) then
		LuaSay("司马道子:百年大计教育为本,老夫一向尊师重教,但现在教育经费确实紧张,只能奖励前10名.")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("graduate_prentice")>0)then
					if(r==1)then
						SetTitleMeg(79)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(80)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(81)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:遥想1600多年后,出了个大学的机构,据说那些教授上过大学的人很少,但上过大学生的到很多！真令人感慨呀！")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state012j",1,"T932")
					LuaSetTask("top10_taskday",GetCurrentDay())
					LuaSetTask("Top_type10",99)
				else
					LuaSay("你连出师的徒弟都没有,也敢妄称宗师？")
				end
			else
				LuaSay("司马道子:你目前还不在10大之内,教育就是教人育人你要牢记！")
			end
		else
			LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
	elseif(LuaQueryTask("Top_type10")==99) then
		LuaSay("司马道子:今天你的俸禄已经领了,你咋还来呢！你这光荣职业干不光荣事.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title10")
			AddMenuItem("不替换","FQ")
		end
	end
elseif(answer=="Top_type11")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        local r=RangeQuery("tjreward_count")
	LuaSetTemp("type11",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top11_taskday"))then
		LuaSetTask("Top_type11",0)
	else
	        LuaSetTask("Top_type11",99)
	end
	if(LuaQueryTask("Top_type11")==0) then
		LuaSay("司马道子:勇于推荐，创造更和谐的游戏气氛，名额有限，我们只能奖励前10名的玩家哦，赶快去推荐更多的人吧。")
		if(r~=0)then
			LuaSay("目前在本榜中排行第@2"..r.."@0位")
			if(r>=1 and r<=10) then
				if(LuaQuery("tjreward_count")>0)then
					if(r==1)then
						SetTitleMeg(104)
						LuaSay("恭喜你,这@2"..LuaQueryStr("title").."@0这称号非你莫属.")
					elseif(r==2)then
						SetTitleMeg(104)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号.")
					elseif(r==3)then
						SetTitleMeg(106)
						LuaSay("赐你@2"..LuaQueryStr("title").."@0的称号,望再接再励.")
					end
					LuaSay("司马道子:共同创建一个人丁兴旺和谐的《统一OL》社会，还需要我们一起努力啊")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_ybsc002j",1,"T932")
					LuaSetTask("top11_taskday",GetCurrentDay())
					LuaSetTask("Top_type11",99)
				else
					LuaSay("你一个人都没有推荐过，怎么能来领取奖励呢")
				end
			else
				LuaSay("司马道子:你目前还不在10大之内,推荐更多的人就能拿到更高的奖励！")
			end
		else
		LuaSay("您的排名在500名之外，不能参加此活动哦，努力修炼，在第二天的凌晨4点之后你就能看到你新的排名了哦@!")
		end
		
	elseif(LuaQueryTask("Top_type11")==99) then
		LuaSay("司马道子:今天你的俸禄已经领了,你咋还来呢！你这光荣职业干不光荣事.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7是否替换称号","")
			AddMenuItem("替换称号","top_title11")
			AddMenuItem("不替换","FQ")
		end
	end
	
	
elseif(answer=="top_title1") then
	local r=LuaQueryTemp("type1")
	if(r==1)then
		SetTitleMeg(52)
	elseif(r==2)then
		SetTitleMeg(53)
	elseif(r==3)then
		SetTitleMeg(54)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title2") then
	local r=LuaQueryTemp("type2")
	if(r==1)then
		SetTitleMeg(55)
	elseif(r==2)then
		SetTitleMeg(56)
	elseif(r==3)then
		SetTitleMeg(57)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title3") then
	local r=LuaQueryTemp("type3")
        if(r==1)then
		SetTitleMeg(58)
	elseif(r==2)then
		SetTitleMeg(59)
	elseif(r==3)then
		SetTitleMeg(60)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title4") then
	local r=LuaQueryTemp("type4")
	if(r==1)then
		SetTitleMeg(61)
	elseif(r==2)then
		SetTitleMeg(62)
	elseif(r==3)then
		SetTitleMeg(63)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title5") then
	local r=LuaQueryTemp("type5")
	if(r==1)then
		SetTitleMeg(64)
	elseif(r==2)then
		SetTitleMeg(65)
	elseif(r==3)then
		SetTitleMeg(66)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title6") then
	local r=LuaQueryTemp("type6")
        if(r==1)then
		   SetTitleMeg(67)
	elseif(r==2)then
		SetTitleMeg(68)
	elseif(r==3)then
		SetTitleMeg(69)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title7") then
	local r=LuaQueryTemp("type7")
	if(r==1)then
		SetTitleMeg(70)
	elseif(r==2)then
		SetTitleMeg(71)
	elseif(r==3)then
		SetTitleMeg(72)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title8") then
	local r=LuaQueryTemp("type8")
	if(r==1)then
		SetTitleMeg(73)
	elseif(r==2)then
		SetTitleMeg(74)
	elseif(r==3)then
		SetTitleMeg(75)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title9") then
	local r=LuaQueryTemp("type9")
	if(r==1)then
		SetTitleMeg(76)
	elseif(r==2)then
		SetTitleMeg(77)
	elseif(r==3)then
		SetTitleMeg(78)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title10") then
	local r=LuaQueryTemp("type10")
	if(r==1)then
		SetTitleMeg(79)
	elseif(r==2)then
		SetTitleMeg(80)
	elseif(r==3)then
		SetTitleMeg(81)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
elseif(answer=="top_title11") then
	local r=LuaQueryTemp("type11")
	if(r==1)then
		SetTitleMeg(104)
	elseif(r==2)then
		SetTitleMeg(105)
	elseif(r==3)then
		SetTitleMeg(106)
	else
		LuaSay("你在本排行榜没获得称号！不能替换！进入前三再说吧！")
	end
		 
elseif(answer=="FQ") then
			LuaSay("替换称号可以自由替换,但奖励一天只有一次.")

------------------------------------------------------连续登陆，每日登陆奖励
elseif(answer=="Teveryday_lx") then
    if(LuaQueryStrTask("Teveryday_lx_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Teveryday_lx",0)
		LuaSetTask("Teveryday_lx2",0)
		LuaSetTask("Teveryday_lx_Taskday",GetCurrentDay())
	end
	DLJL={}                          ------登陆奖励
	DLJL[0]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}        -----总有效的物品分数，包括：物品id，数量，物品名称，
	DLJL[1]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[2]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[3]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",5,"宠物粮"}
	DLJL[4]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[5]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[6]={4,"o_state008j",1,"初级经验卷","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[7]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[8]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[9]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[10]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[11]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[12]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[13]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[14]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[15]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[16]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[17]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[18]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[19]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[20]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[21]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[22]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[23]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[24]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[25]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[26]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[27]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[28]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[29]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[30]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[31]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[32]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[33]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[34]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[35]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[36]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[37]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[38]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[39]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[40]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[41]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[42]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[43]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[44]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[45]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[46]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[47]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[48]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[49]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[50]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[51]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[52]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[53]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[54]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[55]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[56]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[57]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[58]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[59]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[60]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[61]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[62]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[63]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[64]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[65]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[66]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[67]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[68]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[69]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[70]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[71]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[72]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[73]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[74]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[75]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[76]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[77]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[78]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}         
	DLJL[79]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[80]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[81]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[82]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[83]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[84]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[85]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[86]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[87]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[88]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[89]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}	
	DLJL[90]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	
	DLJL[91]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[92]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[93]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[94]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[95]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}
	DLJL[96]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[97]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[98]={4,"o_state012j",1,"双防符","o_state065j",1,"血池1","o_state068j",1,"魔池1","o_state001j",1,"双攻符"}
	DLJL[99]={4,"o_ybsc002j",1,"强化石","o_state010j",2,"中级经验卷","o_state091j",2,"免战牌","o_food03y",10,"宠物粮"}


    

    local DLYB={}                                                  ------所需物品id,数量,名称。换取的物品id,数量,名称
    DLYB[0]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[1]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[2]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[3]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[4]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[5]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[6]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[7]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[8]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[9]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[10]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[11]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[12]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[13]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[14]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[15]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[16]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[17]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[18]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[19]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}



	local CTOL=LuaQuery("Continue_OL")
	local CTOL_cishu=floor(CTOL/3)                                           ---------领奖
	if(CTOL_cishu>=100) then
		CTOL_cishu=CTOL_cishu-(floor(CTOL_cishu/100))*100
	end

	local CTOL_cishu2=floor(CTOL/15)
	if(CTOL_cishu2>=20) then
		CTOL_cishu2=CTOL_cishu2-(floor(CTOL_cishu2/20))*20                -----------元宝换物品
	end
	LuaSetTemp("CTOL_cishu2",CTOL_cishu2)
	local CTOL_yushu 
	local CTOL_yushu2
	if((CTOL-(floor(CTOL/3))*3 )<0)then
		CTOL_yushu=-(CTOL-(floor(CTOL/3))*3 )
	else
		CTOL_yushu=(CTOL-(floor(CTOL/3))*3 )
	end
	if((CTOL-(floor(CTOL/15))*15 )<0)then
		CTOL_yushu2=-(CTOL-(floor(CTOL/15))*15 )
	else
		CTOL_yushu2=(CTOL-(floor(CTOL/15))*15 )
	end
	LuaSetTemp("CTOL_yushu2",CTOL_yushu2)
	LuaSay("司马道子：只要你连续登陆天数达到一定要求,就能获得奖励,允许中间1天间断,连续2天以上未登录时,连续登陆天数会被重置的！")
	if(CTOL_yushu== 0 )then
     		if(LuaQueryTask("Teveryday_lx")==0)then
			if(LuaFreeBag()>=4)then
				LuaSay("司马道子：你连续登陆了3天,这是给你的奖励！")
				if(LuaRandom(2)==0)then
					LuaGive(DLJL[CTOL_cishu][2],DLJL[CTOL_cishu][3],"Teveryday_lx")
				end
					LuaGive(DLJL[CTOL_cishu][5],DLJL[CTOL_cishu][6],"Teveryday_lx")   
					LuaGive(DLJL[CTOL_cishu][8],DLJL[CTOL_cishu][9],"Teveryday_lx")
					LuaGive(DLJL[CTOL_cishu][11],DLJL[CTOL_cishu][12],"Teveryday_lx")
					LuaSetTask("Teveryday_lx",99)
			else
				LuaSay("提示：请保持至少4格的背包空位哦，不然会导致奖励物品丢失@!")
			end
		else
		LuaSay("司马道子：你连续登陆的奖励今天已经领过了！@2"..(3-CTOL_yushu).."天@0后又能领奖了！")   
		end
	else
		local a = CTOL_cishu + 1  
		LuaSay("司马道子：@3"..(3-CTOL_yushu).."天@0后就能领取到"..DLJL[a][6].."个@2"..DLJL[a][7].."@0，"..DLJL[a][9].."个@2"..DLJL[a][10].."@0，"..DLJL[a][12].."个@2"..DLJL[a][13].."@0！")
		LuaSay("司马道子：如果你够幸运，还能额外的领取到"..DLJL[a][3].."个@2"..DLJL[a][4].."@0哦。")
		LuaSay("特别提醒：连续登陆的时间越长越划算哦！")
	end
	if(CTOL_yushu2 == 0 )then
	    if(LuaQueryTask("Teveryday_lx2")==0)then
		LuaSay("司马道子：你连续登陆了15天,可以在我这里用@3"..DLYB[CTOL_cishu2][2].."@0个@9"..DLYB[CTOL_cishu2][3].."@0换取@3"..DLYB[CTOL_cishu2][5].."@0个@5"..DLYB[CTOL_cishu2][6].."@0！")
 		AddMenuItem("@7换取元宝商品","")
		AddMenuItem("@3是","Teveryday_lx_YES")
		AddMenuItem("@3否","Teveryday_lx_NO")
		else
		LuaSay("司马道子：你今天的元宝商品已经换取过了！下次可以在我这里用@3"..DLYB[CTOL_cishu2+1][2].."@0个@9"..DLYB[CTOL_cishu2+1][3].."@0换取@3"..DLYB[CTOL_cishu2+1][5].."@0个@5"..DLYB[CTOL_cishu2+1][6].."@0！")
		end
	else
	LuaSay("司马道子：@2"..(15-CTOL_yushu2).."天@0后,可以在我这里用@3"..DLYB[CTOL_cishu2+1][2].."@0个@9"..DLYB[CTOL_cishu2+1][3].."@0换取@3"..DLYB[CTOL_cishu2+1][5].."@0个@5"..DLYB[CTOL_cishu2+1][6].."@0！")
	end
elseif(answer=="Teveryday_lx_YES") then
	local CTOL_yushu2=LuaQueryTemp("CTOL_yushu2")
	local CTOL_cishu2=LuaQueryTemp("CTOL_cishu2")
	 local DLYB={}
	 DLYB[0]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[1]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[2]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[3]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[4]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[5]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[6]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[7]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[8]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[9]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[10]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[11]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[12]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[13]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[14]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[15]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
    DLYB[16]={"o_gold1y",10,"通宝","o_box004j",2,"白银宝箱"}   
    DLYB[17]={"o_gold1y",15,"通宝","o_resetpoint1y",1,"洗点券"}
    DLYB[18]={"o_gold1y",25,"通宝","o_changeclass1y",1,"转职信物"}
    DLYB[19]={"o_gold1y",30,"通宝","o_box005j",3,"黄金宝箱"}
	if(LuaItemStatusNormalCount(DLYB[CTOL_cishu2][1])>=DLYB[CTOL_cishu2][2])then
		DelItem(DLYB[CTOL_cishu2][1],DLYB[CTOL_cishu2][2])
		LuaGive(DLYB[CTOL_cishu2][4],DLYB[CTOL_cishu2][5],"Teveryday_lx2")
		LuaSetTask("Teveryday_lx2",99)
	else
		LuaSay("司马道子：你身上的@9"..DLYB[CTOL_cishu2][3].."@0不足@3"..DLYB[CTOL_cishu2][2].."@0个,等收集@3"..DLYB[CTOL_cishu2][2].."@0个后再来吧！")
	end
elseif(answer=="Teveryday_lx_NO") then
    LuaSay("司马道子：欲换从速,逾期不补哦！")


elseif(answer=="Teveryday") then
		if(LuaQueryStrTask("everyday_SJ_Taskday")~=GetCurrentDay()) then
		MRSJ_r=LuaRandom(3)
		LuaSetTask("everyday_SJ",0)
		LuaSetTask("everyday_SJ_Taskday",GetCurrentDay())
		end
		AddMenuItem("@7每日登陆奖励","")
		AddMenuItem("@3固定奖励","everyday_GD")
		AddMenuItem("@3随机奖励","everyday_SJ")
		AddMenuItem("@3抽奖","everyday_YB")

elseif(answer=="everyday_GD") then         ----------每日固定奖励
	if(LuaQueryStrTask("everyday_GD_Taskday")~=GetCurrentDay()) then
		LuaSetTask("everyday_GD",0)
		LuaSetTask("everyday_GD_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("everyday_GD")==0)then
		LuaSay("司马道子：呵呵,这是给你的每日固定奖励！")
		LuaGive("o_food01",10,"everyday_GD")
		LuaSetTask("everyday_GD",99)
	else
	    LuaSay("司马道子：你的每日固定奖励今天已经领过了,明天再来吧！")
	end
elseif(answer=="everyday_SJ") then         ----------每日随机奖励
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("everyday_SJ")==0)then
		local lv_exp
		LuaSay("司马道子：呵呵,这是给你的每日随机奖励！")
		if(LuaQuery("level")<30) then
			lv_exp=30000
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
		elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
		end
  		local SJ_exp=lv_exp+(LuaRandom(20)+1)*level^2
		LuaAddJx("combat_exp",SJ_exp,"everyday_SJ")
		LuaSetTask("everyday_SJ",99)
	else
	    LuaSay("司马道子：你的每日随机奖励今天已经领过了,明天再来吧！")
    end
elseif(answer=="everyday_YB") then         ----------每日YB奖励
    if(LuaQueryStrTask("everyday_YB_Taskday")~=GetCurrentDay()) then
		LuaSetTask("everyday_YB",0)
		LuaSetTask("everyday_YB_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("everyday_YB")==0)then
		LuaSay("司马道子：呵呵,你可以用1个@8银票@0来换取每日元宝奖励！或好或坏,或多或少,全看人品！")
		if(LuaItemCount("o_gold2y")>=1 or LuaItemCount("o_gold2j")>=1)then
			AddMenuItem("@7每日抽奖","")
			AddMenuItem("@3再等等","everyday_YB_NO")
			AddMenuItem("@3抽奖","everyday_YB_YES")
		else
		LuaSay("司马道子：你身上没有@8银票@0,至少有1个才行！")
		end
	else
	    LuaSay("司马道子：你的每日元宝奖励今天已经领过了,明天再来吧！")
    end
elseif(answer=="everyday_YB_NO") then
	LuaSay("司马道子：既然如此,等你想要了再来吧！")
elseif(answer=="everyday_YB_YES") then
	LuaSay("司马道子：呵呵,这是给你的每日元宝奖励！或好或坏,或多或少,全看人品！")
	DelItem("o_gold2y",1)
	local YB_r=LuaRandom(6)
	if(YB_r==0)then
		LuaGive("o_food02",8,"everyday_YB")
	elseif(YB_r==1)then
		LuaGive("o_food01",20,"everyday_YB")
	elseif(YB_r==2)then
		LuaGive("o_food03",2,"everyday_YB")
	elseif(YB_r==3)then
		LuaGive("o_state008j",3,"everyday_YB")
	elseif(YB_r==4)then
		LuaGive("o_state065j",1,"everyday_YB")
	elseif(YB_r==5)then
		LuaGive("o_state068j",1,"everyday_YB")
	end
	LuaSetTask("everyday_YB",99)
elseif(answer=="Tsnpc_27")then
	if(LuaQueryTask("Tsnpc_27")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("司马道子：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_27",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_27")==2)then
		LuaSay("司马道子：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_27")then
	if(LuaQueryTask("Tenpc_27")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("司马道子：这都是大人的功劳啊")
		LuaSetTask("Tenpc_27",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_27")==2)then
		LuaSay("司马道子：话已经带到了，快回去领取奖励吧")
	end

end 
LuaSendMenu()
return 1
end 