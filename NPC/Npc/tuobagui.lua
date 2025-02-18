NPCINFO = { 
serial="128" ,
base_name="tuobagui",
icon=2574,
NpcMove=2574 ,
name="拓跋圭" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="乱世出英雄",
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
	local T735=LuaQueryTask("T735")
	local T750=LuaQueryTask("T750")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_69")==1 or LuaQueryTask("Tsnpc_69")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_69")
		if(LuaQueryTask("Tsnpc_69")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_69")==1 or LuaQueryTask("Tenpc_69")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_69")
		if(LuaQueryTask("Tenpc_69")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T302")==19 and LuaQueryTask("T302S")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302S")
		havetask2 =1
	end 
	if(T735==1 or T735==2) then
 		AddTopSayMenuItem("@2粥济难民【剧情】","T735")
 		if(LuaQueryTask("T735")==1)	then
 		havetask2 =1
 		end
 	end
	if(T750==4)then
		AddTopSayMenuItem("@2最后的挑战【剧情】@0","T750")
		havetask2=1
	end
	if(level>=55)then	
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			AddTopSayMenuItem("@7环形任务【每日】","Txhuanxing")
			havetask1=1
		else
			AddTopSayMenuItem("@7环形任务【每日】","Txhuanxing")
			havetask2=1
		end
	elseif(level>=50)  then
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			AddTopSayMenuItem("@2[新]@0@7环形任务【每日】","Txhuanxing")
			havetask1=1
		else
			AddTopSayMenuItem("@2[新]@0@7环形任务【每日】","Txhuanxing")
			havetask2=1
		end
	
	end
	--[[if(level>=55)then
		if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
			AddTopSayMenuItem("@7九星连环【史诗】@0","Thx2")
			havetask1=1
		else
			AddTopSayMenuItem("@7九星连环【史诗】@0","Thx2")
			havetask2=1
		end
	elseif(level>=50)  then
		if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
			AddTopSayMenuItem("@2[新]@0@7九星连环【史诗】@0","Thx2")
			havetask1=1
		else
			AddTopSayMenuItem("@2[新]@0@7九星连环【史诗】@0","Thx2")
			havetask2=1
		end
	
	end]]
		
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3领主争夺【活动】","T1004" )
	end
	AddTopSayMenuItem("@9前往英山矿场","Cm3")
	AddTopSayMenuItem("@9前往万花谷","Cf3")
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
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("拓跋圭：我看你根骨奇佳，手生老茧，定为高手，不知道可否与我共创大业！") 
	
