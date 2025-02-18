NPCINFO = {
serial= "91" ,
base_name="bugaopai",
icon= 2590,
NpcMove=2590,
name= "布告牌" , 
iconaddr=1, 
butt="50|50|72", 
name_color ="CEFFCE" , 
lastsay="推荐奖励大放送",
LuaType=1,
have_jifen_item =1,
shopxh = 10,
}
 function do_talk(answer)                          --取消任务编号 180   181
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	--AddTopSayMenuItem("@3积分商店","buy1")
	--AddTopSayMenuItem("@3推荐系统","Ttuijian")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3每周排行榜奖励","Tpaihang")
	end
	if(LuaQueryTask("T280")==1) then
		AddTopSayMenuItem("@2张贴通告【剧情】","T280")
		havetask =2
	end
		AddTopSayMenuItem("@9今日帮派战事","jrbpzs")
		AddTopSayMenuItem("@3传送至帮战地图(22:00-23:00)","ginfm")
		AddTopSayMenuItem("@3系统公告","sysinfo BACK")
		

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1                                         


elseif(answer=="buy1") then
		DoBuy()

elseif(answer=="Thequbc") then
	if((LuaItemCount("e_sword051y")>0 or LuaItemCount("e_staff051y")>0 or  LuaItemCount("e_falchion051y")>0) and LuaQueryTask("Thequbc")==0) then
		LuaSay("可获得以下补偿：@36级矿皮毛各1个，以及购买装备的500元宝")
		if(LuaFreeBag()>=3)then
			LuaAddYB(1,500)
			LuaGive("o_material_16",1,"Thequbc")
			LuaGive("o_material_25",1,"Thequbc")
			LuaGive("o_material_52",1,"Thequbc")
			LuaSetTask("Thequbc",99)
			UpdateMenu()
		else
			LuaSay("提示：请保持背包3个空位")
		end
	else
		LuaSay("提示：你已经领取了装备补偿")
	end
    
elseif(answer=="liaotian") then
	LuaSay("通告：推荐新人、帮助新人都将获得高额的回报。")

elseif(answer=="jrbpzs") then   --今日帮派战事
	ReadyToFightParty()
elseif(answer=="ginfm") then	--传送至帮战地图(22:00-23:00)
	AddMenuItem("@5进入帮战地图","")
	AddMenuItem("@5进入帮战地图时间惩罚说明","ginfm_SM")
	AddMenuItem("@3进入帮战地图","ginfm_Y")
elseif(answer=="ginfm_SM") then	--进入帮战地图时间惩罚说明
	LuaSay("帮战期间如果下线后上线再次进入帮战地图将会有@2时间限制惩罚@0，下线时间越长，惩罚时间越长")
	LuaSay("下线@2一次限制1分钟，两次4分钟，三次7分钟，四次或四次以上则每次限制10分钟@0不能进入帮战地图，从@5点击传送帮战地图@0开始计时")
