function do_activity(id, answer)

local level = LuaQuery("level")

if (answer == "0") then
		LuaSay("统一OL，七月暑假浓情巨献")
		AddMenuItem("@1[新]@0@5首冲大奖励", "sysinfo Activity part7", "公测活动")
		AddMenuItem("@1[新]@0@5签到领超级状态", "sysinfo Activity part1", "公测活动")
		AddMenuItem("@1[新]@0@5商城道具材料打折扣", "sysinfo Activity part2", "公测活动")
		
		

		--AddMenuItem("@1[新]@0@5超牛新套装疯狂来袭", "sysinfo Activity part1", "公测活动")
		--AddMenuItem("@1[热]@0@5Boss携新套装限时体验版等你来挑战", "sysinfo Activity part2", "公测活动")
		--AddMenuItem("@1[新]@0@5充值返利活动", "sysinfo Activity part3", "公测活动")
		--AddMenuItem("@1[热]@0@5全服双倍经验", "sysinfo Activity part4", "公测活动")
		--AddMenuItem("@1[热]@0@5强化石换取高阶装备", "sysinfo Activity part2", "公测活动")
		--AddMenuItem("@1[热]@0@5每日送大奖", "sysinfo Activity part4", "公测活动")
		--AddMenuItem("@1[新]@0@5实力的见证", "sysinfo Activity part6", "公测活动")
		--AddMenuItem("内测用户送好礼", "sysinfo Activity part7", "公测活动")
		--AddMenuItem("统一OL新手大放送", "sysinfo Activity part8", "公测活动")		
elseif (answer == "part1") then
		LuaSay("活动时间：7月17号至7月22号*活动内容：活动期间，每天到建康城活动使者处签到可以随机领取活动不同的状态。每个玩家角色只能每天领取1次活动状态，每个玩家连续4天领取就可获得“签到星君”的称号。（称号有效时间48小时）每个玩家角色只能每天领取1次，每个玩家连续7天领取就可获得10个通宝以及“签到之王”的称号。（称号有效时间120小时）如：双攻、双防、经验翻倍、阎王之血效果、巫师水晶效果、魔池效果、血池效果、守财奴效果。")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "签到领超级状态")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part2") then
		LuaSay("活动时间：7月17号至7月22号*活动内容：活动期间，商城局部道具连续7天5折，你没有看错，半折优惠等着你哦！打折道具基本上都是强化装备的道具与打造装备的材料。")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "商城道具材料打折扣")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part3") then
		LuaSay("活动时间：7月10号至7月17号*活动内容：在活动期间凡当日累计充值充值每日累计达到300元宝第2天可在建康城活动大使领取100金币。充值每日累计达到500元宝第2天可在建康城活动大使领取200金币。充值每日累计达到1000元宝第2天可在建康城活动大使领取800金币。充值每日累计达到2000元宝第2天可在建康城活动大使领取2000金币")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "充值返利活动")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part4") then
		LuaSay("活动时间：7月10号至7月17号*活动内容：活动期间全服所有打怪经验获得双倍经验奖励")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "全服双倍经验")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part5") then
		LuaSay("2012年6月14日至2012年6月20日*活动内容：在活动期间凡当日累计充值，第2天在建康城活动使者处领取！*充值每日累计达到100元宝以上第2天可在建康城活动大使领取100金币。*充值每日累计达到500元宝以上第2天可在建康城活动大使领取全额的金币返还。（金币等于游戏中送的绑定元宝）@!")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "充值全额大返还")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part6") then
		LuaSay("活动时间：2012年5月25日上午9:00至2012年5月31日*活动内容：活动期间可去其他国家挖取洛阳城主城墙角可获得青石砖、银砖、金砖。凡是身上有砖者被杀后敌人将会获得玩家身上的砖。青石砖、银砖、金砖可在建康城NPC活动使者换取帮派声望，使得帮派快速成长。以帮取国，替换之势即将来临。还在等什么，孩子热血吧！")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "实力的见证")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part7") then
		LuaSay("5月8日公测开始*活动内容：只要一块钱，你没听错，你只需要充值一块钱，就能得到金币50个，滋养丹一颗（使用后能获得大量经验），铜币188888、经验288888，每个账号只有一次机会的哦，详情见建康城活动专员")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "首冲大奖励")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "part8") then
		LuaSay("5月8日公测开始*活动内容：玩家进入游戏后都可获得价值1000元超级豪华新人礼包。礼包中有装备，仙药，点券道具，该包裹10级点击可以开出道具，以后每隔5级都能点击获得道具，60级之前都可以使用")
		AddMenuItem("返回公测活动", "sysinfo Activity 0", "统一OL新手大放送")
		AddMenuItem("返回公告", "sysinfo BACK", "")
end
LuaOtherSendMenu()
return 1
end