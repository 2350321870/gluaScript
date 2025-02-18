NPCINFO = { 
serial="171" ,
base_name="yuzu",
icon=2501,
NpcMove=2501,
name="狱卒" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="进来容易出去难" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7选择列表","") 	
	if(LuaQueryTask("T270")==1)then
	AddTopSayMenuItem("结束追杀","out")
	end   
	--AddTopSayMenuItem("改造","gaizao")
	AddTopSayMenuItem("保释","Tbaoshi")
	--AddTopSayMenuItem("越狱","yueyu")
	AddTopSayMenuItem("聊天","liaotian")
	return 1 
		
elseif(answer=="out") then
    ChangeMap("lu_jkc")

elseif(answer=="liaotian") then
     LuaSay("狱卒：不管以任何方式只要出的了地牢，就会免除一切罪恶。") 
		                                                                                      
elseif(answer=="buy1") then
    DoBuy()

elseif(answer=="gaizao") then                             -----------------改造：每10分钟增加pk值2，超过10分钟，也只能领取2的pk值 
	if(LuaQueryTask("T666")==0) then
		if(LuaQuery("pk_state")<=-20)  then
			LuaSay("狱卒：在这里我是老大，想要早点出去，就得无条件的服从我，你们可以通过@3面壁思过@0和@3劳动改造@0增加pk值。@!")     
			LuaSay("狱卒：@3面壁思过@0就是什么都不用做，好好忏悔就行了，10分钟以后，再来找我，一次pk值增加2。") 
			LuaSay("狱卒：@3劳动改造@0需要帮忙采集，10分钟以后，带着@210个人参果@0来找我，成功完成一次pk值增加4，不成功只增加2。")
			AddMenuItem("选择列表","") 
			AddMenuItem("面壁思过","buzuo") 
			AddMenuItem("劳动改造","laodong") 
		else
			LuaSay("狱卒：你已经是好人，可以出狱了。")
			ChangeMap("lu_jkc")
			LuaAdd("out_prison_num",1)
			DelItem("o_mission011",1)
		end 
	elseif(LuaQueryTask("T666")==1) then      ---------改造：面壁思过 
		local shijiancha=(GetCurrentTime() - LuaQueryTask("yuzu_time")) 
		if(shijiancha>=600) then
			LuaSetTask("T666",0)
			LuaAdd("pk_state",2)
			FlushPKState()
			LuaSay("提示：pk值增加2。") 
			if(LuaQuery("pk_state")>-20)  then
				LuaSay("狱卒：恩，看你在牢里表现不错，现在可以出狱了。") 
				AddMenuItem("选择列表","") 
				AddMenuItem("出狱","chuyu") 
				AddMenuItem("不想走","liuxia")                
			else
			LuaSay("狱卒：老实给我改造到@3白名@0吧，现在不要想出去。") 	   
			end 
		else
			LuaSay("狱卒：改造@310分钟@0后，方可兑换pk值，现在时间还不到呢。") 
		end 
    
	elseif(LuaQueryTask("T666")==2) then      ---------改造：劳动改造 
		local shijiancha=(GetCurrentTime() - LuaQueryTask("yuzu_time"))
		local number=LuaItemCount("o_mission164")
		if(shijiancha>=600) then
			if(number==10) then
			LuaSay("狱卒：真是不容易啊，这人参果采集起来可不简单。@!")
			DelItem("o_mission164",number)
			LuaAdd("pk_state",4)
			FlushPKState()
			LuaSay("提示：pk值增加4。")
			elseif(number>10) then
				DelItem("o_mission164",number)
				LuaSay("狱卒：真是不容易啊，这人参果采集起来可不简单，不过多的也全部充公。@!")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",4)
				FlushPKState()
				LuaSay("提示：pk值增加4。")
			elseif(number<10) then
				LuaSay("狱卒：你没有采集够@210个人参果@0，看来不能得到额外的pk值奖励了。")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",2)
				FlushPKState()
				LuaSay("提示：pk值增加2。")
			end
			LuaSetTask("T666",0)
		else
			if(number>=10) then
				LuaSay("狱卒：真是不容易啊，这人参果采集起来可不简单。@!")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",4)
				FlushPKState()
				LuaSetTask("T666",0)
				LuaSay("提示：pk值增加4。")
			else
				LuaSay("狱卒：你还没有采集到@210个人参果@0，不过@310分钟后@0也能增加2的pk值。@!")	   
			end
		end
	end
    
elseif(answer=="Tbaoshi") then                             -------------------保释：耗费和入牢次数、等级、pk值相关
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local pkzhi=LuaQuery("pk_state")
	local zuolaotime
	if(pkzhi<=-20) then
		zuolaotime=600 
	elseif(pkzhi<=-10) then
		zuolaotime=180 
	end
	if(pkzhi<=-10) then
		if(GetCurrentTime() - LuaQuery("Tdilaointime")>zuolaotime) then
			local jinqian=level^2*(-pkzhi+30) +50000 + LuaQueryTask("out_prison_num")*15000
			LuaSetTemp("Tbsjinqian",jinqian)
			if(LuaItemCount("coin")>jinqian) then
				LuaSay("狱卒：根据你的罪恶程度，保释需要@3"..jinqian.."@0铜币，你确定要保释吗？")
				AddMenuItem("选择列表","") 
				AddMenuItem("确定","yes") 
				AddMenuItem("放弃","no")      
			else
				LuaSay("狱卒：你身上金钱不够@3"..jinqian.."@0，不能保释。")
			end 
		else
			LuaSay("狱卒：有钱也得在地牢里呆"..(zuolaotime/60).."分钟，才能保释")
		end
	else
		LuaSay("狱卒：你现在已经是好人，不需要保释了，我可时很有原则的。")
		DelItem("o_mission011",1)
		ChangeMap("lu_jkc")
	end 



elseif(answer=="yueyu") then        -------------------越狱
	local pkzhi=LuaQuery("pk_state")
	local zuolaotime
	if(pkzhi<=-20) then
		zuolaotime=600 
	elseif(pkzhi<=-10) then
		zuolaotime=180 
	end
	if(pkzhi<=-10) then 
		if(GetCurrentTime() - LuaQueryTask("Tdilaointime")>zuolaotime) then
		LuaSay("狱卒：大爷我正看外面的守卫不顺眼呢，我就给你指一条明路。@!")
		LuaSay("狱卒：杀死地牢走廊的@3地牢守卫@0后，会有@31/40@0的几率得到@21把钥匙@0，只要得到钥匙后，就可以离开地牢了。@!")
		LuaSay("狱卒：不过外面的守卫非常厉害，想要成功可是非常困难的，可要想清楚是否越狱了。") 
		AddMenuItem("选择列表","") 
		AddMenuItem("愿意","yuanyi") 
		AddMenuItem("放弃","fangqi")   
		else
		LuaSay("狱卒：外面守卫正在巡逻，还是"..(zuolaotime/60).."分钟后再越狱吧")
		end
	else
		LuaSay("狱卒：你是好人，不需要越狱，可以直接出去了。")
		--LuaSet("pk_state",0)
		FlushPKState()
		ChangeMap("lu_jkc")
		LuaAdd("out_prison_num",1)
		DelItem("o_mission011",1)
	end 

elseif(answer=="yes") then
	local jinqian=LuaQueryTemp("Tbsjinqian")
	LuaDel("Tdilaointime")
	LuaGive("coin",-jinqian,"Tbaoshi")
	LuaSet("pk_state",0)
	FlushPKState()
	LuaAdd("out_prison_num",1)
	DelItem("o_mission011",1)
	ChangeMap("lu_zongmiao")


elseif(answer=="no") then
     LuaSay("狱卒：那你就把牢底做穿吧，他奶奶的，一点外快都捞不到。")	


elseif(answer=="chuyu") then
	LuaSet("pk_state",0)
	FlushPKState()
	LuaAdd("out_prison_num",1)
	DelItem("o_mission011",1)
	ChangeMap("lu_jkc")


elseif(answer=="liuxia") then
       LuaSay("狱卒：那你就给我老实的呆在这里吧，想出去再来找我。")
       
elseif(answer=="yuanyi") then        ---不同等级对应不同难度的怪物，地图及怪物外形没有变化，只是怪物数值的变化，随着等级上升，难度上升很多
	local level=LuaQuery("level")
		LuaSetTask("Tdlzlkillnum",1)
		LuaDelTask("Tdilaointime")
	if(level<=15) then
		LuaSetTask("T666A",1)
		ChangeMap("lu_dilaozl01")
	elseif(level<=25)  then
		ChangeMap("lu_dilaozl02")            
		LuaSetTask("T666A",1)
	elseif(level<=35)   then
		ChangeMap("lu_dilaozl03")
		LuaSetTask("T666A",1)
	elseif(level<=45)   then
		ChangeMap("lu_dilaozl04")
		LuaSetTask("T666A",1)
	elseif(level<=55)   then
		ChangeMap("lu_dilaozl05")
		LuaSetTask("T666A",1)
	elseif(level<=65)   then
		ChangeMap("lu_dilaozl06")
		LuaSetTask("T666A",1)
	elseif(level<=75)   then
		ChangeMap("lu_dilaozl07")
		LuaSetTask("T666A",1)
	elseif(level<=85)   then
		ChangeMap("lu_dilaozl08")
		LuaSetTask("T666A",1)
	elseif(level<=95)   then
		ChangeMap("lu_dilaozl09")
		LuaSetTask("T666A",1)
	end


elseif(answer=="fangqi") then
      LuaSay("狱卒：哎，胆小如鼠的家伙，那你就给我老实的呆在牢房里吧。") 
     
elseif(answer=="laodong") then
	LuaSetTask("yuzu_time",GetCurrentTime())
	LuaSetTask("T666",2)
	ChangeMap("lu_lgnc")
     
elseif(answer=="buzuo") then
	LuaSetTask("yuzu_time",GetCurrentTime())
	LuaSay("狱卒：恩，这样也好，在眼皮底下我也放心一点，@310分钟@0后再来找我吧。") 
	LuaSetTask("T666",1)

end
LuaSendMenu()
return 1
end 

