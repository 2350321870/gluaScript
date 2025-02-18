NPCINFO = {
serial="182" ,
base_name="xylr" ,
icon=2558,
NpcMove=2558,
name="幸运老人" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="何年何月，得偿所望" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0    
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T220")==1)then
		AddTopSayMenuItem("@2古董【隐藏】","T220")
		havetask =2
	end

    if(LuaQueryTask("Thuanxing") ==4 and LuaQueryTask("Thx04") ==0)  then
	AddTopSayMenuItem("@2环形任务【每日】@0","Thuanxing")
	havetask =2
	end    
	if(LuaQueryTask("Tqlxs") ==1)  then
	AddTopSayMenuItem("@2千里行商【每日】@0","Tqlxs")
	havetask =2
	end
	if(LuaQueryTask("T120")==2 and LuaQueryTask("T120B")==0)  then
	AddTopSayMenuItem("@2爱的考验【每日】@0","T120")
	havetask =2
	end
	if(LuaQueryTask("Tdiaoyuhd")==1)  then
	AddTopSayMenuItem("@2活动筋骨@0","Tdiaoyuhd")
	havetask =2
	end
    if(LuaQueryTask("Tpty")==1)then
	AddTopSayMenuItem("@2包租公的人情","Tptya")
	end
	if(LuaQueryTask("T680")==2 or LuaQueryTask("T680")==3) then
		AddTopSayMenuItem("@2守墓老人【剧情】","T680")
		havetask=2
	end
	if(LuaQueryTask("Tqxzf")>=4 and LuaQueryTask("Tqxzf")<6 )then
		AddTopSayMenuItem("@2七夕祝福@0","Tqxzf")			--七夕祝福
		havetask =2
	end 
	if(LuaQueryTask("TzhongqiudsA")==2) then				
	AddTopSayMenuItem("@2诗漫中秋@0","Tzhongqiuds")
	havetask =2							--中秋节
	end 
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
elseif(answer=="liaotian") then
	LuaSay("幸运老人：真是难得啊，最近有这么多的访客到。")

elseif(answer=="Tptya")then
	if(LuaQueryTask("Tptyatime") == GetCurrentHour())then
		if(LuaQueryTask("Tptyatimes")<10)then
			if(LuaQueryTask("Tpty")==1)then
				LuaSay("千难万难！人情债要还！包租公对我的再生之恩，我无以为报，只能给你些肥料毒药，你收好！")
				LuaGive("o_mission215",3,Tcj)
				LuaGive("o_mission216",5,Tcj)
				LuaAddTask("Tptyatimes",1)
				LuaDelTask("Tpty")
				UpdateMenu()
			else
				LuaSay("老弟啊你刚领完又来，这不是晃点我吗？")
			end
		else
			LuaSay("1小时领取次数不能过10次，你下一小时再来吧！")
		end
	else
		LuaSay("千难万难！人情债要还！包租公对我的再生之恩，我无以为报，只能给你些肥料毒药，你收好！")
		LuaSetTask("Tptyatime",GetCurrentHour())
		LuaDelTask("Tptyatimes")
		LuaGive("o_mission215",3,Tcj)
		LuaGive("o_mission216",5,Tcj)
		LuaDelTask("Tpty")
		UpdateMenu()
	end
------------------------------------------
 elseif(answer=="Tzhongqiuds")then
        if(LuaQueryTask("TzhongqiudsA")==2)then
        if(LuaQueryTask("TzhongqiudsAa")==0)then 
		LuaSay("幸运老人：少侠只要通过了我的问答考验就可以得到诗句和字")
		end
		r=LuaRandom(21)
		if(r==0)then
		LuaSay("幸运老人：请问“@3花间一壶酒，独酌无相亲@0”的后面一句是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("月既不解饮，影徒随我身","wrong")
		AddMenuItem("举杯邀明月，对影成三人","correct")
		AddMenuItem("醒时同交欢，醉后各分散","wrong")
		AddMenuItem("永结无情游，相期邈云汉","wrong")

      		elseif(r==1)then
		LuaSay("幸运老人：请问“@3此时瞻白兔，直欲数秋毫@0”的前面一句是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("玉衡指孟冬，众星何历历","wrong")
		AddMenuItem("满月飞明镜，归心折大刀","wrong")
		AddMenuItem("转蓬行地远，攀桂仰天高","wrong")
		AddMenuItem("水路疑霜雪，林栖见羽毛","correct")

		elseif(r==2)then
		LuaSay("幸运老人：请问“@3清辉澹水木，演漾在窗户@0”的下一句诗是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("高卧南斋时，开帷月初吐","wrong")
		AddMenuItem("千里共如何，微风吹兰杜","wrong")
		AddMenuItem("荏苒几盈虚，澄澄变今古","correct")
		AddMenuItem("美人清江畔，是夜越吟苦","wrong")

		elseif(r==3)then
		LuaSay("幸运老人：请问“@3床前明月光，疑是地上霜@0”出自哪里？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("李白的《关三月》","wrong")
		AddMenuItem("李白的《静夜思》","correct")
		AddMenuItem("刘方平的《月夜》","wrong")
		AddMenuItem("李商隐的《霜月》","wrong")

		elseif(r==4)then
		LuaSay("幸运老人：请问“@3但愿人长久，千里共婵娟@0”是谁写的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("李白","wrong")
		AddMenuItem("苏轼","correct")
		AddMenuItem("杜甫","wrong")
		AddMenuItem("白居易","wrong")

		elseif(r==5)then
		LuaSay("活动使者：请问“@3野旷天低树，江清月近人@0”出自何处？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("《望月怀远》","wrong")
		AddMenuItem("《宿建德江》","correct")
		AddMenuItem("《山居秋暝》","wrong")
		AddMenuItem("《旅宿》","wrong")

		elseif(r==6)then
		LuaSay("活动使者：请问“@3空山新雨后,天气晚来秋@0”的后半句是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("随意春芳歇，王孙自可留","wrong")
		AddMenuItem("明月松间照,清泉石上流","correct")
		AddMenuItem("竹喧归浣女,莲动下渔舟","wrong")
		AddMenuItem("无中生有","wrong")
		elseif(r==7)then
		LuaSay("幸运老人：请问“@3可怜九月初三夜，露似珍珠月似弓@0”是谁写的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("白居易","correct")
		AddMenuItem("杜甫","wrong")
		AddMenuItem("李白","wrong")
		AddMenuItem("王维","wrong")

		elseif(r==8)then
		LuaSay("幸运老人：请问“@3商女不知亡国恨，隔江犹唱后庭花@0”是哪首诗里的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("《枫桥夜泊》","wrong")
		AddMenuItem("《江楼有感》","wrong")
		AddMenuItem("《泊秦淮》","correct")
		AddMenuItem("《春江花月夜》","wrong")
		elseif(r==10)then
		LuaSay("幸运老人：请问“@3无言独上西楼，月如钩@0”后面的一句诗是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("千里万里月明","wrong")
		AddMenuItem("别有一般滋味在心头","wrong")
		AddMenuItem("寂寞梧桐深院锁清秋","correct")
		AddMenuItem("满眼相思泪","wrong")
		elseif(r==11)then
		LuaSay("幸运老人：请问“@3峨眉山月半轮秋@0”后半句为？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("夜发清溪向三峡","wrong")
		AddMenuItem("思君不见下渝州","wrong")
		AddMenuItem("影入平羌江水流","correct")
		AddMenuItem("只有相随无别离","wrong")
		elseif(r==12)then
		LuaSay("幸运老人：请问“@3我寄愁心与明月@0”后半句为？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("拄杖无时夜叩门","wrong")
		AddMenuItem("清风半夜鸣蝉","wrong")
		AddMenuItem("随君直到夜郎西","correct")
		AddMenuItem("水落石出","wrong")
		elseif(r==13)then
		LuaSay("幸运老人：请问下面哪位不是“@3初唐四杰@0”？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("王勃","wrong")
		AddMenuItem("骆宾王","wrong")
		AddMenuItem("李贺","correct")
		AddMenuItem("卢照邻","wrong")
		elseif(r==14)then
		LuaSay("幸运老人：请问下面哪位不是“@3竹林七贤@0”？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("山涛","wrong")
		AddMenuItem("阮籍","wrong")
		AddMenuItem("杨炯","correct")
		AddMenuItem("阮咸","wrong")
		elseif(r==15)then
		LuaSay("幸运老人：请问“中秋归来”(打一词牌名)？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("六归","wrong")
		AddMenuItem("七归","wrong")
		AddMenuItem("八归","correct")
		AddMenuItem("无归","wrong")
		elseif(r==16)then
		LuaSay("幸运老人：请问@3诗仙李白@0是我国古代哪个朝代的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("明朝","wrong")
		AddMenuItem("宋朝","wrong")
		AddMenuItem("唐朝","correct")
		AddMenuItem("隋朝","wrong")
		elseif(r==17)then
		LuaSay("幸运老人：请问下面哪一个不是我国诗歌传统的表现手法？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("赋","wrong")
		AddMenuItem("比","wrong")
		AddMenuItem("风","correct")
		AddMenuItem("兴","wrong")
		elseif(r==18)then
		LuaSay("幸运老人：请问下面哪一个是高度集中地概括反映社会生活的一种文学体裁？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("句","wrong")
		AddMenuItem("词","wrong")
		AddMenuItem("诗","correct")
		AddMenuItem("小说","wrong")
		elseif(r==19)then
		LuaSay("幸运老人：请问@3唐代诗人杜甫@0被人们尊称为什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("诗仙","wrong")
		AddMenuItem("诗王","wrong")
		AddMenuItem("诗圣","correct")
		AddMenuItem("诗神","wrong")
		elseif(r==20)then
		LuaSay("幸运老人：请问@3唐代诗人白居易@0被人们尊称为什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("诗仙","wrong")
		AddMenuItem("诗王","wrong")
		AddMenuItem("诗魔","correct")
		AddMenuItem("诗神","wrong")
		end
    end  
UpdateMenu()                                         --回答错误 
elseif(answer=="wrong")then
	LuaAddTask("TzhongqiudsAb",1)       --记录打错题数
	if(LuaQueryTask("TzhongqiudsAa")<4)then
	 	LuaSay("幸运老人：呜呜~ ~ ~你答错了，@1注意@0：答错3道题考验失败！")
		LuaAddTask("TzhongqiudsAa",1)	--记录答题数目
		DoTalk("Tzhongqiuds")
	else
		LuaSay("活动使者：你答错了!@1警告@0：答错3道题考验失败！")
		LuaSay("活动使者：答题活动已完成")
		LuaSetTask("TzhongqiudsA",99)
		LuaSetTask("TzhongqiudsAa",99)
		if(LuaQueryTask("TzhongqiudsAb")<3)then 
		LuaSay("幸运老人：恭喜你顺利通过了答题考验！")
		r = LuaRandom(16)			 
		if(r==0)then   		
		LuaGive("o_mission227",1)           --诗的一半           
		elseif(r==1)then		
		LuaGive("o_mission228",1)                      
		elseif(r==2)then
		LuaGive("o_mission229",1)              
		elseif(r==3)then
		LuaGive("o_mission230",1)                     
		elseif(r==4)then
		LuaGive("o_mission231",1)                   
		elseif(r==5)then		
		LuaGive("o_mission232",1)                      
		elseif(r==6)then
		LuaGive("o_mission233",1)              
		elseif(r==7)then
		LuaGive("o_mission234",1)                     
		elseif(r==8)then
		LuaGive("o_mission235",1)              
		elseif(r==9)then
		LuaGive("o_mission236",1)                     
		elseif(r==10)then
		LuaGive("o_mission240",1)		 -- 一个皎字  
		elseif(r==11)then
		LuaGive("o_mission242",1)		 -- 一个当字 
		elseif(r==12)then
		LuaGive("o_mission243",1)		 -- 一个空字 
		elseif(r==13)then
		LuaGive("o_mission244",1)   		 -- 一个天字 
		elseif(r==14)then
		LuaGive("o_mission245",1)		 -- 一个伦字 
		elseif(r==15)then
		LuaGive("o_mission246",1)   		 -- 一个之字 
		end
		else
		LuaSay("幸运老人：哎！你答错太多！考验失败！")
		end	
	end
UpdateMenu()                            --回答正确 
elseif(answer=="correct")then
     if(LuaQueryTask("TzhongqiudsAa")<4) then
        LuaSay("活动使者:恭喜你答对了！这个问题太简单了，继续点击，我再问你一个问题！")
        LuaAddTask("TzhongqiudsAa",1)
	DoTalk("Tzhongqiuds")
    else
	LuaSay("活动使者：恭喜你答对了！")
	LuaSetTask("TzhongqiudsA",99)
	LuaSetTask("TzhongqiudsAa",99)
	if(LuaQueryTask("TzhongqiudsAb")<3)then 
	LuaSay("幸运老人：恭喜你顺利通过了答题考验！")
	r = LuaRandom(16)			 
	if( r==0)then   		
	LuaGive("o_mission227",1)           --诗的一半           
	elseif(r==1)then		
	LuaGive("o_mission228",1)                      
	elseif(r==2)then
	LuaGive("o_mission229",1)              
	elseif(r==3)then
	LuaGive("o_mission230",1)                     
	elseif(r==4)then
	LuaGive("o_mission231",1)                   
	elseif(r==5)then		
	LuaGive("o_mission232",1)                      
	elseif(r==6)then
	LuaGive("o_mission233",1)              
	elseif(r==7)then
	LuaGive("o_mission234",1)                     
	elseif(r==8)then
	LuaGive("o_mission235",1)              
	elseif(r==9)then
	LuaGive("o_mission236",1)                     
	elseif(r==10)then
	LuaGive("o_mission240",1)		 -- 一个皎字 
	elseif(r==11)then
	LuaGive("o_mission242",1)		 -- 一个当字 
	elseif(r==12)then
	LuaGive("o_mission243",1)		 -- 一个空字 
	elseif(r==13)then
	LuaGive("o_mission244",1)   		 -- 一个天字 
	elseif(r==14)then
	LuaGive("o_mission245",1)		 -- 一个伦字 
	elseif(r==15)then
	LuaGive("o_mission246",1)   		 --一个之字 
	end			
	else
	LuaSay("幸运老人：哎！你答错太多！考验失败！")
	end
    end
UpdateMenu()
---------------------------------------------
elseif(answer=="Thuanxing") then
	if(LuaItemCount("o_drug_hp1")>=10) then
	LuaSay("幸运老人：真是难得啊，最近有这么多的访客到。")
	DelItem("o_drug_hp1",10)
	LuaSetTask("Thx04",99) 
    UpdateMenu()
	else
	LuaSay("幸运老人：你还没有帮我要的@210个金创散@0带来呢。")
	end

elseif(answer=="Tqlxs") then
	if(LuaQueryTask("Tqlxs") ==1)  then
		LuaSay("幸运老人：你可是少有几个能坚持走到最后的人啊，真是不简单，老夫已经很久没有见到人了，今天真是高兴。")
		LuaSay("幸运老人：老夫在这@4天涯海角@0整整60余载，不曾进入过中原，父亲说过中原的繁华，真想去看看啊。")
		LuaSay("幸运老人：这些便是夜明珠了，拿去给@4建康城南@0的@3种子商人@0吧。")
		LuaSetTask("Tqlxs",2)
		LuaSetTask("T952",2) 
		AddLog("千里行商【每日】",952)
		DelItem("o_mission037",20)
		LuaGive("o_mission034",5)         
		UpdateMenu()
		end
		
elseif(answer=="T120") then
       LuaSay("幸运老人：你们可真是有毅力啊，这么远也能坚持过来@!")
       LuaSetTask("T120B",99)
       UpdateMenu()
       
elseif(answer=="Tdiaoyuhd") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	  if(LuaQueryTask("Tdiaoyuhd")==1) then
	   LuaSetTask("Tdiaoyuhd",0)
       LuaSay("幸运老人：没事的时候多出来活动一下筋骨，可不要一天到晚都在那里钓鱼哦@!")
       local exp
       if(level<20) then
       exp=60000+level^2*40
       else
       exp=150000+level^2*40
       end
       if(LuaQueryTask("Tdiaoyuhd")==0) then
       LuaAddJx("combat_exp",exp,"Tdiaoyuhd")
       LuaGive("coin",3000,"Tdiaoyuhd")
       end
       UpdateMenu()
	  end

---------------------------
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==2 ) then
	    LuaSay("幸运老人：就知道守墓老人那糟老头喜欢喝我这的天涯之酒。")
        LuaSay("幸运老人：既然英雄要匡扶正义，那我也帮把手，把这@4天涯之酒@0给你。")
        LuaSetTask("T680",3)      -------日志的添加
        LuaGive("o_mission357",1)
		AddLog("守墓老人【剧情】",680)
		UpdateMenu()
	elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")==0) then
	    LuaSay("幸运老人：孩子，这么珍贵的东西你都弄不见了，我就郁闷了。")
	    LuaSay("幸运老人：算了，为了天下的正义在给你一壶吧。")
	    LuaGive("o_mission357",1)
    elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")>0) then
	LuaSay("幸运老人：到@4燕王陵@0找@3守墓老人。@0")
        UpdateTopSay("到燕王陵找守墓老人")
	end
-------------------------------------

elseif(answer=="T220")then
	if(LuaQueryTask("T220")==1)then
		LuaSay("幸运老人：看少侠满脸风尘，来到这无人之地，有什么事情？")
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			LuaSay(""..LuaQueryStr("name").."：晚辈听说你最近正在收集这破旧古董，前来打探打探。")
			LuaSay("幸运老人：不错，这些古董在常人看来没什么，在我看来确是价值连城，少侠是否愿意送给我，或者廉价卖给我。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("@3送给我","T220song")
			AddMenuItem("@3卖给我","T220mai")
		else
			LuaSay(""..LuaQueryStr("name").."：我来的时候带了一个古董，想找你看看，现在怎么不见了。")
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
		end
	end
		elseif(answer=="T220song")then
			if(LuaItemStatusNormalCount("o_mission018")>=1)then
				if(LuaQueryTask("T220")==1)then
					LuaSay("幸运老人：大侠可真是好心。")
					local r=LuaRandom(5)
					if(r<=2)then
						LuaSay("幸运老人：既然还有这么好的人，老身也不好意思白拿你的东西，这是给你的一点纪念品，你收下吧。")
						AddMenuItem("@7任务完成","")
						AddMenuItem("@3领取奖励","T220jl")
					elseif(r==4 or r==3)then
						LuaSay("幸运老人：你把它送给我了？哈哈，既然有这等好事，天上掉馅饼。你可不要后悔哦。")
						LuaSetTask("220Taskday",GetCurrentDay())
						LuaAddTask("220dotime",1)
						DelItem("o_mission018",1)
						LuaDelTask("T220")
						DelLog("220")
						LuaDelTask("bao_D")
						UpdateMenu()
					end
				end
			else
				LuaSay("@5提示：你没有携带破旧古董")
			end

		elseif(answer=="T220mai")then
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			local level= LuaQuery("level")
			if(LuaQueryTask("T220")==1)then
			LuaSay("幸运老人：这些钱币该够买下它了，还是得谢谢少侠给我带来它。")
			LuaGive("coin",2500,"T220")
			LuaSetTask("220Taskday",GetCurrentDay())
			LuaAddTask("220dotime",1)
			DelItem("o_mission018",1)
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
			end
		else
			LuaSay("@5提示：你没有携带破旧古董")
		end
		elseif(answer=="T220jl")then
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaQueryTask("T220")==1)then
			local jingyan
			if(level<20)then
				jingyan=(21037+level^2*25)
			elseif(level<30)then
				jingyan=(33000+level^2*25)
			elseif(level<40)then
				jingyan=(43682+level^2*35)
			elseif(level<50)then
				jingyan=(53682+level^2*35)
			elseif(level<60)then
				jingyan=(64682+level^2*35)
			else
				jingyan=(84682+level^2*45)
			end
			LuaGive("coin",2500,"T220")
			DelItem("o_mission018",1)
			LuaSetTask("220Taskday",GetCurrentDay())
			LuaAddTask("220dotime",1)
			LuaAddJx("combat_exp",jingyan,"T220")
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
			end
		else
			LuaSay("@5提示：你没有携带破旧古董")
		end

-------------------------------------**七夕祝福**-------------------------------------------
elseif(answer=="Tqxzf")then
	if(LuaQueryTask("Tqxzf")==4)then
		LuaSay("幸运老人：少侠果真是有情有义之人，不远千里为牛郎织女祝福，真让老朽感动不已！")
		LuaSay("幸运老人：祝福以传达，回到@3晋清公主@0处领取奖励吧！")
		LuaSetTask("Tqxzf",5)
		AddLog("七夕祝福",qxzf)
		DelItem("o_mission221",1)	
		UpdateMenu()
	elseif(LuaQueryTask("Tqxzf")==5) then
	    LuaSay("幸运老人：祝福以传达！回到@3晋清公主@0处领取奖励吧！")
	end
	UpdateMenu()



end
LuaSendMenu()
return 1
end