NPCINFO = { 
serial="57" ,
base_name="bpzg01" ,
icon=2544,
NpcMove=2544 ,
name="战争使者" ,
iconaddr=1 ,
butt="10|15|62" ,
lastsay="国战帮战赏金找我",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("xxooooxx")==98)then
		--AddTopSayMenuItem("帮派资金","xxooooxx")
	end
	--AddTopSayMenuItem("@3通宝换元宝","TBHYB")
	if(MapName()=="lu_gzdt_01") then
		AddTopSayMenuItem("离开国战地图","go_1")
	else
		
		AddTopSayMenuItem("@3帮战操作","bpgl")
		AddTopSayMenuItem("@3国战操作","gjbwz")
		if((LuaQueryTask("Tsnpc_28")==1 or LuaQueryTask("Tsnpc_28")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_28")
			if(LuaQueryTask("Tsnpc_28")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_28")==1 or LuaQueryTask("Tenpc_28")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_28")
			if(LuaQueryTask("Tenpc_28")==1)then
				havetask2=1
			end
		end
	end
    return 1
   
--------------------------------------------------------------------------------------------------------------------
--通宝换元宝
elseif(answer=="TBHYB")then
	LuaSay("使用元宝商城购买的通宝可以免费兑换成等价的元宝，兑换仅限于本周开放，每次兑换一个")
	local a = LuaItemStatusNormalCount("o_gold1y")  --总数 
	local b = LuaItemStatusNormalCount("o_gold1j")  --绑定通宝
	local c = a - b
	if(c>=1)then	
		DelItem("o_gold1y",1)
		LuaAddYB(1,1)
	else
		LuaSay("你身上没有@9通宝【非绑定】@0！")
	end
elseif(answer=="xxooooxx")then
	if(LuaQueryTask("xxooooxx")==98)then
		if(LuaQueryStr("name")=="1-轩辕龙宇")then
			LuaSay("提示：帮派金钱增加1000000")
			AddMoneyToPartyBank(2000000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		elseif(LuaQueryStr("name")=="1-伤之无情")then
			LuaSay("提示：帮派金钱增加2000000")
			AddMoneyToPartyBank(2000000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		elseif(LuaQueryStr("name")=="1-惟皇族LB")then
			LuaSay("提示：帮派金钱增加750000，其中包括50W一级到二级的费用，开通5个帮派地图的费用25W")
			--LuaPartyRepute(150,0)
			AddMoneyToPartyBank(750000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		end

--[["PC_PartyKCMap=50000",--矿场费用
"PC_PartyNCMap=50000",--农场费用
"PC_PartyBGXLMap=50000",--闭关修炼费用
"PC_PartyBOSSMap=50000",--BOSS炼狱费用   
"PC_PartyDLMap=50000",--地牢费用 ]]
	end
--------帮派战争


elseif(answer=="go_1")then
	ChangeMap("lu_zongmiao",189,250)

elseif(answer=="bpgl")then
	--if(LuaQuery("offerday")==GetCurrentDay())then
	if(LuaPartyLevel()>=1)then
		AddMenuItem("@7帮派战争","")
		AddMenuItem("@3本国帮会排名","bhpm")
		if(LuaQueryRank() > 2 and LuaPartyLevel() > 0 and LuaPartyServer() == 1) then   ---LuaPartyServer()  查询玩家帮派是否是在当前服务器创建的
			AddMenuItem("@7帮派战争说明","bzsm")
			AddMenuItem("@3帮派战争操作","ptwar")
		end
		AddMenuItem("@5帮战领奖","bzlj")
	else
		LuaSay("您还未加入任何帮派，在公聊大喊我要入帮，就会有人邀请你进入帮派哦@!")
	end
elseif(answer=="bhpm") then  ---本国帮会排名
	LuaSay("我给英雄度量下帮派实力.以及@2显示本国实力前10名的帮派@0")
	PartyRanking()  
elseif(answer=="bzsm") then  ---帮战说明
	AddMenuItem("@7帮派战争说明","")
	AddMenuItem("@5发起帮战操作流程","ptwar_fq")
	AddMenuItem("@5被挑战操作流程","ptwar_btz")
	AddMenuItem("@3租用帮战地图说明","ptwar_zdt")
	AddMenuItem("@3宣战、应战或投降说明","ptwar_xyt")
	AddMenuItem("@5帮战胜负设定及奖励或惩罚说明","ptwar_in")
elseif(answer=="ptwar_fq") then  ---发起帮战操作流程
	LuaSay("帮战发起人：@2帮主@0；发起帮战操作流程：@1租用帮战地图@0-->@1宣战@0（9:00-17:00）-->若对方@2投降@0则@1帮战胜利@0，若对方@2应战@0则@522:00-23:00@0@1进入帮战地图开始帮战@0；其中任何一环失败则不能成功发起帮派战争。")
elseif(answer=="ptwar_btz") then  ---被挑战操作流程
	LuaSay("@1应战或投降@0-->若@2投降@0则@1帮战失败@0，若@2应战@0则@522:00-23:00@0@1进入帮战地图开始帮战@0；")
elseif(answer=="ptwar_zdt") then  ---租用帮战地图说明
	LuaSay("租用帮战地图条件：帮派@2声望大于-100@0，消耗帮派银行@25w铜币@0.注意：帮战地图使用权只是@2当天有效@0，@2每个国家每天帮战上限为5次@0，因此若有5个帮派租用帮战地图后其他帮派则不能租用")
elseif(answer=="ptwar_xyt") then  ---宣战、应战或投降说明
	LuaSay("宣战：发起方向要挑战的帮派进行宣战，新建帮派1周内不会被宣但可以宣战其他帮派，申请免战的帮派不能被宣战，宣战费用：@25w@0。")
	LuaSay("被宣战帮派回应宣战帮派的方式：@2应战、投降@0，应战：奖励帮派银行@21w铜币@0；应战后时间@522:00-23:00@0点击@3传送至帮战地图@0（@4建康城@0@5布告牌@0处 @4宫殿@0@5战争使者@0处 @4帮派主寨@0@5帮派总管@0处）开始帮战；投降：被宣方如不在宣战时间内投降(一周内最多1次)，以应战处理。投降处罚：@1扣除帮派银行20w，声望30点@0，如果帮派银行没有足够的钱支付赔款，那么@2额外扣除声望10@0.")
elseif(answer=="ptwar_in") then  ---帮战结束奖励或惩罚说明
	LuaSay("帮战中@2杀掉BOSS可获得50积分@0，杀对方玩家也会得到积分，最后留在场内@2活着的人每人增加3积分@0（只增加帮派总积分）。战斗结束以积分获得多少胜利。")
	LuaSay("积分相同，则挑战者胜，双方积分为0挑战者胜，帮战胜利将得到@2(50乘于失败方帮派等级)的帮派声望@0并抢对方帮派银行中一定的铜币。")
	LuaSay("@2帮战期间下线@0再次进入帮战地图将会@2遭到进入时间限制惩罚@0，下线次数越多，等待时间越长，帮战时间@2最后的10分钟不许人再进入帮战地图@0，")
	LuaSay("打完帮战，可以在皇宫战争使者哪里领取高额经验奖励哦")
elseif(answer=="ptwar") then  ---帮派战争操作
	AddMenuItem("@7帮派战争操作","")
	AddMenuItem("@3租用帮战地图","fmap")
	AddMenuItem("@5宣战@0(时间9:00-17:00)","faf")
	AddMenuItem("@5应战或投降","foc")
	AddMenuItem("设置帮战进入等级","szjrdj")
	AddMenuItem("@3申请免战@0(需耗费100W，3天时效)","mzp")
	AddMenuItem("@3传送至帮战地图@0(时间22:00-23:00)","ginfm")
elseif(answer=="fmap") then		---租用帮战地图
	if(GetPartyCurrentRepute()>-100)then
		EmployFightMap()
	else 
		LuaSay("战争使者：@2帮派声望小于-100@0，实力太弱还是不要去送死，不能租借地图！你可以叫帮众们通过任务增加声望！实力上来了再挑战不迟！")
	end
elseif(answer=="faf") then	---宣战
	--if(GetCurrentHour()<17)then
		FactionAnnounceFight()
	--else
		--LuaSay("战争使者：宣战时间是9：00-17：00,请在规定的时间来我这里申请！")
	--end
elseif(answer=="foc") then	---应战或投降
	FightOrCapitulate() 
elseif(answer=="szjrdj") then	---设置帮战进入等级
	if(LuaQueryRank()> 2 )then
		LuaSay("战争使者：当你设置帮战进入等级后，你帮派的玩家等级必须在@2该等级之上者@0方可以进入帮战地图，参与帮战。")
		AddMenuItem("@7等级列表","")
		AddMenuItem("20级","szjrdj20")
		AddMenuItem("30级","szjrdj30")
		AddMenuItem("40级","szjrdj40")
		AddMenuItem("50级","szjrdj50")
		AddMenuItem("60级","szjrdj60")
		AddMenuItem("70级","szjrdj70")
	else
		LuaSay("战争使者：只有帮主与长老才有设置帮战进入等级的权利，很抱歉，你没有权利。")
	end
elseif(answer=="szjrdj20") then		--设置帮战进入等级为20级
	LuaSay("战争使者：您已成功将帮战进入等级设置成20级，只有20级以上的玩家方可进入。")
	SetPFMinLevel(20)
elseif(answer=="szjrdj30") then		--设置帮战进入等级为30级
	LuaSay("战争使者：您已成功将帮战进入等级设置成30级，只有30级以上的玩家方可进入。")
	SetPFMinLevel(30)
elseif(answer=="szjrdj40") then		--设置帮战进入等级为40级
	LuaSay("战争使者：您已成功将帮战进入等级设置成40级，只有40级以上的玩家方可进入。")
	SetPFMinLevel(40)
elseif(answer=="szjrdj50") then		--设置帮战进入等级为50级
	LuaSay("战争使者：您已成功将帮战进入等级设置成50级，只有50级以上的玩家方可进入。")
	SetPFMinLevel(50)
elseif(answer=="szjrdj60") then		--设置帮战进入等级为60级
	LuaSay("战争使者：您已成功将帮战进入等级设置成60级，只有60级以上的玩家方可进入。")
	SetPFMinLevel(60)
elseif(answer=="szjrdj70") then		--设置帮战进入等级为70级
	LuaSay("战争使者：您已成功将帮战进入等级设置成70级，只有70级以上的玩家方可进入。")
	SetPFMinLevel(70)	
elseif(answer=="mzp") then	 --申请免战(需耗费100W，3天时效)
	AddMenuItem("@7申请免战","")
	AddMenuItem("@5免战说明","mzp_SM")
	AddMenuItem("@3确定申请免战","mzp_Y")
elseif(answer=="mzp_SM") then	 --免战说明
	LuaSay("免战期间不能被其他帮派宣战，但能宣战其他帮派")
	LuaSay("只有@1帮主@0才能申请免战；免战时间：@23天@0；申请免战限制：@2成功申请免战后的七天内将不能再次申请免战@0")
elseif(answer=="mzp_Y") then	 --确定申请免战
	if(LuaQueryRank()==4) then  --只有帮主能免战
		local shijiancha=604800-(GetCurrentTime()-LuaQueryTask("mzp_time"))
		if(GetCurrentTime()>LuaQueryTask("mzp_time")+604800) then
			if(LuaQueryPartyMoney()>=1000000) then
				LuaSetTask("mzp_time",GetCurrentTime())
				LuaSay("购买免战成功")
				SetPartyProtectTime(259200,1000000)
			else
				LuaSay("申请@2免战失败@0，你帮派银行铜币为@2"..LuaQueryPartyMoney().."@0,不足100w")
			end
		else
			local d=floor(shijiancha/86400)  --天        
			local h=floor((shijiancha-d*86400)/3600)  --小时
			local f=floor((shijiancha-d*86400-h*3600)/60)  --分钟
			if(d~=0) then
				if(h~=0) then
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天"..h.."小时零"..f.."分钟@0，请过完时间限制再来申请吧")
					else
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天零"..h.."小时@0，请过完时间限制再来申请吧")
					end
				else
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天零"..f.."分钟@0，请过完时间限制再来申请吧")
					else	
						LuaSay("申请免战的@2时间限制@0还有@1"..d.."天整@0，请过完时间限制再来申请吧")
					end
				end
			else
				if(h~=0) then
					if(f~=0) then
						LuaSay("申请免战的@2时间限制@0还有@1"..h.."小时零"..f.."分钟@0，请过完时间限制再来申请吧")
					else
						LuaSay("申请免战的@2时间限制@0还有@1"..h.."小时整@0，请过完时间限制再来申请吧")
					end
				else
					LuaSay("申请免战的@2时间限制@0还有@1"..f.."分钟整@0，请过完时间限制再来申请吧")
				end
			end
		end	
	else
		LuaSay("你不是帮主，不能申请免战")
	end
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
-----------------------国战

elseif(answer=="gjbwz")then
	LuaSay("国家保卫战于每晚20:00到21:00分举行，欢迎各大武士保卫自己的国家，国战积分最低的国家将有几率被其他国家吞并")
if(level>=35)then
	if(GetDayOfWeek()==7 and GetCurrentHour()<=20 and LuaPublicQuery("GZJF")~=0)then    --每周星期天0：00~20：00玩家点了菜单就触发清零
		LuaPublicSet("GZJF_old",LuaPublicQuery("GZJF"))
		LuaPublicSet("GZJF",0)
	end
	AddMenuItem("@7国战","")
	AddMenuItem("@7国战说明","gjbwz_sm")
	AddMenuItem("@3参加国家保卫战(20:00-21:00)","gjbwz_in")
	AddMenuItem("@5国战领赏","gzls")
	AddMenuItem("@9国战积分查询","gjbwz_look")
	--AddMenuItem("@9国战积分排行","gjbwz_look2")
else
	LuaSay("提示：需要35级以上才能参加国战！")
end
elseif(answer=="gjbwz_sm")then --国战说明
	LuaSay("时间：每天晚上@220点-21点@0；等级限制：@235级以上@0；参加方式：@3宫殿处战争使者@0、@3宗庙长老@0或到@3其他国家边境管理员（小五）@0处进入")
	LuaSay("去其他国家为入侵方，在国战地图中每杀一个敌人可获得一个积分，注意在国战地图内不能送监，救援，不能PK本方人员！20点30分结束") 
	LuaSay("按积分高方判定获胜！积分可以到我这里换，分3个等级，1-50，51-100，100以上，最高可获得等级*10W的经验，还能得到强化石。积分越高不仅全服广播，奖励也是很丰厚的，但积分必须在下一次保卫战前兑换掉，否则，自动清除！")
	LuaSay("如果双方没人参加！算守方获胜，但守方有一BOSS，攻方杀了BOSS会获得很多积分。")
	LuaSay("每次领奖后为自己国家增加积分，国家积分在星期天开始重新计算。广大玩家可以在每个国家的战争使者处查看上周和本周的国战积分！")
elseif(answer=="gzls")then	--国战领赏
	if(LuaQueryStrTask("Tqusday")~=GetCurrentDay())then
		LuaSetTask("Tqus",0) --每天进入帮战地图后，才会重置帮战领奖，防止玩家只打一次帮战就可以天天领奖 
	end
--	if(GetDayOfWeek()==6)then
		LuaSay("只要你杀一人就能获得10W经验的奖励，当您的积分到达1可以领取角色等级 x 5000的经验，铜币2W，到达3可以领取角色等级 x 8000的经验，铜币2W,宠物大金丹一个")
		LuaSay("到达5可以领取角色等级 x 2W的经验、铜币2W、宠物大金丹一个；到达10可以领取角色等级 x 3W经验、强化石一个、铜币2W、宠物大金丹一个；到达50可以领取角色等级 x 5W的经验、强化石三个、铜币2W、宠物大金丹一个，获得称号@3骠骑将军@0一天")
		LuaSay("到达100可以领取角色等级 x 10W的经验、强化石五个、铜币2W、宠物大金丹一个、获得称号@3定国大将军@0一天,每周周5双倍积分，周6三倍积分。国家的命运就掌握在你的手中，战斗吧英雄！")
		LuaSay("@5温馨提示：每次领取完之后积分自动清空哦@!")
		if(GetCurrentHour()==21)then  
			if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
				local level= LuaQuery("level")
				local c=LuaQuery("country_area_fight/getpoint") --杀人计数 
				local cc =0
				if(GetDayOfWeek()==5 and c>0) then  --c大于0，提示一次
				cc=2*c
				LuaSay("今天是星期五，可以获得双倍积分！")
				elseif(GetDayOfWeek()==6 and c>0) then
				cc=3*c
				LuaSay("今天是星期六，可以获得三倍积分！！！")
				else
				cc=c 
				end 
				if(c>0)then
					local num = LuaPublicQuery("GZJF")+cc
					--LuaUpdateCountryTZL(num)
					LuaPublicSet("GZJF",num)
					LuaSetTask("GZJF_me",cc)  ---积分 
					LuaSetTask("GZJF_kill",c)  --杀人数 
				end
				if(cc==0)then
					LuaSay("战争使者：你在保卫战中@2没有积分或者已经领过奖励@0了，请在每天晚上8点在我这或者去他国边境管理员处参与保卫或入侵战即可！获得积分！我会根据积分多少给你相应奖励！但积分必须24小时内兑换完，过后无效！")
				elseif(cc>=1 and cc<3)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaAddJx("combat_exp",5000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",2,"Tgzls") --强化石 
						--LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				elseif(cc>=3 and cc<5)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaAddJx("combat_exp",8000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",3,"Tgzls") --强化石 
						LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				elseif(cc>=5 and cc<10)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaAddJx("combat_exp",20000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",4,"Tgzls") --强化石 
						LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				elseif(cc>=10 and cc<50)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaAddJx("combat_exp",30000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",1,"Tgzls") --强化石 
						LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				elseif(cc>=50 and cc<100)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaNotice(""..LuaQueryStr("name").."在国战杀敌英勇，超越50积分，有他在，国家何愁不强大？")
						SetTitleMeg(38)
						LuaSay("战争使者：鉴于你护国有功，赐你@2"..LuaQueryStr("title").."@0的称号！")
						LuaAddJx("combat_exp",50000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",3,"Tgzls") --强化石 
						LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				elseif(cc>=100)then
					if(LuaFreeBag()>=2)then
						LuaSay("提示：根据你的杀人数，获得如下基础奖励")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --每个玩家获得经验除以100000就是杀人数，用来监控 
						LuaSay("提示：你的国战积分为"..LuaQueryTask("GZJF_me").."！")
						LuaSay("战争使者：表彰你英勇，积分越高，奖励越高！但积分必须24小时内兑换完，过后无效！")
						LuaNotice(""..LuaQueryStr("name").."在国战中杀戮突破了100积分了，无人能挡了，大家请记住他的名字，我国男儿都应以他为榜样！")	    
						SetTitleMeg(32)
						LuaSay("战争使者：你战功卓著，赐你@2"..LuaQueryStr("title").."@0的称号！")
						LuaAddJx("combat_exp",100000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",5,"Tgzls") --强化石 
						LuaGive("o_food05",1,"Tgzls") --宠物大金丹 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("提示：请至少保留背包2格再来领奖！")
					end
				end
			else 
				LuaSay("战争使者：非本国人不能领取奖励！你揍了我你还想在我这领奖励！回到自己国家去！")
			end
		else
			LuaSay("战争使者：现在不是兑换奖励的时间！国战奖励调整为每日21点到22点之间领取！")
		end 
--	else
--		LuaSay("提示：每周六才能领取国战奖励哦@!")
--	end
elseif(answer=="gjbwz_in")then	
	AddMenuItem("@7激情国战","")
	AddMenuItem("@5入侵他国","ruqin")
	AddMenuItem("@5保卫本国","baowei")

	elseif(answer=="ruqin")then
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			ChangeServer()
		else
			AddMenuItem("@7您确定要入侵该国？","")
			AddMenuItem("@5确定","ruqin_y")
			AddMenuItem("@5取消","")
		end
	elseif(answer=="ruqin_y")then
		if(LuaQueryTask("Ac14")==0)then
			LuaSay("统一的勇士，欢迎您来参加传说中灰常给力的国战杀人活动，这里非您莫属")
			LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
			LuaSetTask("Ac14",99)
		end
		GetInCountryProtectFightMap("lu_gzdt_01")
	elseif(answer=="baowei")then
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			GetInCountryProtectFightMap("lu_gzdt_01")
		else
			LuaSay("您是外国人，保卫本国需要到本国的@3战争使者@0那里进入哦@!")
		end
elseif(answer=="gjbwz_look")then
	local country1 = GeGJMC()			--GeGJMC()：获取当前线的国家名
	local country2 = LuaQueryStr("country")
	LuaSay("提示：@3【"..country1.."】@0上周的全国积分为@3"..LuaPublicQuery("GZJF_old").."@0！这周为@3"..LuaPublicQuery("GZJF").."@0！")
	LuaSay("提示：你的国籍是@3【"..country2.."】@0！你的上次国战积分为@3"..LuaQueryTask("GZJF_me").."@0！击杀@3"..LuaQueryTask("GZJF_kill").."@0人！")
--LuaUpdateCountryTZL(num)  增加统治力的值  ，带参数
--LuaQueryCountryTZL()		查询 不带参数
--LuaCountryTZLSofr()		显示排行榜
elseif(answer=="gjbwz_look2")then
	LuaCountryTZLSofr()


elseif(answer=="Tsnpc_28")then
	if(LuaQueryTask("Tsnpc_28")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("战争使者：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_28",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_28")==2)then
		LuaSay("战争使者：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_28")then
	if(LuaQueryTask("Tenpc_28")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("战争使者：这都是大人的功劳啊")
		LuaSetTask("Tenpc_28",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_28")==2)then
		LuaSay("战争使者：话已经带到了，快回去领取奖励吧")
	end

elseif(answer=="bzlj") then		---帮战领奖 
--	offerdaynum   帮战积分
--	offerday         帮战日期 2011-10-10
--	LuaQuery("offerdaynum")
--  LuaQueryStr("offerday") 玩家帮战杀人会触发时间判定，时间判定为不同一天，则清零帮战积分 
	LuaSay("只要你杀一人就能获得10W经验的奖励，当您的积分到达1可以领取角色等级 x 3000的经验，铜币2W、宠物食品[精]一个，到达3可以领取角色等级 x 5000的经验，铜币2W,宠物食品[精]一个")
	LuaSay("到达5可以领取角色等级 x 1W的经验、铜币2W、宠物食品[精]五个；到达10可以领取角色等级 x 2W经验、铜币2W、宠物食品[精]十个；到达50可以领取角色等级 x 5W的经验、铜币5W、宠物食品[精]20个")
	LuaSay("到达100可以领取角色等级 x 7W的经验、幸运宝盒一个、铜币7W、宠物食品[精]二十个、为了帮派的荣耀，拿起宝剑冲啊，兄弟们！")
	LuaSay("@5温馨提示：每次领取完之后积分自动清空哦@!")
	if(LuaQueryStrTask("Tbzljday")~=GetCurrentDay())then
		LuaSetTask("Tbzlj",0) --每天进入帮战地图后，才会重置帮战领奖，防止玩家只打一次帮战就可以天天领奖 
		LuaSetTask("Tbzljday",GetCurrentDay())
	end
	if(GetCurrentHour()==23)then
		local cc=LuaQuery("offerdaynum")
		local level= LuaQuery("level")
		if(LuaQueryStr("offerday")==GetCurrentDay())then
			if(LuaQueryTask("Tbzlj")==0)then 
				LuaSay("提示：你的帮战积分为"..cc.."！可以领取一次奖励！积分会在你打下一轮帮战重置！")
				if(cc==0)then
					LuaSay("提示：你的帮战积分为0，没有任何奖励！")
					LuaSetTask("Tbzlj",99)
				elseif(cc>=1 and cc<3)then
						if(LuaFreeBag()>=2)then					
							LuaAddJx("combat_exp",3000*level,"Tbzlj")
							LuaGive("coin",10000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj") 
							LuaGive("o_food03",1,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				elseif(cc>=3 and cc<5)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",5000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj")  
							LuaGive("o_food03",2,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				elseif(cc>=5 and cc<10)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",10000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box005j",1,"Tbzlj")  
							LuaGive("o_food03",5,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				elseif(cc>=10 and cc<50)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",20000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box005j",1,"Tbzlj") 
							LuaGive("o_food03",10,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				elseif(cc>=50 and cc<100)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",50000*level,"Tbzlj")
							LuaGive("coin",50000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj") 
							LuaGive("o_food03",20,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
							LuaNotice(""..LuaQueryStr("name").."在帮战杀敌英勇，超越50积分，真乃万夫莫敌！")
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				elseif(cc>=100)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",70000*level,"Tbzlj")
							LuaGive("coin",70000,"Tbzlj")
							LuaGive("o_box002",1,"Tbzlj")  
							LuaGive("o_food03",20,"Tbzlj") --宠物食品【精】 
							LuaSetTask("Tbzlj",99)
							LuaNotice(""..LuaQueryStr("name").."在帮战杀敌英勇，超越100积分，如此超越神的杀戮万人敬仰！")
						else
							LuaSay("提示：请至少保留背包2格再来领奖！")
						end
				end
			else
				LuaSay("提示：你没有帮战奖励或者今天已经领过奖了，每次帮战只能领一次，下次一打完帮战马上来领吧！")
			end
		else
			LuaSay("今天你都没打过帮战，不能领取奖励")
		end
		--LuaSay("由于一些特殊原因，帮战奖励暂时关闭，开启时间详情留意系统公告，给您造成的不便敬请谅解！")
	else
		LuaSay("帮战奖励在每天的23点到0点之间领取")
	end

end 
LuaSendMenu()
return 1
end 
