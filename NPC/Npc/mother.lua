NPCINFO = { 
serial="100" ,
base_name="mother",
icon=2524,
NpcMove=2559,
name="公公" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="有些人无法说出他的好，却又无人能替代",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("@5进入帮寨","jrbpzz")
	AddTopSayMenuItem("@5嗜血的帝王","Ac13")
	havetask1=1

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
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("公公：PK，我就爱PK!") 	
elseif(answer=="jrbpzz") then
	local pm=LuaQuery("partyid")+8	
	ChangeMap("lu_partymap"..pm)	
elseif(answer=="Ac13")then
		if(LuaQueryTask("Ac13")==99)then
			if(GetCurrentDay()==LuaQueryStrTask("fllqsj"))then
			LuaSay("今日已领取,明天参与帮战后再来!")
			else
			if(LuaQueryRank()>=1) then
				local a = GetUserPartyOffer() - LuaQueryTask("Ac13_bg") 
				if(a~=0)then
					LuaSay("您在上次的帮战中共获得"..a.."帮贡，系统再赠送您"..a.."点帮贡，杀人越多，获得帮贡越多哦@!")
					local rd=LuaRandom(100)
					if(rd==1)then
						LuaGive("o_present045",1)
						LuaAddYB(1,200)
					elseif(rd<3)then
						LuaGive("o_present032",1)
						LuaAddYB(1,100)
					elseif(rd<10)then
						LuaGive("o_present030",1)
						LuaAddYB(1,50)
					elseif(rd<40)then
						LuaGive("o_present028",1)
						LuaAddYB(1,25)
					elseif(rd<80)then
						LuaGive("o_present026",1)
						LuaAddYB(1,10)
					else
						LuaGive("o_present025",1)
						LuaAddYB(1,5)
					end
					LuaAddPartyMoney(0,a)
					LuaSetTask("fllqsj",GetCurrentDay())
					LuaSetTask("Ac13_bg",GetUserPartyOffer())
				else
					LuaSay("你无积分，不能得到任何奖励哦")
				end
			else
				LuaSay("您还未加入任何帮派，不能领取帮战人头的奖励哦，赶快去建立属于自己的帮派吧@!")
			end
			end
		else
			LuaSay("活动期间您还未参加过帮战，每晚22点到23点，我们不见不散")
		end
elseif(answer=="Ac14")then
	if(LuaQueryTask("Ac14")==99)then
		local a = LuaQuery("gj_gx")
		LuaSay("统一的勇士，欢迎您来参加传说中灰常给力的国战杀人活动，这里非您莫属")
		local b = a - LuaQueryTask("Ac14_gz")
		if(b~=0)then
			LuaSay("您在上次的国战中共取的"..b.."个人头，可以获得"..b.."金币，饭可以不吃，人是要杀滴！")
			LuaAddYB(2,b)
			LuaSetTask("Ac14_gz",a)
		else
			LuaSay("您在上次国战中未击杀任何人，不能得到奖励哦，赶快去奋勇杀敌吧")
		end
	else
		LuaSay("活动期间您还未参加过国战，每晚20点到21点，我们不见不散")
	end


--DayCostYB		--当日元宝消耗
--BeforeDayCostYB	--昨日元宝消耗
		
elseif(answer=="Ac15")then
	if(GetCurrentDay()~=LuaQueryStrTask("Ac15_day")) then
		LuaSetTask("Ac15",0)
	end
	local a = LuaQuery("DayCostYB")
	LuaSay("孩子们，在我的城堡购你想要的东西吧！只要你买我就送。当天买第2天就可以领取奖励。消耗累计只计算当天的消耗。")
	LuaSay("今日您已经消费了"..a.."元宝，消费的越多，得到的越多哦@!")
	if(LuaQueryTask("Ac15")==0)then
		if(LuaQuery("BeforeDayCostYB")>=5000)then
			LuaSay("恭喜您，昨日您的消费已经达到5000元宝！您将得到系统赠送的强化石50个、幸运宝箱20个、黄金宝箱10个、50级黄金装备一套")
			if(LuaFreeBag()>=11)then
				LuaGive("o_ybsc002j",50,"Ac15_5000")	--绑定强化石
				LuaGive("o_box002",20,"Ac15_5000")	--幸运宝盒
				LuaGive("o_box005j",10,"Ac15_5000")	--黄金宝箱
				if(LuaQueryStr("class")=="shen") then      --战士
					LuaGive("e_falchion153",1,3,"Newcountry")
					LuaGive("e_shield153",1,3,"Newcountry")
				elseif(LuaQueryStr("class")=="wu") then       --侠客
					LuaGive("e_sword153",1,3,"Newcountry")
					LuaGive("e_knife153",1,3,"Newcountry")
				elseif(LuaQueryStr("class")=="xian") then       --谋士
					LuaGive("e_book153",1,3,"Newcountry")
					LuaGive("e_pen153",1,3,"Newcountry")
				end
				LuaGive("e_head153",1,3,"Newcountry")		--善战冠
				LuaGive("e_clothes153",1,3,"Newcountry")	--善战袍
				LuaGive("e_pants153",1,3,"Newcountry")		--善战护腿
				LuaGive("e_shoes153",1,3,"Newcountry")		--善战靴	
				LuaGive("e_earring153",1,3,"Newcountry")	--善战耳坠
				LuaGive("e_necklace153",1,3,"Newcountry")	--善战项链
				LuaSay("您已经领取了消费5000元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
				LuaSetTask("Ac15",99)
			else
				LuaSay("提示：你的背包空间不足11格，请先清理背包再来领取哦@!")
			end
		elseif(LuaQuery("BeforeDayCostYB")>=2000)then
			LuaSay("恭喜您，昨日您的消费已经达到2000元宝！您将得到系统赠送的30个强化石、10个幸运宝箱、5个黄金宝箱")
			LuaSay("今日您已经消费"..a.."元宝，如果您消费到5000元宝明日就能得到强化石50个、幸运宝箱20个、黄金宝箱10个、50级黄金装备一套")
			AddMenuItem("@7继续消费","")
			AddMenuItem("@1[推荐]@0@5继续消费","goon")
			AddMenuItem("@5现在领取","Ac16_2000")
		elseif(LuaQuery("BeforeDayCostYB")>=1000)then
			LuaSay("恭喜您，昨日您的消费已经达到1000元宝！您将得到系统赠送15个强化石、5个幸运宝箱、2个黄金宝箱")
			LuaSay("今日您已经消费"..a.."元宝，如果您消费到2000元宝明日您就能得到系统赠送的30个强化石、10个幸运宝箱、5个黄金宝箱")
			AddMenuItem("@7继续消费","")
			AddMenuItem("@1[推荐]@0@5继续消费","goon")
			AddMenuItem("@5现在领取","Ac16_1000")
			
		elseif(LuaQuery("BeforeDayCostYB")>=500)then
			LuaSay("恭喜您，昨日您的消费已经达到500元宝！您将得到系统赠送5个强化石、2个幸运宝箱、1个黄金宝箱")
			LuaSay("今日您已经消费"..a.."元宝，如果您消费到1000元宝您明日将得到系统赠送15个强化石、5个幸运宝箱、2个黄金宝箱")
			AddMenuItem("@7继续消费","")
			AddMenuItem("@1[推荐]@0@5继续消费","goon")
			AddMenuItem("@5现在领取","Ac16_500")
			
		elseif(LuaQuery("BeforeDayCostYB")>=300)then
			LuaSay("恭喜您，昨日您的消费已经达到300元宝！您将得到系统赠送3个强化石、1个幸运宝箱")
			LuaSay("今日您已经消费"..a.."元宝，如果您消费到500元宝明日您将得到系统赠送5个强化石、2个幸运宝箱、1个黄金宝箱")
			AddMenuItem("@7继续消费","")
			AddMenuItem("@1[推荐]@0@5继续消费","goon")
			AddMenuItem("@5现在领取","Ac16_300")
			
		elseif(LuaQuery("BeforeDayCostYB")>=100)then
			LuaSay("恭喜您，昨日您的消费已经达到100元宝！您将得到系统赠送1个强化石、1个幸运宝箱")
			LuaSay("今日您已经消费"..a.."元宝，如果您消费到300元宝明日您将得到系统赠送3个强化石、1个幸运宝箱")
			AddMenuItem("@7继续消费","")
			AddMenuItem("@1[推荐]@0@5继续消费","goon")
			AddMenuItem("@5现在领取","Ac16_100")
			
		end
		LuaSetTask("Ac15_day",GetCurrentDay())
	else
		LuaSay("您今日已经领过消费奖励了哦，活动期间每天都可以来领取一次，给力赠送，你准备好消费了吗")
	end

	elseif(answer=="Ac16_2000")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",30,"Ac15_2000")	--绑定强化石
			LuaGive("o_box002",10,"Ac15_2000")	--幸运宝盒
			LuaGive("o_box005j",5,"Ac15_2000")	--黄金宝
			LuaSay("您已经领取了消费2000元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("提示：你的背包空间不足3格，请先清理背包再来领取哦@!")
		end
	elseif(answer=="Ac16_1000")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",15,"Ac15_1000")	--绑定强化石
			LuaGive("o_box002",5,"Ac15_1000")	--幸运宝盒
			LuaGive("o_box005j",2,"Ac15_1000")	--黄金宝
			LuaSay("您已经领取了消费1000元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("提示：你的背包空间不足3格，请先清理背包再来领取哦@!")
		end
	elseif(answer=="Ac16_500")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",5,"Ac15_500")	--绑定强化石
			LuaGive("o_box002",2,"Ac15_500")	--幸运宝盒
			LuaGive("o_box005j",1,"Ac15_500")	--黄金宝
			LuaSay("您已经领取了消费500元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("提示：你的背包空间不足3格，请先清理背包再来领取哦@!")
		end
	elseif(answer=="Ac16_300")then
		if(LuaFreeBag()>=2)then
			LuaGive("o_ybsc002j",3,"Ac15_300")	--绑定强化石
			LuaGive("o_box002",1,"Ac15_300")	--幸运宝盒
			LuaSay("您已经领取了消费300元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
		end

	elseif(answer=="Ac16_100")then
		if(LuaFreeBag()>=2)then
			LuaGive("o_ybsc002j",1,"Ac15_100")	--绑定强化石
			LuaGive("o_box002",1,"Ac15_100")	--幸运宝盒
			LuaSay("您已经领取了消费100元宝的奖励，今日就不能再领取消费其他金额的奖励了哦@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
		end
	elseif(answer=="goon")then
		LuaSay("您的选择是明智的，消费的越多得到的越多哦@!")
elseif(answer=="Ac16")then
	LuaSay("冰纷夏日，幸运宝箱从天降。近期天相异常在外国的土地上出现大批幸运宝箱和幸运钥匙被怪物掠夺，你只需在外国杀怪就有机率获得幸运宝箱和幸运钥匙。")
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("怪物等级和玩家等级越相近爆率越高。幸运宝箱中可以开出各种宝物.")
	else	
		LuaSay("怪物等级和玩家等级越相近爆率越高。幸运宝箱中可以开出各种宝物,不知道怪物等级是多少？打开确定键选择世界地图，选择查看就能看到当前地图中怪物的等级了哦@!")
	end
elseif(answer=="Ac17")then
	LuaSay("活动期间内每日可在建康城城中心NPC公公领取一次奖励机不可失失不再来哦！每日仅有一次哦。奖品有：2颗暴击丸、1个恩赐锦囊")	
	if(GetCurrentDay()~=LuaQueryStrTask("Ac17day")) then
		LuaSetTask("Ac17",0)
	end
	if(LuaQueryTask("Ac17")==0)then
		LuaSay("公公：今日目测大侠满脸红光，头顶祥云，必是招财进宝之日！")
		LuaGive("o_state005j",2,"Ac18")
		LuaGive("o_present020",1,"Ac18")
		LuaSetTask("Ac17",99)
		LuaSetTask("Ac17day",GetCurrentDay())
	end

elseif(answer=="Ac18")then
	LuaSay("公公：刚说大侠头顶祥云，原来是要来购买[恩赐锦囊]，此锦囊却乃天下极品，能开出各种物品，小至经验符，大到顶级材料！无所不有！")
	LuaSay("公公：老朽年迈，只带了200个锦囊赠送给有缘人，你只需要花费20元宝就能获得一个")
	AddMenuItem("@7购买一个@0@3锦囊@0","")
	AddMenuItem("@1[推荐]@0@5马上购买","Ac18_yes")
	AddMenuItem("暂不购买","")

	elseif(answer=="Ac18_yes")then
		if(LuaQueryMoney()>=20)then
			LuaGive("o_present020",1,"Ac18")
			LuaAddYB(1,-20)
		else
			LuaSay("公公：小子，你身上的元宝木有20个呀，锦囊不能送给你")
		end



elseif(answer=="Ac19")then
	LuaSay("活动期间杀怪可获得怪物的内丹，20个内丹可以兑换1个恩赐锦囊。恩赐锦囊在建康城城中心NPC公公兑换。锦囊可以随机开出各种高级材料，30级以上装备合成卷，以及各种高等级装备哦")
	AddMenuItem("@7兑换@0@3恩赐锦囊@0","")
	AddMenuItem("@5马上兑换","Ac19_yes")
	AddMenuItem("暂不兑换","")
	elseif(answer=="Ac19_yes")then
		if(LuaItemCount("o_mission305")>=20)then
			DelItem("o_mission305",20)
			LuaGive("o_present020",1,"Ac19")
		else
			LuaSay("您身上的内丹不足，不能兑换@3恩赐锦囊@0")
		end



end
LuaSendMenu()
return 1
end 

