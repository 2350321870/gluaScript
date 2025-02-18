NPCINFO = {
serial="55" ,
base_name="xieyan",
icon=2535,
NpcMove=2535,
name="谢琰" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="但使龙城飞将在，不教胡马度阴山",
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
	local T383=LuaQueryTask("T383")	
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_39")==1 or LuaQueryTask("Tsnpc_39")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_39")
		if(LuaQueryTask("Tsnpc_39")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_39")==1 or LuaQueryTask("Tenpc_39")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_39")
		if(LuaQueryTask("Tenpc_39")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T443") == 1)then
		AddTopSayMenuItem("@2北府大将【剧情】","T443")
		havetask2 =1
	end
	
	if(LuaQueryTask("T403") == 1)then
		AddTopSayMenuItem("@2前方军情【剧情】","T403")
		havetask2 =1
	end
	

	
	if(LuaQueryTask("T442") == 1)then
		AddTopSayMenuItem("@2汇报军情【剧情】","T442")
		havetask2 =1
	end
	

	if(LuaQueryTask("Tbprw8")==1) then
		AddTopSayMenuItem("@2@2派送物资【每日】","Tbprw8")
		havetask2=1
	end
--以上为黄色问号部分、
	if(LuaQueryTask("T440") == 1)then
		AddTopSayMenuItem("@2提升士气【剧情】","T440")
		havetask4 =1
	end
	if(LuaQueryTask("T446") == 1)then
		AddTopSayMenuItem("@2副本体验【教程】","T446")
		havetask4 =1
	end
	if(LuaQueryTask("T441") == 1)then
		AddTopSayMenuItem("@2提升士气2【剧情】","T441")
		havetask4 =1
	end
	if(LuaQueryTask("T445") == 1)then
		AddTopSayMenuItem("@2野蛮愚民【循环】","T445")
		havetask4 =1
	end
--以上为灰色问号部分
	if(level>=20 and LuaQueryTask("T446")==0)then
		AddTopSayMenuItem("副本体验【教程】","T446")
		havetask1 =1
	end
	if(LuaQueryTask("T440") == 0 and level>=25)then
		AddTopSayMenuItem("提升士气【剧情】","T440")
		havetask1 =1
	end
	
	if(LuaQueryTask("T441") == 0 and LuaQueryTask("T440") == 99)then
		AddTopSayMenuItem("提升士气2【剧情】","T441")
		havetask1 =1
	end
	
	if(LuaQueryTask("T442") == 0 and level>=24)then
		AddTopSayMenuItem("汇报军情【剧情】","T442")
		havetask1 =1
	end
	if(LuaQueryTask("T445") == 0 and LuaQuery("level") >= 24 and LuaQuery("level") < 30)then
		AddTopSayMenuItem("野蛮愚民【循环】","T445")
		havetask1 =1
	end
	if(LuaQueryTask("T443") == 0 and level>=26)then
		AddTopSayMenuItem("北府大将【剧情】","T443")
		havetask1 =1
	end
--以上为黄色感叹号部分
	
	AddTopSayMenuItem("@3进入天都巢","Tdbjbs")
--以上为特殊部分
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
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
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("谢琰：将军百战死，壮士十年归！")
elseif(answer=="T446")then ---------副本体验
		if(LuaQueryTask("T446")==0 )then
			LuaSay("谢琰：去@4建康城@0找副本使者，先选择打宝副本，再进入副本@3晋军北伐（20~29）@0！击杀@320个姚军士兵@0！")
			LuaSetTask("T446",1)
			LuaSetTask("task_kill/mon_112/T446",1)
			AddLog("副本体验【教程】",446)
			UpdateMenu()
		elseif(LuaQueryTask("T446")==1)then
			local a=LuaQueryTask("task_kill/mon_112/T446")-1
			if(a>=21)then     --------杀怪数判断 
			
				--if(TeamQueryTask("T446_team")==99 ) then
				LuaSay("谢琰:少侠果然神勇！这是给你的奖励！")
				AddMenuItem("任务完成","")
				AddMenuItem("领取奖励","T446jl")
				--else
				--LuaSay("谢琰:你已经杀够50个姚军士兵了！但是你的队友还没有杀够50个！")
				--LuaSay("提示：每天进入副本的次数有限制，没杀完的可以第二天去杀！必须与其他玩家（20~29）组队前往共同杀怪才能完成！")
				--end
			else
			LuaSay("谢琰：你才击杀了@2"..a.."个姚军士兵@0，去@4建康城@0找副本使者，进入副本@3晋军北伐（20~29）@0！击杀@320个姚军士兵@0！")
			end 
		end
elseif(answer=="T446jl")then                   ---------------------446奖励
		if(LuaQueryTask("T446")==1)then
		if(LuaQueryTask("task_kill/mon_112/T446")>=21)then
		LuaSetTask("T446",99)
		LuaDelTask("task_kill/mon_112/T446")
		LuaAddJx("combat_exp",270000,"T446")
		LuaGive("coin",2500,"T446")
		DelLog("446")
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end
elseif(answer=="T403")then       -----------------------------  前方军情 
	if(LuaQueryTask("T403") == 1) then
	LuaSay("谢琰：前线情况不容乐观，各蛮人实力横行，而且很多的百姓也被愚化，不只如此，北府精锐士气低落，恐怕已经不堪大用！")
    AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T403jl")
	end 
	elseif(answer=="T403jl")then
		if(LuaQueryTask("T403")==1) then
			LuaAddJx("combat_exp",216000,"T403")
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T403",99)
			DelLog("403")
			UpdateMenu()
			end
elseif(answer=="T440")then       -----------------------------  提升士气
	if(LuaQueryTask("T440") == 0) then
		LuaSay("谢琰：如今士气低落，劳烦少侠打败@225个北府精锐@0，教训教训他们以壮大我军士气！")
		LuaSay("谢琰：组队完成任务会简单的很多哦，还能结交到兄弟，无兄弟，不统一。")
		LuaSetTask("T440",1)
		LuaSetTask("task_kill/mon_019/T440",1)
		UpdateTopSay("消灭25个北府精锐")
		AddLog("提升士气【剧情】",440)
		UpdateMenu()
	elseif(LuaQueryTask("T440")==1) then
		if(LuaQueryTask("task_kill/mon_019/T440")>=26) then
			LuaSay("谢玄：少侠真是好本领！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T440jl")
			else
			LuaSay("谢玄：你还没杀够25个@2北府精锐@0！")
			UpdateTopSay("杀够25个北府精锐再来找我")
			end
	end
	elseif(answer=="T440jl")then
		if(LuaQueryTask("T440")==1) then
			if(LuaQueryTask("task_kill/mon_019/T440")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",268000,"T440")
			else
				LuaAddJx("combat_exp",248000,"T440")
			end
			--27项链 刺激点
			LuaGive("e_necklace005",1,3,"T440")
			LuaGive("coin",800,"T440")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_019/T440")
			LuaSetTask("T440",99)
			DelLog("440")
			UpdateMenu()
			end
                end
                
elseif(answer=="T441")then       -----------------------------  提升士气2
	if(LuaQueryTask("T441") == 0) then
		LuaSay("谢琰：现在士气被激发，，正是反攻的好机会，劳烦少侠为先锋，消灭@225个@2愚民@0，我率大军随后而至！")
		LuaSay("谢琰：带着你的兄弟去厮杀吧")
		LuaSetTask("T441",1)
		LuaSetTask("task_kill/mon_020/T441",1)
		UpdateTopSay("消灭25个愚民")
		AddLog("提升士气2【剧情】",441)
		UpdateMenu()
	elseif(LuaQueryTask("T441")==1) then
		if(LuaQueryTask("task_kill/mon_020/T441")>=26) then
			LuaSay("谢玄：这下好了，我军士气高涨！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T441jl")
			else
			LuaSay("谢玄：你还没杀够25个@2愚民@0！")
			UpdateTopSay("杀够25个愚民再来找我")
			end
	end
	elseif(answer=="T441jl")then
		if(LuaQueryTask("T441")==1) then
			if(LuaFreeBag()>=1)then
				if(LuaQueryTask("task_kill/mon_020/T441")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",268000,"T441")
				else
					LuaAddJx("combat_exp",248000,"T441")
				end
				LuaGive("coin",2000,"T441")
				if(LuaQueryTask("Ttaozhuang30A") == 0) then
				LuaGive("e_pants166",1,2,"T441")
				LuaSetTask("Ttaozhuang30A",99)
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_020/T441")
				LuaSetTask("T441",99)
				DelLog("441")
				UpdateMenu()
				end
			 else
				LuaSay("包裹空间不足1格！请先清理下包裹！")
			end
                end
                
elseif(answer=="T442")then       -----------------------------  汇报军情
	if(LuaQueryTask("T442") == 0) then
		LuaSay("谢琰：先把当前的情况报告给@3谢玄@0吧！")
		LuaSetTask("T442",1)
		UpdateTopSay("去北府军营那里与谢玄对话")
		AddLog("汇报军情【剧情】",442)
		UpdateMenu()
	elseif(LuaQueryTask("T442")==1) then
		LuaSay("谢琰：快到@4北府军营@0的@3谢玄@0那里去吧！")
	end



elseif(answer=="T445")then       -----------------------------  野蛮愚民
	local level= LuaQuery("level")
	if(LuaQueryTask("T445") == 0 and LuaQuery("level") <=30) then
		LuaSay("谢琰：这些愚民凶残野蛮，与野兽无异，劳烦少侠为民除害，消灭@225个愚民@0！")
		LuaSay("谢琰：一个人势单力薄，你可组队前去，还能获得更多经验！")
		LuaSetTask("T445",1)
		LuaSetTask("task_kill/mon_020/T445",1)
		UpdateTopSay("消灭25个愚民")
		AddLog("野蛮愚民【循环】",445)
		UpdateMenu()
	elseif(LuaQueryTask("T445")==1) then
		if(LuaQueryTask("task_kill/mon_020/T445")>=26) then
			LuaSay("谢玄：少侠辛苦了！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T445jl")
			else
			LuaSay("谢玄：你还没杀够25个@2愚民@0！")
			UpdateTopSay("杀够25个愚民再来找我")
			end
		end
		elseif(answer=="T445jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		        if(LuaQueryTask("T445")==1) then
				if(LuaQueryTask("task_kill/mon_020/T445")>=26) then
					local jingyan
					local money
					if(LuaQuery("level")<20)then
						money=200
					elseif(LuaQuery("level")<30)then
						money=300
					elseif(LuaQuery("level")<40)then
						money=400
					elseif(LuaQuery("level")<50)then
						money=500
					elseif(LuaQuery("level")<100)then
						money=600
					end
					if(TeamCount()>=2) then
						LuaSay("@1提示：获得组队经验加成")
						jingyan=(50818+level^2*20)
					else
						jingyan=(39818+level^2*20)
					end
					LuaGive("coin",money,"T445")
					LuaAddJx("combat_exp",jingyan,"T445")
					if(LuaQueryTask("T445_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T445_a",99)
					end

					LuaDelTask("task_kill/mon_020/T445")
					DelLog("445")
					LuaSetTask("T445",0)
					UpdateMenu()
				end
			end
	---------

elseif(answer=="T443") then              ------------------------北府大将 
		if(LuaQueryTask("T443")==0) then
		LuaSay("谢琰：我北府军人人彪悍，与北方蛮夷不遑多让，@3刘牢之@0将军更是以一敌百。")
		LuaSay("谢琰：阁下既然有统一天下之大志，当然得见见刘将军了，他就在@4淝水之滨@0，快去吧。")
                LuaSetTask("T443",1)
		UpdateTopSay("去找淝水之滨的刘牢之谈话")
                AddLog("北府大将【剧情】",443)
		UpdateMenu()
		elseif(LuaQueryTask("T443")==1) then
		LuaSay("谢琰：快去找@3刘牢之@0吧，会对你有所帮助的，他就在这@4淝水之滨@0。")
		end

elseif(answer=="Tbprw8") then
if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8B")==0) then
		LuaSay(""..LuaQueryStr("name").."：我受命前来派送@3战争物资@0。")
		LuaSay("谢琰：多谢英雄，来的真及时。")
		LuaSetTask("Tbprw8B",1)
		DelItem("o_mission401",1)
		UpdateMenu()
	end
	if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8B")==1 and  LuaQueryTask("Tbprw8A")==0) then
		LuaSay("谢琰：快去给@4北府军营@0的@3谢玄@0送@3战争物资@0去吧！")
	elseif(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==1) then
		LuaSay("谢琰：快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0回复吧！")
	end
else
	LuaSay("谢琰：新的一天，新的开始，由于你今天以前的@3派送物资【每日】没完成@0，现在自动删除！")
	LuaSay("谢琰：现在你又能到@4宫殿@0的@3晋帝@0处或者@4帮派主寨@0的@3帮派总管@0处接受@3派送物资【每日】@0任务了！")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	UpdateMenu()
end


elseif(answer=="Tsnpc_39")then
	if(LuaQueryTask("Tsnpc_39")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("谢琰：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_39",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_39")==2)then
		LuaSay("谢琰：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_39")then
	if(LuaQueryTask("Tenpc_39")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("谢琰：这都是大人的功劳啊")
		LuaSetTask("Tenpc_39",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_39")==2)then
		LuaSay("谢琰：话已经带到了，快回去领取奖励吧")
	end

	-------你敢赌么
elseif(answer=="Tdbjbs")then
	if(LuaQueryTask("Tdbjbs_ks")==1) then
		LuaSetTask("Tdbjbs_ds",1)  --设置为1  没通过
		LuaDelTask("Tdbjbs_ks")
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("由于你的赌局被打断，现认定你为放弃赌局，惩罚@22小时@0不能再次接受此任务")
	end
	if(LuaQueryTask("Tdbjbs_ds")==1) then  --上次赌局为没通过
		local sjc=GetCurrentTime()-LuaQueryTask("Tdbjbs_time")
		if(sjc>=7200) then
			LuaSetTask("Tdbjbs_ds",0)  --设置为0  
			LuaDelTask("Tdbjbs_time")
		else
			local h=floor((7200-sjc)/3600)
			local f=floor((7200-sjc-h*3600)/60)
			local s=floor((7200-sjc)%60)
			if(h>0) then
				if(f>0) then
					if(s>0) then
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..h.."小时"..f.."分钟"..s.."秒@0以后再来吧")
					else
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..h.."小时零"..f.."分钟@0以后再来吧")
					end
				else  --分钟为0
					if(s>0) then
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..h.."小时零"..s.."秒@0以后再来吧")
					else
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..h.."小时整@0以后再来吧")
					end
				end
			else --h为0
				if(f>0) then
					if(s>0) then
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..f.."分钟"..s.."秒@0以后再来吧")
					else
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等@2"..f.."分钟@0以后再来吧")
					end
				else  --分钟为0
					if(s>0) then
						LuaSay("由于你没有通过上次赌局，@22小时@0惩罚时间还没过，再等"..s.."秒@0以后再来吧")
					end
				end
			end
		end
	end
	LuaDelTask("Tdbjbs_ggs")
	if(LuaQueryTask("Tdbjbs_ds")~=1) then  --上次为通过  或者时间惩罚已经完结
		LuaSetTask("Tdbjbs_ks",1)  --开始后若放弃默认为输
		LuaSay("成大事者，除开本身实力外，运气和胆色也是决定成败的关键")
		LuaSay("只要你能在@23次赌博中赢过我1次@0，就有机会前往天都巢击杀boss@2天师头目@0（注意：@1打断即为放弃任务，需从头开始@0）,若三次都输了或者放弃赌局会有惩罚的哦@!")
		LuaSay("赌博开始...")
		LuaSay("第一关：@2摇色子赌大小@0，规则：小于3点即为小（包括3点），大于3点即为大")
		AddMenuItem("@7押大小","")
		AddMenuItem("@3大","11")
		AddMenuItem("@3小","22")
	end
elseif(answer=="11" or answer=="22")then  --进入第一关
	local a=LuaRandom(6)+1
	LuaSay("摇..摇...我摇啊摇...摇到外婆桥...  额，开小差了.. ")
	LuaSay("好，开，开出来的点数为@2"..a.."点@0")
	local n=answer+0 --获取赌大小  11为大  22为小
	if(a>3) then  --开大
		if(n==11) then  --选大猜对
			LuaSay("英雄好运气，@1第一关过了@0，第二关：@2摇色子赌点数@0，规则：摇一个色子，赌对点数即为过关")
			LuaAddTask("Tdbjbs_ggs",1) --过关数
			AddMenuItem("@7是否进行第二关","")
			AddMenuItem("@3是","Tdbjbs_2") --进入第二关
			AddMenuItem("@3直接进入boss地图","Tdbjbs_jbst") --进入boss地图
		elseif(n==22) then --选小猜错
			LuaSay("哎，看来英雄人品不咋地，想放水都难，@1第一关失败@0，第二关：@2摇色子赌点数@0，规则：摇一个色子，赌对点数即为过关")
			AddMenuItem("@7是否进行第二关","")
			AddMenuItem("@3是","Tdbjbs_2") --进入第二关
			AddMenuItem("@3放弃任务","Tdbjbs_no") --放弃任务
		end
	elseif(a<=3) then  --开小
		if(n==22) then  --选小猜对
			LuaSay("英雄好运气，@1第一关过了@0，进入第二关：@2摇色子赌点数@0，规则：摇一个色子，赌对点数即为过关")
			LuaAddTask("Tdbjbs_ggs",1) --过关数 --奖励有关
			AddMenuItem("@7是否进行第二关","")
			AddMenuItem("@3是","Tdbjbs_2") --进入第二关
			AddMenuItem("@3直接进入boss地图","Tdbjbs_jbst") --进入boss地图
		elseif(n==11) then --选大猜错
			LuaSay("哎，看来英雄人品不咋地，想放水都难，@1第一关失败@0，第二关：@2摇色子赌点数@0，规则：摇一个色子，赌对点数即为过关")
			AddMenuItem("@7是否进行第二关","")
			AddMenuItem("@3是","Tdbjbs_2") --进入第二关
			AddMenuItem("@3放弃任务","Tdbjbs_no") --放弃任务
		end
	end
elseif(answer=="Tdbjbs_2")then  --进入第二关
	AddMenuItem("@7请选择点数","")
	AddMenuItem("@31点","1") 
	AddMenuItem("@32点","2") 
	AddMenuItem("@33点","3") 
	AddMenuItem("@34点","4") 
	AddMenuItem("@35点","5") 
	AddMenuItem("@36点","6")
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then  --开始第二关
	local b=LuaRandom(6)+1
	local m=answer+0 --获取选择点数
	LuaSay("摇..摇...我摇啊摇...摇到外婆桥... 怎么又开小差了.. ")
	LuaSay("好，开，开出来的点数为@2"..b.."点@0")
	if(b==m) then
		LuaSay("英雄好运气，@1第二关过了@0，第三关：@2比大小@0，规则：我摇一次，你摇一次，看谁的大谁就赢")
		LuaAddTask("Tdbjbs_ggs",1) --过关数 --奖励有关
		AddMenuItem("@7是否进行第三关","")
		AddMenuItem("@3是","Tdbjbs_3") --进入第三关
		AddMenuItem("@3直接进入boss地图","Tdbjbs_jbst") --进入boss地图
	else
		LuaSay("哎，看来英雄人品不咋地啊，@1第二关失败@0，第三关：@2比大小@0，规则：我摇一次，你摇一次，看谁的大谁就赢（相同即为玩家赢）")
		AddMenuItem("@7是否进行第三关","")
		AddMenuItem("@3是","Tdbjbs_3") --进入第三关
		if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --第一关过了
			AddMenuItem("@3直接进入boss地图","Tdbjbs_jbst") --进入boss地图
		else
			AddMenuItem("@3放弃任务","Tdbjbs_no") --放弃任务
		end
	end
elseif(answer=="Tdbjbs_3")then  --进入第三关
	local c=LuaRandom(6)+1
	LuaSetTask("Tdbjbs_ys1",c)
	LuaSay("首先我来摇，摇..摇...我摇啊摇...摇到外婆桥... 哎，英雄迟暮啊.. 又开小差了..")
	LuaSay("好，开，我开出来的点数为@2"..c.."点@0，轮到英雄了")
	AddMenuItem("@7摇色","")
	AddMenuItem("@3摇","Tdbjbs_ys") --进入第三关
	AddMenuItem("@3我没信心，放弃第三关","Tdbjbs_fq") --进入boss地图
elseif(answer=="Tdbjbs_ys")then  --进入第三关
	LuaDelTask("Tdbjbs_ks")
	local d=LuaRandom(6)+1
	LuaSay("...")
	LuaSay(".....")
	LuaSay("英雄摇出的点数为@2"..d.."@0")
	local c=LuaQueryTask("Tdbjbs_ys1")
	if(d>=c) then  --第三关赢了
		LuaAddTask("Tdbjbs_ggs",1) --过关数 --奖励有关
		LuaSay("恭喜英雄@2闯过第三关@0")
	else
		LuaSay("@2第三关失败@0")
	end
	if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --至少赢了一关
		LuaSay("三关结束，英雄总共赢取了@2"..LuaQueryTask("Tdbjbs_ggs").."关@0")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		AddMenuItem("@7是否进入boss地图","")
		AddMenuItem("@3是","Tdbjbs_jbst")
		AddMenuItem("@3不进去了","Tdbjbs_bq")
	else
		LuaSay("三关结束，很遗憾，英雄一关都没过，不能进入boss地图。")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		LuaSetTask("Tdbjbs_ds",1)  --设置为1  没通过
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("由于你没有通过本次赌局，现认定你为@2丧门星@0，惩罚@22小时@0不能再次接受此任务")
	end
elseif(answer=="Tdbjbs_jbst")then  --直接进入boss地图
	LuaDelTask("Tdbjbs_ks")
	LuaDelTask("Tdbjbs_ggs")
	ChangeMap("lu_25ywfb")
elseif(answer=="Tdbjbs_no")then  --放弃任务
	LuaDelTask("Tdbjbs_ks")
	LuaDelTask("Tdbjbs_ggs")
	LuaSetTask("Tdbjbs_ds",1)  --设置为1  没通过
	LuaSetTask("Tdbjbs_time",GetCurrentTime())
	LuaSay("由于你没有通过本次赌局，现认定你为@2丧门星@0，惩罚@22小时@0不能再次接受此任务")
elseif(answer=="Tdbjbs_fq")then  --放弃第三关
	if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --至少赢了一关
		LuaSay("三关结束，英雄总共赢取了@2"..LuaQueryTask("Tdbjbs_ggs").."关@0")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		AddMenuItem("@7是否进入boss地图","")
		AddMenuItem("@3是","Tdbjbs_jbst")
		AddMenuItem("@3不进去了","Tdbjbs_bq")
	else
		LuaSay("三关结束，很遗憾，英雄一关都没过，不能进入boss地图。")
		LuaDelTask("Tdbjbs_ggs")
		LuaSetTask("Tdbjbs_ds",1)  --设置为1  没通过
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("由于你没有通过本次赌局，现认定你为@2丧门星@0，惩罚@22小时@0不能再次接受此任务")
	end
	LuaDelTask("Tdbjbs_ks")
elseif(answer=="Tdbjbs_bq")then  --闯过了  但不进入boss地图
	LuaDelTask("Tdbjbs_ggs")
	LuaDelTask("Tdbjbs_ys1")
	LuaDelTask("Tdbjbs_ks")
end
LuaSendMenu()
return 1
end