elseif(answer=="ginfm_Y") then	--进入帮战地图
	if(GetCurrentMinute()<50) then
		if(LuaQueryStrTask("ginfm_inday")~=GetCurrentDay())then  --进入标记天不为当前天
			LuaDelTask("ginfm_inbj")  --进入标记
			LuaDelTask("ginfm_inday")  --进入时间标记
			LuaDelTask("ginfm_incs")  --进入次数
			LuaDelTask("ginfm_intime")  --进入等待时间
		end
		if(LuaQueryTask("ginfm_inbj")==1) then  --说明进入后下过线  但是第一次点击菜单
			local time=GetCurrentTime()
			LuaSetTask("ginfm_intime",time)
			LuaSetTask("ginfm_inbj",2)  --进入标记
			if(LuaQueryTask("ginfm_incs")<=4) then     --进入时间限制  1  4  7  10  10  ((LuaQueryTask("ginfm_incs")-1)*3+1)
				LuaSay("由于你本次帮战期间@5下线"..LuaQueryTask("ginfm_incs").."次@0，需等待@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."分钟@0才能再次进入帮战地图") 
			else  
				LuaSay("由于你本次帮战期间@5下线"..LuaQueryTask("ginfm_incs").."次@0，需等待@210分钟@0才能再次进入帮战地图") 
			end
		elseif(LuaQueryTask("ginfm_inbj")==2) then  --说明要等一定时间才能再次进入
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ginfm_intime"))
			if(LuaQueryTask("ginfm_incs")<=4) then
				if(shijiancha>=((LuaQueryTask("ginfm_incs")-1)*3+1)*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha)/60)  --还差多少分钟
					local s=((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha-f*60
					LuaSay("等会，@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
				end
			else
				if(shijiancha>=10*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((10*60-shijiancha)/60)  --还差多少分钟
					local s=10*60-shijiancha-f*60
					LuaSay("晋帝:等会，@210分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
				end
			end
		else
			if(LuaQueryTask("Ac13")==0)then
				LuaSetTask("Ac13_bg",GetUserPartyOffer())
				LuaSetTask("Ac13",99)
			end
			GetInFactionMap()
		end
	else
		LuaSay("战争使者：帮战最后10分钟无法再进入帮战地图，相信还在战斗的兄弟，等待胜利亦或者失败吧！")
	end



elseif(answer=="Ttuijian") then		--推荐系统
	AddMenuItem("@7推荐系统","")
	AddMenuItem("@3推荐的好处","tjjs")
	AddMenuItem("@3推荐码领取","Ttjmlq")
	--AddMenuItem("@3推荐攻略","Ttjgl")
	--AddMenuItem("@3积分查询","Tjfcx")
	if(LuaQueryTask("T126")==1)  then
		AddMenuItem("@2推荐新人【教程】","T126")
	end
	elseif(answer=="Ttjmlq") then	--推荐码领取
		if(LuaQueryTask("Ttjmnum")~=0) then
			LuaSay("提示：你已经领取了推荐码，你的推荐码为@3"..LuaQueryTask("Ttjmnum").."")
		else
			local tjm=LuaGetTjCode()
			if(tjm=="") then
				LuaSay("提示：推荐码已经领完")
			elseif(tjm==0) then
				LuaSay("提示：推荐码领取异常，请重新领取")
			else
				 LuaSetTask("Ttjmnum",tjm)
				 LuaSay("提示：推荐码领取成功，你的推荐码为"..tjm.."")
			end
		end
elseif(answer=="tjjs") then
	LuaSay("@5一：@0你可以通过推荐获得积分，1个积分等于1个金币的价值，你可以不花一分钱，就可以购买@7积分商城@0的道具")
	LuaSay("@5二：@0你推荐的角色每升级到30、40、50、60级时，推荐者分别获得100、200、300、400的积分奖励")
	LuaSay("@5三：@0你推荐的角色每消费5个元宝，推荐者获得1的积分。")

elseif(answer=="Ttjgl") then
	AddMenuItem("@7推荐系统","")
	AddMenuItem("@3如何推荐","rhtj")
	AddMenuItem("@3推荐技巧","tjjq")
elseif(answer=="rhtj")then
	LuaSay("@5一：@0按确认键后再按星号键进行推荐，输入你想推荐玩家的手机号码即可")
	LuaSay("@5二：你也可以在这里领取@3推荐码@0，任何一个@3新账号@0创建角色时，只要输入你的推荐码，你就是他的推荐人！")
elseif(answer=="tjjq")then
	LuaSay("@1获得推荐码后，一定要牢记你的推荐码哦！@0")
	LuaSay("@5技巧一：@0想想哪些朋友可能也喜欢玩统一呢？最好是去之前玩过的游戏里面拉老朋友了！其次是老同学之间、同事之间，要是有个妹妹就更有意思啦，每周去不同的地方做头发，专门给帅哥理发师介绍，一推一个准哦！")
	LuaSay("@5技巧二：@0有了推荐目标后，把@1http：//awty.cn@0存在短信里面，对方要下载地址，直接把短信转发给对方就好了。或者在游戏的推荐菜单里面输入对方的手机号也可以哦。")
	LuaSay("@5技巧三：@0如果你的朋友是人民币玩家，他若开经验卷，你组队后都有分享，加上相互的杀怪共享，不仅升级快，而且他每次消费，你都有海量的积分增加哦。")


elseif(answer=="Tjfcx") then
	LuaSay("暂时未开放")
elseif(answer=="T126") then
	if(LuaQueryTask("T126")==1)  then
		LuaSay("提示：您已经了解了@3推荐系统@0吗？只要您推荐其他人一起玩，那么您就有机会获得大量的积分和积分换道具的机会。")
		LuaSay("提示：找些朋友一起来闯荡统一的世界吧！好了，回去回复@3晋清公主@0吧。")
		LuaSetTask("T126A",99)
		UpdateNPCMenu("jinqing")
	 end

----------每周一排行榜奖励 
elseif(answer=="Tpaihang") then 
	if(GetDayOfWeek()==1) then
		if(GetCurrentDay()~="2010-1-4") then	--公测第一周，不能领取排行奖励
			if(GetCurrentHour()>5) then
				LuaSay("提示：只要在富豪榜、宗师榜、高手榜、屠夫榜、杀手榜、劳模榜、善人榜占据前10，就可领取高额奖励。")
				LuaSay("提示：只要在富豪榜、宗师榜、高手榜、屠夫榜、杀手榜、劳模榜、善人榜占据前10，就可领取高额奖励。")
				AddMenuItem("@7每周排行奖励","")
				AddMenuItem("富豪榜奖励","total_money")
				AddMenuItem("宗师榜奖励","graduate_prentice")
				AddMenuItem("高手榜奖励","experice")
				AddMenuItem("屠夫榜奖励","NKCount")
				AddMenuItem("杀手榜奖励","PKCount")
				AddMenuItem("劳模榜奖励","till")
				AddMenuItem("善人榜奖励","aa")         -- rescue_number
			else
				LuaSay("提示：周一排行榜还未刷新，凌晨6点以后再来领取这周奖励吧。")
			end
		else
			LuaSay("@3提示：公测后的第2周，排行中的前10方可领取奖励")
		end
	else
		LuaSay("提示：@3每周一@0才是领取@3每周排行榜前10奖励@0的时间。")
	end
 
	elseif(answer=="total_money") then        --富豪榜 
		local r=RangeQuery("total_money")	                                                         
		if(r>10) then												 
			LuaSay("提示：由于你不在富豪榜@3前10位@0，不可领取奖励。")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSay("提示：由于你在富豪榜排@3第"..r.."位@0，可获得@330W@0的铜币奖励。")
				LuaGive("coin",300000,"Tpaihang")
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaNotice("富豪榜第1位的@2"..LuaQueryStr("name").."@0，领取到了@330W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的富豪榜奖励，不能再领。")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSay("提示：由于你在富豪榜排@3第"..r.."位@0，可获得@318W@0的铜币奖励。")
				LuaGive("coin",180000,"Tpaihang")
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaNotice("富豪榜第"..r.."位的@2"..LuaQueryStr("name").."@0，领取到了@318W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的富豪榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaSay("提示：由于你在富豪榜排@3第"..r.."位@0，可获得@310W@0的铜币奖励。")
				LuaGive("coin",100000,"Tpaihang")
				LuaNotice("富豪榜第"..r.."位的@2"..LuaQueryStr("name").."@0，领取到了@310W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的富豪榜奖励，不能再领。")
			end 
		end
         
         
	elseif(answer=="graduate_prentice") then        --宗师榜 
		local r=RangeQuery("graduate_prentice")	
		if(LuaQuery("graduate_prentice")>0)then                                                        
			if(r>10) then												 
				LuaSay("提示：由于你不在宗师榜@3前10位@0，不可领取奖励。")
			elseif(r==1)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSay("提示：由于你在宗师榜排@3第"..r.."位@0，可获得@318W@0的铜币奖励。")
					LuaGive("coin",180000,"Tpaihang")
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaNotice("宗师榜第1位的@2"..LuaQueryStr("name").."@0，领取到了@318W铜币@0的每周排行奖励。")
				else
					LuaSay("提示：你已经领取了本周的宗师榜奖励，不能再领。")
				end
			elseif(r==2 or r==3)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSay("提示：由于你在宗师榜排@3第"..r.."位@0，可获得@310W@0的铜币奖励。")
					LuaGive("coin",100000,"Tpaihang")
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaNotice("宗师榜第"..r.."位的@2"..LuaQueryStr("name").."@0，领取到了@310W铜币@0的每周排行奖励。")
				else
					LuaSay("提示：你已经领取了本周的宗师榜奖励，不能再领。")
				end 
			elseif(r>3 and r<11)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaSay("提示：由于你在宗师榜排@3第"..r.."位@0，可获得@35W@0的铜币奖励。")
					LuaGive("coin",50000,"Tpaihang")
					LuaNotice("宗师榜第"..r.."位的@2"..LuaQueryStr("name").."@0，领取到了@35W铜币@0的每周排行奖励。")
				else
					LuaSay("提示：你已经领取了本周的宗师榜奖励，不能再领。")
				end 
			end
		else
			LuaSay("你连出师的徒弟都没有,也敢妄称宗师？")
		end
         
         
	elseif(answer=="experice") then        --高手榜 
		local r=RangeQuery("experice")	                                                         
		if(r>10) then												 
			LuaSay("提示：由于你不在高手榜@3前10位@0，不可领取奖励。")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSay("提示：由于你在高手榜排@3第"..r.."位@0，可获得@310W@0的铜币奖励。")
				LuaGive("coin",100000,"Tpaihang")
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaNotice("高手榜第1位的@2"..LuaQueryStr("name").."@0，领取到了@310W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的高手榜奖励，不能再领。")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSay("提示：由于你在高手榜排@3第"..r.."位@0，可获得@36W@0的铜币奖励。")
				LuaGive("coin",65000,"Tpaihang")
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaNotice("高手榜第"..r.."位的@2"..LuaQueryStr("name").."@0，领取到了@36W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的高手榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaSay("提示：由于你在高手榜排@3第"..r.."位@0，可获得@33W@0的铜币奖励。")
				LuaGive("coin",33000,"Tpaihang")
			else
				LuaSay("提示：你已经领取了本周的高手榜奖励，不能再领。")
			end 
		end
         
	elseif(answer=="NKCount") then        --屠夫榜 
		local r=RangeQuery("NKCount")	                                                         
		if(r>10) then												 
			LuaSay("提示：由于你不在屠夫榜@3前10位@0，不可领取奖励。")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSay("提示：由于你在屠夫榜排@3第"..r.."位@0，可获得@36W@0的铜币奖励。")
				LuaGive("coin",65000,"Tpaihang")
				LuaSetTask("Ttfphday",GetCurrentDay())
				LuaNotice("屠夫榜第1位的@2"..LuaQueryStr("name").."@0，领取到了@36W铜币@0的每周排行奖励。")
			else
				LuaSay("提示：你已经领取了本周的屠夫榜奖励，不能再领。")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSay("提示：由于你在屠夫榜排@3第"..r.."位@0，可获得@33W@0的铜币奖励。")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Ttfphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的屠夫榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSetTask("Ttfphday",GetCurrentDay())
				LuaSay("提示：由于你在屠夫榜排@3第"..r.."位@0，可获得@32W@0的铜币奖励。")
				LuaGive("coin",20000,"Tpaihang")
			else
				LuaSay("提示：你已经领取了本周的屠夫榜奖励，不能再领。")
			end 
		end
         
	elseif(answer=="PKCount") then      --杀手榜 
		local r=RangeQuery("PKCount")	                                                         
		if(r>10) then												 
			LuaSay("提示：由于你不在杀手榜@3前10位@0，不可领取奖励，要杀等级比自己高的人才能被计数哦@!")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSay("提示：由于你在杀手榜排@3第"..r.."位@0，可获得@33W@0的铜币奖励。")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tssphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的杀手榜奖励，不能再领。")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSay("提示：由于你在杀手榜排@3第"..r.."位@0，可获得@2W@0的铜币奖励。")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tssphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的杀手榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSetTask("Tssphday",GetCurrentDay())
				LuaSay("提示：由于你在杀手榜排@3第"..r.."位@0，可获得@37000@0的铜币奖励。")
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("提示：你已经领取了本周的杀手榜奖励，不能再领。")
			end 
		end
         
	elseif(answer=="till") then      --劳模榜 
		local r=RangeQuery("till")	                                                         
		if(r>10) then												 
			LuaSay("提示：由于你不在劳模榜@3前10位@0，不可领取奖励。")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSay("提示：由于你在劳模榜排@3第"..r.."位@0，可获得@33W@0的铜币奖励。")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tlmphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的劳模榜奖励，不能再领。")
			end                                                                                       
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSay("提示：由于你在劳模榜排@3第"..r.."位@0，可获得@32W@0的铜币奖励。")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tlmphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的劳模榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSetTask("Tlmphday",GetCurrentDay())
				LuaSay("提示：由于你在劳模榜排@3第"..r.."位@0，可获得@37000@0的铜币奖励。")  
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("提示：你已经领取了本周的劳模榜奖励，不能再领。")
			end 
	end
         

	elseif(answer=="aa") then      --善人榜
		local r=RangeQuery("rescue_number")
		if(r>10) then												 
			LuaSay("提示：由于你不在善人榜@3前10位@0，不可领取奖励。")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSay("提示：由于你在善人榜排@3第"..r.."位@0，可获得@33W@0的铜币奖励。")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tsrphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的善人榜奖励，不能再领。")
			end                                                                                       
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSay("提示：由于你在善人榜排@3第"..r.."位@0，可获得@32W@0的铜币奖励。")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tsrphday",GetCurrentDay())
			else
				LuaSay("提示：你已经领取了本周的善人榜奖励，不能再领。")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSetTask("Tsrphday",GetCurrentDay())
				LuaSay("提示：由于你在善人榜排@3第"..r.."位@0，可获得@37000@0的铜币奖励。")
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("提示：你已经领取了本周的善人榜奖励，不能再领。")
			end 
		end
 

elseif(answer=="T280") then                 -------------------------张贴通告
	if(LuaQueryTask("T280") == 1 ) then
		if (LuaItemCount("o_mission361")>=1)then
			LuaSay("提示：张贴完毕！回头找@3谢安@0，他似乎还有事情！你也可以去@2左边的北府军营@0锻炼。@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T280jl")
		else 
			LuaSay("提示：你身上没通告！")
		end 
	end 
elseif(answer=="T280jl")then
        if (LuaItemCount("o_mission361")>=1)then
		LuaSetTask("T280",99)
		LuaAddJx("combat_exp",108000,"T280")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission361",1)
		DelLog("280")
		UpdateMenu()
	end

elseif (answer=="gonggao") then
	LuaSay("7月27日周二霸王2更新公告：")
	LuaSay("1、提升梦境活动奖励")
	LuaSay("2、5级帮派不能购买免战")
	LuaSay("3、修正副本无故提示已关闭然后被传送出去的BUG")
      
end
LuaSendMenu()
return 1
end