elseif(answer=="T302S") then
	   if(LuaQueryTask("T302S")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("拓跋珪：有劳少侠送信！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302S",99)
	   UpdateMenu()
	   end
       
elseif(answer=="Cf3") then 
local level= LuaQuery("level")
	if(level>=60)then
		if(LuaQuery("till")>=5000)then
		ChangeMap("lu_farm03")
		else
		LuaSay("采集熟练度不够,你的采集次数达到5000以上才能进入.")
		end
	else
	LuaSay("高级采集场60级才能进入")
	end       
elseif(answer=="Cm3") then 
local level= LuaQuery("level")
	if(level>=60)then
		if(LuaQuery("till")>=5000)then
		ChangeMap("lu_mine03")
		else
		LuaSay("采集熟练度不够,你的采集次数达到5000以上才能进入.")
		end
	else
	LuaSay("高级采集场60级才能进入")
	end
       

elseif(answer=="T735") then
	if(LuaQueryTask("T735")==1)	then
		LuaSay(""..LuaQueryStr("name").."：中原百姓饱受摧残，生于水深火热之中，你兄拓拔仪让我告诉你开仓解救难民与水火，以得民心，方可得天下！")
		LuaSay("拓跋圭：恩，我知道了，你速去禀报吾兄，即刻我派兵运粮解救难民！") 
		LuaSetTask("T735",2)
		AddLog("粥济难民【剧情】",735)
		UpdateMenu()
	elseif(LuaQueryTask("T735")==2)then
		LuaSay("拓跋奎：你怎么还没有到@2陷落关口@0吾兄@3拓拔仪@0那里去啊？")
		DelLog("735")
		UpdateMenu()
	end 	       

elseif(answer=="T750")then               --------------------------------最后的挑战【剧情】
		if(LuaQueryTask("T750")==4)then
		LuaSay("拓跋圭：阁下到此何干啊？？")
		LuaSay(LuaQueryStr("name").."：听说北方局势很不稳定，来你这里磨练磨练！")
		LuaSay("拓跋圭：有出息，那就好好干吧！")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","T750jl")
		end

		elseif(answer=="T750jl")then           -----------------750奖励
		if(LuaQueryTask("T750")==4)then
		LuaSetTask("T750",99)
		DelLog("750")
		LuaAddJx("combat_exp",1707000 ,"T750")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
		end             
elseif(answer=="Tsnpc_69")then
	if(LuaQueryTask("Tsnpc_69")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("拓跋圭：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_69",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_69")==2)then
		LuaSay("拓跋圭：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_69")then
	if(LuaQueryTask("Tenpc_69")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("拓跋圭：这都是大人的功劳啊")
		LuaSetTask("Tenpc_69",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_69")==2)then
		LuaSay("拓跋圭：话已经带到了，快回去领取奖励吧")
	end	
	


elseif(answer=="T1004")  then
	local title = QueryTitle("title")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local level= LuaQuery("level") 
	local T1004= LuaQueryTask("T1004")
	if(GetCurrentDay()~=LuaQueryStrTask("T1004day")) then
	LuaSetTask("T1004",0)
	DelItem("o_mission374",LuaItemStatusNormalCount("o_mission374"))
	DelItem("o_mission375",LuaItemStatusNormalCount("o_mission375"))
	LuaDelTask("T1004line")
	end 
	AddMenuItem("@7领地","")
	if(T1004==0 and hour==16 and min<=30 and level>=55)then  
	AddMenuItem("抢占领地报名","lingdi")
	end
	if((hour==16 and T1004==1) or (hour==17 and min<30 and T1004==1))then    
	AddMenuItem("提交物资","tijiao")
	end
	if((hour==17 and min>=30 and T1004>=1) or (hour >17 and T1004>=1))then    
	AddMenuItem("领地争夺奖励","lingzhu")
	end
	if(IsMapHost("lu_yzc")=="true" and T1004 == 0)then
	AddMenuItem("领主奖励","lingjiang")
	end
	if(IsMapHost("lu_yzc")=="true" and title ~= 11)then
	AddMenuItem("激活领主称号","chenghao")
	end
	AddMenuItem("领地信息","mapinfo")
	

elseif(answer == "lingdi")then	
		local T1004= LuaQueryTask("T1004")
			if(IsMapHostNoParameter()~="true") then
			LuaSay("想成为本地的领主吗，交纳@310000铜币@0报名费，还有为本公子找来的物资最多，本公子就让他当上云中城一霸。")
			AddMenuItem("@7领地报名","")
			AddMenuItem("报名","baoming")
			AddMenuItem("不报名","bubaoming")
			else
			LuaSay("在任领主不可参加。")
			end

elseif(answer=="baoming")then  --巨蹄 清狼  -- 草原熊 天师匪兵
	local T1004=LuaQuery("T1004")
	local level= LuaQuery("level") 
	if(LuaItemCount("coin")>=10000)then
		LuaSetTask("T1004",1)      
		LuaGive("coin",-10000,"T1004")    
		LuaSay("拓跋圭：给你@160分钟@0的时间去收集材料@3邪能药剂@0和@3战斗药水@0.@3邪能药剂@0可以从@2巨蹄@0那里取，@3战斗药水@0从@2草原熊@0身上取。")
		LuaSetTask("T1004collecttime",GetCurrentTime())		
		day=GetCurrentDay()
		LuaSetTask("T1004day",day)
		LuaSet("T1004line",LuaQueryTempStr("online"))
		LuaSetTask("T1004",1)
	else
		LuaSay("拓跋圭：不交钱就想占地盘，哪有那么便宜的事，交@310000铜币@0才能报名")
		UpdateTopSay("想报名就得交钱")
	end
elseif(answer=="bubaoming")then
		LuaSay("不报名没机会的，拿到领主地位会有很多奖励哟@!")
elseif(answer=="tijiao")then
		local level= LuaQuery("level") 
		local T1004=LuaQuery("T1004")
		local c1=LuaItemStatusNormalCount("o_mission374")
		local c2=LuaItemStatusNormalCount("o_mission375")
		DelItem("o_mission374",c1)
		DelItem("o_mission375",c2)
		if(GetCurrentDay()==LuaQueryStrTask("T1004day"))then
			local T1004line=LuaQueryStr("T1004line")
			if(LuaQueryTempStr("online")==T1004line)then
				local score=c1+c2+LuaQueryTask("T1004score")		
				LuaSetTask("T1004score",score)
				SaveMaxValueInRoom(score)
				LuaSay("你收集了@3"..c1.."个邪能药剂@0，@3"..c2.."个战斗药水@0。你已累积@3"..score.."@0分的功劳，活动结束后如果分数最高你就是本地领主了。")
			else
			--[[if(T1004line=="bw11")then
				szonline="1服1线"
			elseif(T1004line=="bw12")then
					szonline="1服2线"
			elseif(T1004line=="bw13")then
				szonline="1服3线"
			elseif(T1004line=="bw14")then
				szonline="1服4线"
			elseif(T1004line=="bw21")then
				szonline="2服1线"
			elseif(T1004line=="bw22")then
				szonline="2服2线"
			elseif(T1004line=="bw23")then--备用
				szonline="2服3线"
			elseif(T1004line=="bw24")then--备用
				szonline="2服4线"
			elseif(T1004line=="107")then--内部测试用
				szonline="内网点2"
			elseif(T1004line=="121")then--内部测试用
				szonline="志刚服"
			elseif(T1004line=="117")then--内部测试用
				szonline="zdm服"
			else
				szonline="其它服"
			end
		LuaSay("你在"..szonline.."报名参加的活动，请到@7"..szonline.."@0提交")]]
		LuaSay("你不是在本国报名的哦，需要到你报名的国家去提交任务物品@!")
	end
	else
		LuaSetTask("T1004",99)
		--LuaDelTask("T1004day")
		LuaDelTask("T1004score")
		LuaSay("很遗憾，你没有在活动时间内回来找我交战绩，你错过了这次机会")
	end
	UpdateMenu()
elseif(answer=="lingzhu")then
	local level= LuaQuery("level") 
    if(level>80)then
        level=80
    end
	local T1004=LuaQuery("T1004")
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	local T1004score=LuaQueryTask("T1004score")
	local title = QueryTitle("title")
   if(LuaQueryTask("T1004")>=1) then
	LuaDelTask("T1004")
	LuaDelTask("T1004day")
	LuaDelTask("T1004score")
	if(IsMapHost("lu_yzc")=="true")then
		SetTitleMeg(11)
		LuaSetTask("mapowntime",GetCurrentTime())   			
		LuaSay("恭喜你在本次的抢占领地中夺得了头标，成为本地的领主，并拿到了@3"..LuaQueryStr("title").."@0的称号。")
		LuaSay("每4个小时来领一次奖励")
        LuaGive("o_present116",4,"Tbossta")--白色卡包
		LuaAddJx("combat_exp",80*level*level+T1004score*10*level,"T1004")
		local r =LuaRandom(10)
		if(r==0)then
			LuaGive("e_knife011",1,2,"T1004")
		elseif(r==1)then 
			LuaGive("e_falchion017",1,2,"T1004")
		elseif(r==2)then 
			LuaGive("e_falchion018",1,2,"T1004")
		elseif(r==3)then 
			LuaGive("e_falchion019",1,2,"T1004")
		elseif(r==4)then 
			LuaGive("e_falchion020",1,2,"T1004")
		elseif(r==5)then 
			LuaGive("e_falchion021",1,2,"T1004")
		elseif(r==6)then 
			LuaGive("e_fan009",1,2,"T1004")
		elseif(r==7)then 
			LuaGive("e_fan010",1,2,"T1004")
		elseif(r==8)then 
			LuaGive("e_fan011",1,2,"T1004")
		elseif(r==9)then 
			LuaGive("e_pen010",1,2,"T1004")
		elseif(r==10)then 
			LuaGive("e_pen011",1,2,"T1004")
		elseif(r==11)then 
			LuaGive("e_knife009",1,2,"T1004")
		elseif(r==12)then 
			LuaGive("e_knife010",1,2,"T1004")
		end
		LuaGive("coin",20000,"T1004")
		LuaGive("o_mission035",1)--征税令
		--LuaGive("e_mission091",1)--施恩令
		LuaNotice("@2云中城领主"..LuaQueryStr("name").."@0领取了@2"..(20000+T1004score*12).."@0铜币蓝装一件和大量经验,每4小时还能再领一次奖励")
	elseif(grade==2)then                    
		LuaSay("虽然没有拿到本地的领主地位，拿到第2名也是可喜可贺的。继续努力，争取下次夺魁")
        LuaGive("o_present116",3,"Tbossta")--白色卡包
		LuaAddJx("combat_exp",60*level*level+T1004score*10*level,"T1004")
		LuaGive("coin",15000,"T1004")
		LuaNotice("@2云中城领主抢夺第2名"..LuaQueryStr("name").."@0领取了@2"..(15000+T1004score*12).."@0铜币和大量经验")
	elseif(grade==3)then    
        LuaGive("o_present116",2,"Tbossta")--白色卡包    
		LuaSay("虽然没有拿到本地的领主地位，拿到第3名也是可喜可贺的。继续努力，争取下次夺魁")
		LuaAddJx("combat_exp",40*level*level+T1004score*10*level,"T1004")
		LuaGive("coin",10000,"T1004")
		LuaNotice("@2云中城领主抢夺第3名"..LuaQueryStr("name").."@0领取了@2"..(10000+T1004score*12).."@0铜币和大量经验")
	else
		if(T1004score>0)then
        LuaGive("o_present116",1,"Tbossta")--白色卡包
		LuaSay("你没有夺得本地领主,按功劳也可以得到一定的奖励")
		LuaAddJx("combat_exp",T1004score*10*level,"T1004")
		else
		LuaSay("去去去，叫你找军资你一丁点的东西能没给我找到，我最讨厌不干事就想领奖励的人") 
		end
	end
	UpdateMenu()
   end
elseif(answer=="chenghao")then
	LuaSay("你要激活本地领主称号吗？")
	AddMenuItem("@7领主称号","")
	AddMenuItem("激活称号","jihuo")
	AddMenuItem("不激活","bujihuo")
		LuaSendMenu()
		elseif(answer=="jihuo")then
			local title = QueryTitle("title")
			SetTitleMeg(11)
			LuaSay("你获得了@3"..LuaQueryStr("title").."@0的称号")
			UpdateMenu()
		elseif(answer=="bujihuo")then
			LuaSay("拥有多个称号时，后面激活的会覆盖前面的称号，喜欢哪个称号就找相关的NPC激活")
elseif(answer=="lingjiang")then
		local level= LuaQuery("level") 
		local mapowntime = LuaQueryTask("mapowntime")
		if(GetCurrentTime()>=mapowntime+14400)then
			LuaSay("本地领主每4小时可来领一次奖励")
			LuaSetTask("mapowntime",GetCurrentTime())   
			LuaGive("o_drug_mp2",10)
			LuaAddJx("combat_exp",20*level*level,"T1004")
			LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"T1004")
			LuaGive("coin",10000,"T1004")
            LuaGive("o_present116",1,"Tbossta")--白色卡包
			LuaNotice("@2云中城领主"..LuaQueryStr("name").."@0领取了@210000@0铜币4级材料药品和大量经验")
		else
			LuaSay("距上次领奖励还不到4小时，每4小时只能领一次奖励")
		end
elseif(answer=="mapinfo")then
		local level= LuaQuery("level") 
		local T1004=LuaQuery("T1004")
		local hour=GetCurrentHour()
		local min=GetCurrentMinute()
		LuaSay("现在时间是:"..hour..":"..min..".55级以上角色每天16:00~16:30可以报名参加本地领主争夺，17：30决出领主。")
		if(hour==16 or (hour==17 and min<30) and T1004>=1)then
			LuaSay("当前最高成绩是:"..GetBestGradeNum()..".")
		else
		local c1=LuaItemCount("o_mission374")
		local c2=LuaItemCount("o_mission375")
		DelItem("o_mission374",c1)
		DelItem("o_mission375",c2)
		end
		LuaSay("本地领主最多可领取80000铜币,蓝装一件,材料7个,药品7组及大量经验。")
		LuaSay("本地图占领方式为提交任务物品，每人限时60分钟，决出领主前上交有效。")
		LuaSay("报名后指定怪物可掉落所需任务物品，以交纳的种类和数量计分，累积最多者获胜。")


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>....环形任务

elseif(answer=="Txhuanxing")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Txhuanxing")~=0)then
		if(LuaQueryStrTask("Txhxday")~=GetCurrentDay())then
			LuaDelTask("Txhuanxing")
			LuaDelTask("T953")
			LuaDelTask("h_last")
		end
	end
	if(LuaQueryTask("Txhuanxing")==0)then
		coldata1={AutoSearchTask_Monster(LuaQuery("level"),1)}--容错处理,1防止系统初始检测用0出错
		LuaSetTask("Txhxcol",coldata1[1])
		LuaSetTask("Txhxday",GetCurrentDay())
		LuaSetTask("Txhuanxing",1)
		LuaSetTask("T953",1)
		AddLog("环形任务【每日】",953)
		LuaSay("拓跋圭：所做的环形任务的环数越高,你得到的经验也就越高@!")
		LuaSay("第一环：@3江湖历练@0")
		LuaSay("拓跋圭：去帮我在"..coldata1[2].."击杀"..coldata1[4].."只"..coldata1[3].."吧,它们已经在那里作乱很久了")
		LuaSetTask(coldata1[5],1)
		UpdateMenu()
	elseif(LuaQueryTask("Txhuanxing")==1)then
		coldata1={AutoSearchTask_Monster(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata1[4])
		if(LuaQueryTask(coldata1[5])>LuaQueryTask("sum"))then
			LuaSay("拓跋圭：你成功的完成了第一环")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaSay("第二环：@3收集物资@0")
			coldata2={AutoSearchTask_Goods(1,1)}--收集任务不需要考虑到等级,0任务不会被重置,因此为1,后面1防止系统初始检测用0出错
			LuaSetTask("Txhxcol",coldata2[1])
			LuaSay("拓跋圭：帮我去收集"..coldata2[4].."个"..coldata2[3].."回来")
			LuaSetTask("Txhuanxing",2)
			LuaSetTask("T953",2)
			AddLog("环形任务【每日】",953)
			UpdateMenu()
		else
			LuaSay("当前任务环数为@2"..LuaQueryTask("Txhuanxing").."@0：你的任务是杀掉"..coldata1[2].."的"..coldata1[4].."只"..coldata1[3]..",现在已经杀了"..(LuaQueryTask(coldata1[5])-1).."只")
		end
	elseif(LuaQueryTask("Txhuanxing")==2)then
		coldata2={AutoSearchTask_Goods(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata2[4])
		if(LuaItemStatusNormalCount(coldata2[2])>=LuaQueryTask("sum"))then
			LuaSay("拓跋圭：你成功完成了第二环")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			DelItem(coldata2[2],LuaQueryTask("sum"))
			LuaSay("第三环：@3找人@0")
			--[[rclass=LuaRandom(3)
			if(rclass==0)then
				strclass="战士"
				class="shen"
			elseif(rclass==1)then
				strclass="侠客"
				class="wu"
			else
				strclass="谋士"
				class="xian"
			end
			LuaSay("拓跋圭：去寻找一个和你等级相差在6以内的"..strclass.."玩家,并2人组队前来找我。@!")]]
			LuaSay("拓跋圭：去寻找一个和你等级相差在6以内的玩家,并2人组队前来找我。@!")
			LuaSetTask("Txhuanxing",3)
			LuaSetTask("T953",3)
			AddLog("环形任务【每日】",953)
			UpdateMenu()
		else
			LuaSay("当前第二环：你的任务是收集"..coldata2[4].."个"..coldata2[3].."回来呢")
		end
	elseif(LuaQueryTask("Txhuanxing")==3)then
		if(TeamCount()== 2)then
			LVcha=TeamQuery("level")-level
			if(LVcha*LVcha<=36) then
				--if(LuaQueryStr("class")==class)then
					LuaSay("拓跋圭：你成功的完成了第三环")
					local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
					LuaAddJx("combat_exp",jingyan,"Txhuanxing")
					coldata4={AutoSearchTask_Material(1,1)}
					LuaSetTask("Txhxcol",coldata4[1])
					LuaSay("第四环：@3收集材料@0")
					LuaSay("拓跋圭：军中扩建，物资紧缺，你去帮我收集"..coldata4[4].."个"..coldata4[3].."回来，重重有赏！")
					LuaSetTask("Txhuanxing",4)
					LuaSetTask("T953",4)
					AddLog("环形任务【每日】",953)
					UpdateMenu()
				
				--else
					--LuaSay("拓跋圭：我让你找的是"..strclass.."呢，你怎么找个怪胎来")
				--end
				
			else
				LuaSay("拓跋圭：你找到的人不符合要求,去寻找一个和你等级相差在6以内的玩家,并2人组队前来找我")
			end
		else
			LuaSay("当前第3环：你的任务是寻找一个和你等级相差在6以内的玩家,并2人组队前来找我，你现在没有队伍")
		end
	elseif(LuaQueryTask("Txhuanxing")==4)then
		coldata4={AutoSearchTask_Material(0,LuaQueryTask("Txhxcol"))}
		LuaSetTask("sum",coldata4[4])
		if(LuaItemStatusNormalCount(coldata4[2])>=LuaQueryTask("sum"))then
			LuaSay("拓跋圭：第四环完成")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			coldata5={AutoSearchTask_Planting(1,1)}
			LuaSetTask("Txhxcol",coldata5[1])
			LuaSay("第五环：@3采集@0")
			LuaSay("拓跋圭：花朵芬芳，香气迷人，我这给你一颗"..coldata5[4].."种子，你到"..coldata5[3].."去种植，采集一朵"..coldata5[4].."回来给我，只有一次采集机会哦，可不要在嫩芽就采摘了哦@!")
			LuaSetTask("Txhuanxing",5)
			LuaSetTask("T953",5)
			AddLog("环形任务【每日】",953)
			LuaGive(coldata5[2],1)
			DelItem(coldata4[2],LuaQueryTask("sum"))
			UpdateMenu()
			
		else
			LuaSay("当前第四环：你的任务是收集"..coldata4[4].."个"..coldata4[3].."")
		end
	elseif(LuaQueryTask("Txhuanxing")==5)then
		coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
			if(LuaItemStatusNormalCount(coldata5[5])>=1)then
				LuaSay("第五环完成，你已经完成了环形任务的一半，完成全部将会得到海量经验")
				local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
				LuaAddJx("combat_exp",jingyan,"Txhuanxing")
				DelItem(coldata5[5],LuaItemStatusNormalCount(coldata5[5]))
				if(LuaItemStatusNormalCount(coldata5[2])>0)then
					DelItem(coldata5[2],LuaItemStatusNormalCount(coldata5[2]))
				end
				coldata6={AutoSearchTask_Boss(LuaQuery("level"),1)}
				LuaSetTask("Txhxcol",coldata6[1])
				LuaSay("第六环：@3BOSS@0")
				LuaSay("去消灭"..coldata6[2].."的"..coldata6[3].."吧，它在那里作乱很久了")
				LuaSetTask(coldata6[4],1)
				LuaSetTask("Txhuanxing",6)
				LuaSetTask("T953",6)
				AddLog("环形任务【每日】",953)
				UpdateMenu()
			else
				LuaSay("当前任务第五环：你的任务是到"..coldata5[3].."去种植"..coldata5[4].."，采集一朵"..coldata5[4].."回来给我，你还未完成！")
				LuaSay("温馨提示：如果你的花不小心被偷了而导致任务完成不了，在@2公聊@0里说一句[@3GM我花被偷了@0]再来完成任务会有意外的收获哦@!")
				if(LuaQueryTempStr("last_world_msg")=="GM我花被偷了")then
					AddMenuItem("@7万恶的人类偷了我的花","")
					AddMenuItem("@5是的，我还需要一颗种子","Y_seed")
					AddMenuItem("@4不需要了，已经抓住偷花贼了","N_seed")
				end
			end
	elseif(LuaQueryTask("Txhuanxing")==6)then
			coldata6={AutoSearchTask_Boss(0,LuaQueryTask("Txhxcol"))}
			if(LuaQueryTask(coldata6[4])==2)then
				LuaSay("第六环完成了")
				local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
				LuaAddJx("combat_exp",jingyan,"Txhuanxing")
				LuaDelTask(coldata6[4])
				LuaSay("第七环：@3千里行商@0")
				LuaSay("拓跋圭：赚钱乃是生活所需，到@4建康城@0@3种子商人@0那里进行一次千里行商任务吧！")
				LuaSetTask("huan7",1)
				LuaSetTask("Txhuanxing",7)
				LuaSetTask("T953",7)
				AddLog("环形任务【每日】",953)
				UpdateMenu()
			else
				
				LuaSay("当前第六环：你的任务是去消灭"..coldata6[2].."的"..coldata6[3].."")
			end
	elseif(LuaQueryTask("Txhuanxing")==7)then
		if(LuaQueryTask("huan7")==2)then
			LuaSay("第七环完成")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaDelTask("huan7")
			coldata8={AutoSearchTask_Country(LuaQuery("level"),1)}
			LuaSetTask("Txhxcol",coldata8[1])
			LuaSay("第八环：@3跨国任务@0")
			LuaSay(""..coldata8[2].."")
			LuaSet("line",LuaQueryTempStr("online"))
			LuaSetTask(coldata8[4],1)
			LuaSetTask("Txhuanxing",8)
			LuaSetTask("T953",8)
			AddLog("环形任务【每日】",953)
			UpdateMenu()
		else
			LuaSay("当前第七环：你的任务是到4建康城@0@3种子商人@0处做千里行商一次")
		end
	elseif(LuaQueryTask("Txhuanxing")==8)then
		coldata8={AutoSearchTask_Country(0,LuaQueryTask("Txhxcol"))}
		if(LuaQueryTask(coldata8[4])==2)then
			LuaSay("第八环完成")
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			coldata9={AutoSearchTask_Faction(LuaQuery("level"),1)}
			LuaSetTask("Txhxcol",coldata9[1])
			LuaSetTask("Txhuanxing",9)
			LuaSetTask("T953",9)
			AddLog("环形任务【每日】",953)
			LuaSay("第九环：@3帮助新人@0")
			LuaSay("拓跋圭：到建康南郊的@3守城卫兵@0那里去做一下帮助新人的任务吧。")
			LuaSetTask("h_last",1)
			UpdateMenu()
		else
			LuaSay("当前第8环：你的任务是"..coldata8[2].." ")
		end
	elseif(LuaQueryTask("Txhuanxing")==9)then
		if(LuaQueryTask("h_last")==2)then
			LuaSay("恭喜你，完成了全部的环形任务")	
			local jingyan=10000+(level^2*110+level*100)*LuaQueryTask("Txhuanxing")*0.1
			LuaAddJx("combat_exp",jingyan,"Txhuanxing")
			LuaGive("coin",25000,"Txhuanxing")
			LuaSetTask("h_last",99)
			LuaSetTask("Txhuanxing",99)
			LuaSetTask("T953",99)
			UpdateMenu()
		else
			LuaSay("当前第9环：也是最后一环，你的任务是在建康南郊的守城卫兵那里完成一次@3帮助新人@0任务")
			LuaSay("拓跋圭：做完全部九环，你会有意想不到的收获")
		end
	elseif(LuaQueryTask("Txhuanxing")==99)then
		LuaSay("拓跋圭：你已经完成了今天的环形任务，明天再来吧@!")
	else
		LuaSay(""..LuaQueryTask("Txhuanxing").."  "..LuaQueryTask("h_last").."")

	
	end

--花被偷种子给予
elseif(answer=="Y_seed")then
	local coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
	if(LuaItemStatusNormalCount(coldata5[2])>=1)then
		LuaSay("拓跋圭：你说你是不是在骗人呢，你种子没丢呢，在你的背包里哦")
	else
		LuaSay("拓跋圭：万恶的人偷了你的花，幸好我这还有预备的一颗，再给你一颗哦，下次可不能再让那啥偷了我们的种子哦@!")
		LuaSay("拓跋圭：让我们一起来鄙视偷花贼@D")
		LuaGive(coldata5[2],1)
	end
elseif(answer=="N_seed")then
	LuaSay("拓跋圭：鄙视偷花贼是我们共同的义务，快去完成任务吧@/")





elseif(answer=="Thx2") then         ------------九星连环
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Thx2")==99) then
       if(GetCurrentDay()~=LuaQueryStrTask("Thx2day"))then
       LuaSetTask("Thx2",0)
       LuaSetTask("T954",0)
       end
      end

     if(LuaQueryTask("Thx2")==0) then
	    LuaSetTask("Thx2day",GetCurrentDay())
	    LuaSay("拓跋圭：本任务@2总共九环@0。环形任务的环数越高，得到的经验越高，做完全部，你将至少获得50W的经验，经验与你的等级和你完成的环数有很大关系哦，全部完成还将有额外的奖励加成@!")
	    LuaSay("@3第1环：探宝专家")
	    LuaSay("拓跋圭：去找@4洛阳城@0的@3王振恶@0，领取世界@2寻宝任务@0可以得到藏宝图，成功使用一张@3藏宝图@0寻找到宝藏通过本环@!")
	    LuaSetTask("Thx2",1)
	    LuaSetTask("T954",1)
	    AddLog("九星连环",954)
      elseif(LuaQueryTask("Thx2")==1) then                          
	   if(LuaQueryTask("Thx2A")==99) then
		LuaSay("拓跋圭：恭喜你完成任务的@3第1环@0。")
		local exp
		if(LuaQueryTask("Mu1")==1)then
			exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
			exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu1",1)
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",200,"Thx2")
		LuaSetTask("Thx2A",0)
   	    LuaSay("@3第2环：小赌怡情")
	    LuaSay("拓跋圭：去@3燕王@0处进行一次@2小赌怡情@0就顺利通过本环，老夫会提供你1000铜币的资本哦。@!")
	    LuaSetTask("Thx2",2)
	    LuaSetTask("T954",2)
	    AddLog("九星连环",954)
	    else
	    LuaSay("拓跋圭：必须成功通过一张藏宝图找到宝藏，才能顺利通过本环哦，你还没有完成呢。@!")
	    LuaSay("拓跋圭：到@4洛阳城@0去找@3王振恶@0，领取世界@2寻宝任务@0可以得到藏宝图，成功使用一张@3藏宝图@0寻找到宝藏通过本环@!")
	    end

      elseif(LuaQueryTask("Thx2")==2) then                           ---------第二环小赌怡情
	   if(LuaQueryTask("Thx2B")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第2环@0。")
	    local exp
	    if(LuaQueryTask("Mu2")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu2",1)
	    LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",400,"Thx2")
		LuaSetTask("Thx2B",0)
	    LuaSay("@3第3环：命运的眷顾")
	    LuaSay("拓跋圭：去@4建康东郊@0的@3桓冲@0处进行一次@2命运的眷顾@0就顺利通过本环，已经完成的再去点@2命运的眷顾菜单@0可以直接通过哦。@!")
	    LuaSetTask("Thx2",3)
	    LuaSetTask("T954",3)
	    AddLog("九星连环",954)
	    LuaGive("coin",1000,"Thx2")
	   else
	    LuaSay("提示：必须去@3燕王@0处进行一次@2小赌怡情@0才能顺利通过本环哦，燕王就在中山城哦@!")
	   end

      elseif(LuaQueryTask("Thx2")==3) then                           -------第三环命运的眷顾
	   if(LuaQueryTask("Thx2C")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第3环@0。")
	    LuaGive("coin",500,"Thuanxing")
	    local exp
	    if(LuaQueryTask("Mu3")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
	    else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
            end
	    LuaSetTask("Mu3",1)
	    LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2C",0)
	    LuaSay("@3第4环：开宝箱")
	    LuaSay("拓跋圭：在@4建康城南@0@3饰品商人@0处购买任何一种@2钥匙@0后，去@4建康城东郊@0开启@3宝箱@0。尝试开一次就能通过本环。@!")
	    LuaSetTask("Thx2",4)
	    LuaSetTask("T954",4)
	    AddLog("九星连环",954)
	   else
	    LuaSay("提示：必须去@4建康东郊@0的@3桓冲@0处进行一次@2命运的眷顾@0才算通过本环哦，如果你已经完成了，那么再去点@2命运的眷顾菜单@0可以直接通过@!")
	   end

      elseif(LuaQueryTask("Thx2")==4) then                          -----------第四环开宝箱
	   if(LuaQueryTask("Thx2D")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第4环@0。")
		LuaGive("coin",600,"Thx2")
		local exp
		if(LuaQueryTask("Mu4")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu4",1)
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaSetTask("Thx2D",0)
	    LuaSay("@3第5环：钓鱼")
	    LuaSay("拓跋圭：在@4建康城@0的@3渔翁@0处进入@4钓鱼台@0@2钓鱼@0，在@3渔翁@0处成功获取钓鱼奖励后顺利通过本环。@!")
	    LuaSetTask("Thx2",5)
	    LuaSetTask("T954",5)
	    AddLog("九星连环",954)
	   else
	    LuaSay("提示：必须在@4建康城南@0@3饰品商人@0处购买@2钥匙@0后，去@4东郊@0开一次@3宝箱@0才算通过本环哦。@!")
	   end

      elseif(LuaQueryTask("Thx2")==5) then                             --------------第五环钓鱼
	   if(LuaQueryTask("Thx2E")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第5环@0。")
		LuaGive("coin",700,"Thx2")
		local exp
		if(LuaQueryTask("Mu5")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu5",1)
		LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2E",0)
	    LuaSay("@3第6环：挑战群雄")
	    LuaSay("拓跋圭：在@4北府军营@0的@3比武使者@0处进入@4擂台@0进行@1挑战群雄@0比武后可以顺利通过本环。@!")
	    LuaSetTask("Thx2",6)
	    LuaSetTask("T954",6)
	    AddLog("九星连环",954)
	   else
	    LuaSay("提示：必须在@4建康城@0的@3渔翁@0处进入@4钓鱼台@0@2钓鱼@0，在@3渔翁@0处成功获取钓鱼奖励后才算通过本环哦。@!")
	   end

      elseif(LuaQueryTask("Thx2")==6) then                             --------------第六环挑战群雄
	   if(LuaQueryTask("Thx2G")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第6环@0。")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu6")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu6",1)
		LuaAddJx("combat_exp",exp,"Thx2")
        LuaSetTask("Thx2G",0)
	    LuaSay("@3第7环：善良的死神")
	    LuaSay("拓跋圭：杀死一名玩家或者救活一名被杀死的玩家，就可以顺利通过本环。@!")
	    LuaSay("拓跋圭：为了避免你欺负新手，杀比自己等级低的课是不算数的哦@!")
	    LuaSetTask("Thx2",7)
	    LuaSetTask("T954",7)
	    AddLog("九星连环",954)
	    LuaSetTask("Thx2pks",LuaQuery("pks"))
	    LuaSetTask("Thx2jrs",LuaQuery("rescue_number"))
	   else
	    LuaSay("提示：必须在@4北府军营@0的@3比武使者@0处进入@4擂台@0进行@1挑战群雄@0比武后才能顺利通过本环哦。@!")
	   end
      elseif(LuaQueryTask("Thx2")==7) then   --------------第七环善良的死神
	   pks=LuaQuery("pks")-LuaQueryTask("Thx2pks")
	   jrs=LuaQuery("rescue_number")-LuaQueryTask("Thx2jrs")
	   if(pks >=1 or jrs>=1) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第7环@0。")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu7")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu7",1)
		LuaAddJx("combat_exp",exp,"Thx2")
	    LuaSay("@3第8环：帮助新人")
	    LuaSay("拓跋圭：去@4建康南郊@0的@3守城卫兵@0处带一名新人完成@2帮助新人@0的任务。这是@3最后第二环@0，不要放弃哦。@!")
	    LuaSetTask("Thx2",8)
	    LuaSetTask("T954",8)
	    AddLog("九星连环",954)
	   else
	    LuaSay("拓跋圭：杀死一名玩家或者救活一名被杀死的玩家，才可以顺利通过本环。@!")
	    LuaSay("拓跋圭：为了避免你欺负新手，杀比自己等级低的课是不算数的哦@!")
	   end
      elseif(LuaQueryTask("Thx2")==8) then                             --------------帮助新人
	   if(LuaQueryTask("Thx2I")==99) then
	    LuaSay("拓跋圭：恭喜你完成任务的@3第8环@0。")
		LuaGive("coin",800,"Thx2")
		local exp
		if(LuaQueryTask("Mu8")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1
		end
		LuaSetTask("Mu8",1)
		LuaAddJx("combat_exp",exp,"Thx2")
	    LuaSay("@3第9环：贷款")
	    LuaSay("拓跋圭：去@4建康城@0的@3钱庄老板@0处进行@2贷款或者还款@0就顺利通过本环。@!")
	    LuaSetTask("Thx2",9)
	    LuaSetTask("T954",9)
	    AddLog("九星连环",954)
	   else
	    LuaSay("提示：必须去@4建康南郊@0的@3守城卫兵@0处带一名新人完成@2帮助新人@0的任务才能顺利通过这@3第八环@0哦，善事多多，奖励多多@!")
	   end

      elseif(LuaQueryTask("Thx2")==9) then                             --------------第九环贷款
	   if(LuaQueryTask("Thx2J")==99) then
		LuaSay("拓跋圭：恭喜你，完成了九星连环的最后一环。")
		LuaGive("coin",900,"Thx2")
		local exp
		if(LuaQueryTask("Mu9")==1)then
		exp=(10000+(level^2*100+level*100)*LuaQueryTask("Thx2")*0.1)*2
		else
		exp=(200000+(level^2*120+level*100)*LuaQueryTask("Thx2")*0.1)
		end
		LuaSetTask("Mu9",1)
		LuaDelTask("Thx2I")
		LuaAddJx("combat_exp",exp,"Thx2")
		LuaGive("coin",10000,"Thx2")
		LuaSetTask("Thx2",99)
		LuaSetTask("T954",99)
		DelLog("954")
		LuaSetTask("Thx2sscode",99)
		LuaSetTask("Thx2J",0)
		if(LuaRandom(10)<5)then
			LuaGive("o_seed105",2,"Thx2")
		end
		 UpdateMenu()
	   else
			LuaSay("提示：必须去@4建康城@0的@3钱庄老板@0处进行@2贷款或者还款@0才能顺利通过本环。")
			LuaSay("提示：通过最后一环，不光有初级经验还有额外的奖励哦@!")
	   end

      elseif(LuaQueryTask("Thx2")==99) then 
          LuaSay("拓跋圭：今天的九星连环任务您已经完成，明天再来吧！@!")
    end



end
LuaSendMenu()
return 1
end 

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>自动检索等级分配任务(AutoSearchTask)
function AutoSearchTask_Monster(level,collection)
tasknum="xhuanxing"
task={} --task[编号]={ID,"地图名","怪物",杀怪数,计数器,Lv}
task[21]={21,"迷雾之林","盗匪",8,"task_kill/mon_003/T"..tasknum.."",0}
task[22]={22,"迷雾之林","土甲虫",8,"task_kill/mon_004/T"..tasknum.."",0}
task[23]={23,"迷雾之林","土甲虫",8,"task_kill/mon_004/T"..tasknum.."",0}
--↑↑       0~10
task[24]={24,"建康东郊","金蛊",10,"task_kill/mon_007/T"..tasknum.."",1}
task[25]={25,"五斗山","青狼",10,"task_kill/mon_010/T"..tasknum.."",1}
task[26]={26,"五斗山","天师匪兵",10,"task_kill/mon_011/T"..tasknum.."",1}
task[27]={27,"山寨","天师教徒",10,"task_kill/mon_012/T"..tasknum.."",1}
task[28]={28,"山寨","彩鹫",10,"task_kill/mon_013/T"..tasknum.."",1}
task[29]={29,"山寨","彩鹫",10,"task_kill/mon_013/T"..tasknum.."",1}
task[30]={30,"山寨地牢","赤蛛",10,"task_kill/mon_014/T"..tasknum.."",1}
task[31]={31,"山寨地牢","天师守卫",10,"task_kill/mon_015/T"..tasknum.."",1}
--↑↑       10~20
task[32]={32,"北府军营","北府锤兵",12,"task_kill/mon_016/T"..tasknum.."",2}
task[33]={33,"军营前哨","北府精锐",12,"task_kill/mon_019/T"..tasknum.."",2}
task[34]={34,"军营前哨","愚民",12,"task_kill/mon_020/T"..tasknum.."",2}
task[35]={35,"淝水之滨","淝水鳄",13,"task_kill/mon_021/T"..tasknum.."",2}
task[36]={36,"淝水之滨","穴居蛛",13,"task_kill/mon_022/T"..tasknum.."",2}
task[37]={37,"淝水对岸","青水虫",13,"task_kill/mon_023/T"..tasknum.."",2}
task[38]={38,"淝水对岸","碧水蛟",13,"task_kill/mon_024/T"..tasknum.."",2}
--↑↑       20~30
task[39]={39,"洛阳郊外","氐族哨兵",15,"task_kill/mon_025/T"..tasknum.."",3}
task[40]={40,"洛阳郊外","鬃毛熊",15,"task_kill/mon_026/T"..tasknum.."",3}
task[41]={41,"渭水之滨","氐族战士",15,"task_kill/mon_027/T"..tasknum.."",3}
task[42]={42,"渭水之滨","嚎兽",15,"task_kill/mon_028/T"..tasknum.."",3}
task[43]={43,"西蜀竹林","竹节怪",15,"task_kill/mon_029/T"..tasknum.."",3}
task[44]={44,"西蜀竹林","竹叶妖",15,"task_kill/mon_030/T"..tasknum.."",3}
task[45]={45,"食人谷","噬龙",15,"task_kill/mon_031/T"..tasknum.."",3}
task[46]={46,"食人谷","骷髅",15,"task_kill/mon_032/T"..tasknum.."",3}
task[47]={47,"白骨洞","尸虫",16,"task_kill/mon_033/T"..tasknum.."",3}
task[48]={48,"白骨洞","修罗兵",16,"task_kill/mon_034/T"..tasknum.."",3}
--↑↑       30~40
task[49]={49,"太行古径","穷奇",20,"task_kill/mon_035/T"..tasknum.."",4}
task[50]={50,"太行古径","金纹巨灵",20,"task_kill/mon_036/T"..tasknum.."",4}
task[51]={51,"太行山谷","绿石人",20,"task_kill/mon_037/T"..tasknum.."",4}
task[52]={52,"太行山谷","太行古猿",20,"task_kill/mon_038/T"..tasknum.."",4}
task[53]={53,"陷落关口","霸虎",20,"task_kill/mon_046/T"..tasknum.."",4}
task[54]={54,"陷落关口","夜叉",20,"task_kill/mon_047/T"..tasknum.."",4}
--↑↑       40~50
task[55]={55,"参合坡","龙兵",25,"task_kill/mon_039/T"..tasknum.."",5}
task[56]={56,"参合坡","蟾卒",25,"task_kill/mon_040/T"..tasknum.."",5}
task[57]={57,"参合坡","象帅",25,"task_kill/mon_041/T"..tasknum.."",5}
task[58]={58,"燕王陵","鬼火",25,"task_kill/mon_042/T"..tasknum.."",5}
task[59]={59,"燕王陵","蝠灵",25,"task_kill/mon_043/T"..tasknum.."",5}
task[60]={60,"地下陵墓","毒僵尸",25,"task_kill/mon_044/T"..tasknum.."",5}
task[61]={61,"地下陵墓","血僵尸",25,"task_kill/mon_045/T"..tasknum.."",5}
task[62]={62,"关外","巨蹄",28,"task_kill/mon_048/T"..tasknum.."",5}
task[63]={63,"关外","草原熊",28,"task_kill/mon_049/T"..tasknum.."",5}
--↑↑       50~60
task[64]={64,"云中郊外","鲜卑蛮兵",30,"task_kill/mon_050/T"..tasknum.."",6}
task[65]={65,"云中郊外","龙蝎",30,"task_kill/mon_051/T"..tasknum.."",6}
task[66]={66,"古战场","鲜卑精锐",33,"task_kill/mon_052/T"..tasknum.."",6}
task[67]={67,"古战场","战熊",33,"task_kill/mon_053/T"..tasknum.."",6}
task[68]={68,"古战场","炎鹫",33,"task_kill/mon_054/T"..tasknum.."",6}
task[69]={69,"契丹部落","冰魔狼",35,"task_kill/mon_055/T"..tasknum.."",6}
task[70]={70,"契丹部落","战争兽",35,"task_kill/mon_056/T"..tasknum.."",6}
task[71]={71,"沙漠绿洲","源犀",35,"task_kill/mon_063/T"..tasknum.."",6}
task[72]={72,"沙漠绿洲","砂鼹",35,"task_kill/mon_064/T"..tasknum.."",6}
--↑↑       60~70
task[73]={73,"沙漠迷宫","沙虫",35,"task_kill/mon_057/T"..tasknum.."",7}
task[74]={74,"沙漠迷宫","沙魁",35,"task_kill/mon_058/T"..tasknum.."",7}
task[75]={75,"漠北大荒","荒原兽",35,"task_kill/mon_059/T"..tasknum.."",7}
task[76]={76,"漠北大荒","大荒猬",35,"task_kill/mon_060/T"..tasknum.."",7}
task[77]={77,"柔然领地","柔然拳将",35,"task_kill/mon_061/T"..tasknum.."",7}
task[78]={78,"柔然领地","天师邪兵",35,"task_kill/mon_062/T"..tasknum.."",7}
task[79]={79,"极西走廊","獠龙",35,"task_kill/mon_065/T"..tasknum.."",7}
task[80]={80,"极西走廊","剑蜥",35,"task_kill/mon_066/T"..tasknum.."",7}
task[81]={81,"匈奴王庭","匈奴力士",35,"task_kill/mon_067/T"..tasknum.."",7}
task[82]={82,"匈奴王庭","匈奴萨满",35,"task_kill/mon_068/T"..tasknum.."",7}
--↑↑       70~80
task[83]={83,"巫魂山","巫魂",40,"task_kill/mon_069/T"..tasknum.."",8}
task[84]={84,"巫魂山","巫山老妖",40,"task_kill/mon_070/T"..tasknum.."",8}
task[85]={85,"魍魉塔一层","魍魉",40,"task_kill/mon_071/T"..tasknum.."",8}
task[86]={86,"魍魉塔一层","血犀",40,"task_kill/mon_072/T"..tasknum.."",8}
--↑↑       80~90
task[87]={87,"魍魉塔二层","地龙",45,"task_kill/mon_073/T"..tasknum.."",9}
task[88]={88,"魍魉塔二层","猩红炎魔",45,"task_kill/mon_074/T"..tasknum.."",9}
task[89]={89,"魔王殿","魔人格霸",48,"task_kill/mon_075/T"..tasknum.."",8}
task[90]={90,"魔王殿","双头魔龙",48,"task_kill/mon_076/T"..tasknum.."",8}
--↑↑      90~ 





if(level~=0)then

		if(level<=20)then
			collection=(LuaRandom(3)+21)
		elseif(level<=30)then
			collection=(LuaRandom(11)+21)
		elseif(level<=40)then
			collection=(LuaRandom(18)+21)
		elseif(level<=50)then
			collection=(LuaRandom(34)+21)
		elseif(level<=60)then
			collection=(LuaRandom(23)+32)
		elseif(level<=70)then
			collection=(LuaRandom(32)+32)
		elseif(level<=80)then
			collection=(LuaRandom(41)+32)
		elseif(level<=90)then
			collection=(LuaRandom(51)+32)
		elseif(level<=100)then
			collection=(LuaRandom(55)+32)
		else
			collection=(LuaRandom(36)+55)
		end
end

	str1=task[collection][2]
	str2=task[collection][3]
	str3=task[collection][4]
	str4=task[collection][5]
	return collection,str1,str2,str3,str4
end

--***********************************************
function AutoSearchTask_Goods(level,collection)

goods={}
goods[111]={111,"o_mission020","劣质鱼肉",1,1}
goods[112]={112,"o_mission039","优质鱼肉",1,2}
goods[113]={113,"o_mission040","精品鱼肉",1,3}
goods[114]={114,"o_mission168","甲鱼",1,3}
goods[115]={115,"o_mission153","金枝",1,3}
goods[116]={116,"o_mission145","矿精",1,3}
goods[117]={117,"o_mission018","破旧古董",1,3}
goods[118]={118,"o_drug_hp3","玉清散(不绑定的)",3,1}
goods[119]={119,"o_drug_mp3","天香露(不绑定的)",3,1}
goods[120]={120,"o_drug_hp2","三叶散",3,1}
goods[121]={121,"o_drug_mp2","花灵露",3,1}
if(level~=0)then
	r=LuaRandom(18)
	if(r==0 or r==1)then
		collection=111
	elseif(r==2 or r==3)then
		collection=112
	elseif(r==4 or r==5)then
		collection=113
	elseif(r==6)then
		collection=114
	elseif(r==7)then
		collection=115
	elseif(r==8)then
		collection=116
	elseif(r==9)then
		collection=117
	elseif(r==10 or r==11)then
		collection=118
	elseif(r==12 or r==13)then
		collection=119
	elseif(r==14 or r==15)then
		collection=120
	else
		collection=121
	end
end

	str1=goods[collection][2]
	str2=goods[collection][3]
	str3=goods[collection][4]

	return collection,str1,str2,str3
end
--********************************
function AutoSearchTask_Material(level,collection)

material={}
material[311]={311,"o_material_11","1级毛",2,1}
material[312]={312,"o_material_20","1级皮",2,1}
material[313]={313,"o_material_29","1级肉",2,1}
material[314]={314,"o_material_38","1级木",2,1}
material[315]={315,"o_material_47","1级矿",2,1}
material[316]={316,"o_material_56","1级晶",2,1}
material[317]={317,"o_material_12","2级毛",2,2}
material[318]={318,"o_material_21","2级皮",2,2}
material[319]={319,"o_material_30","2级肉",2,2}
material[320]={320,"o_material_39","2级木",2,2}
material[321]={321,"o_material_48","2级矿",2,2}
material[322]={322,"o_material_57","2级晶",2,2}
material[323]={323,"o_material_13","3级毛",2,3}
material[324]={324,"o_material_22","3级皮",2,3}
material[325]={325,"o_material_31","3级肉",2,3}
material[326]={326,"o_material_40","3级木",2,3}
material[327]={327,"o_material_49","3级矿",2,3}
material[328]={328,"o_material_58","3级晶",2,3}
material[329]={329,"o_material_14","4级毛",2,4}
material[330]={330,"o_material_23","4级皮",2,4}
material[331]={331,"o_material_32","4级肉",2,4}
material[332]={332,"o_material_41","4级木",2,4}
material[333]={333,"o_material_50","4级矿",2,4}
material[334]={334,"o_material_59","4级晶",2,4}
if(level~=0)then
	if(level<30)then
		collection=(LuaRandom(6)+311)
	elseif(level<50)then
		collection=(LuaRandom(12)+311)
	elseif(level<70)then
		collection=(LuaRandom(18)+311)
	else
		collection=(LuaRandom(18)+317)
	end
end

	str1=material[collection][2]
	str2=material[collection][3]
	str3=material[collection][4]
	str4=material[collection][5]

return collection,str1,str2,str3,str4
end
		
--*************************Collection采集
function AutoSearchTask_Planting(level,collection)

planting={}
planting[511]={511,"o_seed006","初级种植场","栀子花","o_mission094",2}
planting[512]={512,"o_seed010","初级种植场","狗尾巴花","o_mission095",2}
planting[513]={513,"o_seed025","初级种植场","茉莉花","o_mission093",2}
planting[514]={514,"o_seed027","初级种植场","荷花","o_mission097",2}
planting[515]={515,"o_seed026","初级种植场","郁金香","o_mission098",2}

planting[516]={516,"o_seed104","中级种植场","金银花","o_mission099",4}
planting[517]={517,"o_seed009","中级种植场","薰衣草","o_mission100",4}
planting[518]={518,"o_seed017","中级种植场","牡丹花","o_mission101",4}
planting[519]={519,"o_seed018","中级种植场","夜来香","o_mission102",4}
planting[520]={520,"o_seed019","中级种植场","康乃馨","o_mission103",4}

planting[521]={521,"o_seed020","高级种植场","紫罗兰","o_mission104",6}
planting[522]={522,"o_seed021","高级种植场","君子兰","o_mission105",6}
planting[523]={523,"o_seed022","高级种植场","丁香花","o_mission106",6}
planting[524]={524,"o_seed023","高级种植场","七里香","o_mission107",6}
planting[525]={525,"o_seed024","高级种植场","海棠花","o_mission108",6}



if(level~=0)then
	if(level<30)then
		collection=LuaRandom(5)+511
	elseif(level<60)then
		collection=LuaRandom(5)+516
	else
		collection=LuaRandom(5)+521
	end
end

	str1=planting[collection][2]
	str2=planting[collection][3]
	str3=planting[collection][4]
	str4=planting[collection][5]
	return collection,str1,str2,str3,str4
end

--*********************************************
function AutoSearchTask_Boss(level,collection)
--[[if(level<20)then
	tasknum="xhuanxing001"
elseif(level<30)then
	tasknum="xhuanxing002"
elseif(level<40)then
	tasknum="xhuanxing003"
elseif(level<50)then
	tasknum="xhuanxing004"
elseif(level<60)then
	tasknum="xhuanxing005"
else
	tasknum="xhuanxing006"
end]]
boss={}
boss[611]={611,"巨石洞","异族力士","Txhuanxing001",4}
boss[612]={612,"地牢深处","孙恩邪体","Txhuanxing002",5}
boss[613]={613,"淝水河底","万蛇","Txhuanxing003",6}
boss[614]={614,"白骨洞深处","修罗魔菇","Txhuanxing004",7}
boss[615]={615,"太行谷底","玄武兽","Txhuanxing005",8}
boss[616]={616,"地下陵穴","王陵将军","Txhuanxing006",9}
if(level~=0)then
	if(level<20)then
		collection=611
	elseif(level<30)then
		collection=612
	elseif(level<40)then
		collection=613
	elseif(level<50)then
		collection=614
	elseif(level<60)then
		collection=615
	else
		collection=616
	end	
end
	str1=boss[collection][2]
	str2=boss[collection][3]
	str3=boss[collection][4]

return collection,str1,str2,str3
end

--***********************************************************
function AutoSearchTask_Country(level,collection)

country={}
country[811]={811,"自古和平为贵，你去像邻国的晋帝问好，以此来表达我们的诚意","去向邻国的晋帝问好","cuontry811"}
country[812]={812,"去到邻国擂台上参加一场比赛取得胜利并且领取奖励","去邻国擂台上赢得一场比赛","cuontry812"}


if(level~=0)then
	if(level<25)then
		collection=811
	else
		collection=LuaRandom(2)+811
	end
end
	str1=country[collection][2]
	str2=country[collection][3]
	str3=country[collection][4]
	return collection,str1,str2,str3
end


--****************************************************888
function AutoSearchTask_Faction(level,collection)
faction={}
faction[911]={911,"洛阳告急【循环】","faction911","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",2}
faction[912]={912,"派送物资【循环】","faction912","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",2}
faction[913]={913,"职责所在【循环】","faction913","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",3}
faction[914]={914,"购买物资【循环】","faction914","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",3}
faction[915]={915,"收集爪子【循环】","faction915","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",4}
faction[916]={916,"运送粮食【循环】","faction916","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",4}
faction[917]={917,"除魔卫道【循环】","faction917","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",5}
faction[918]={918,"[解决邪恶][寻找根源][无奈办法]","faction919","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",6}
faction[919]={919,"扶摇直上【循环】","faction918","帮派任务在宫殿晋帝处接取，如果你不知道可以向其他玩家打听下",6}
if(level~=0)then
	if(LuaQueryRank()<2)then
		if(level<30)then
			collection=LuaRandom(2)+911
		elseif(level<40)then
			collection=LuaRandom(2)+913
		elseif(level<50)then
			collection=LuaRandom(2)+915
		elseif(level<60)then
			collection=917
		elseif(level>=60)then
			collection=919
		end
	elseif(LuaQueryRank()>=2)then
		if(level<30)then
			collection=LuaRandom(2)+911
		elseif(level<40)then
			collection=LuaRandom(2)+913
		elseif(level<50)then
			collection=LuaRandom(2)+915
		elseif(level<60)then
			collection=LuaRandom(2)+917
		elseif(level>=60)then
			collection=919
		else
			
		end
	end
	str1=faction[collection][2]
	str2=faction[collection][3]
	str3=faction[collection][4]
end
		
	return collection,str1,str2,str3
end