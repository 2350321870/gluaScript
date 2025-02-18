NPCINFO = { 
serial="311" ,
base_name="emokanshou",
icon=2510,
NpcMove=2510,
name="恶魔看守" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="魔族日益强大，战争一触即发",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("@3BOSS塔活动","Tbossta")

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
------------------------------------------------

elseif(answer=="liaotian") then
	LuaSay("恶魔看守：老夫的精力一天天衰竭，魔族窥视着大地......")


elseif(answer=="Tbossta")then
	if(LuaQueryTask("Tbossta")==2)then
		if(LuaQueryTask("Tbosstaanswer")==0)then	--答题数目
			LuaSay("恶魔看守：底层的魔物凶悍无比且智力超群，就算你有超强的武艺而无绝顶的智慧也是百搭！通过了我的问答考验就可以进入通天塔底层挑战黑暗魔王了！")
			LuaSay("恶魔看守：总共有10题，答错2题算是考验失败，考验失败将会被踢出BOOSS塔。")
		end
	local r=LuaRandom(46)
	if(r==0)then
	LuaSay("恶魔看守：新中国第一部宪法《中华人民共和国宪法》诞生于哪年？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1952年","F")
		AddMenuItem("1953年","F")
		AddMenuItem("1954年","T")
		AddMenuItem("1955年","F")
	elseif(r==1)then
	LuaSay("恶魔看守：中国第一颗原子弹爆炸成功的时间是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1965年9月16日","F")
		AddMenuItem("1964年10月16日","T")
		AddMenuItem("1964年9月16日 ","F")
		AddMenuItem("1966年10月16日","F")
	elseif(r==2)then
	LuaSay("恶魔看守：中国加入世贸组织（WTO）的时间是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("2000年","F")
		AddMenuItem("2001年","T")
		AddMenuItem("2002年","F")
		AddMenuItem("2003年","F")
	elseif(r==3)then
	LuaSay("恶魔看守：文革后恢复高考的第一次考试，有570万名考生走进了考场，考试的时间为？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1977年夏","F")
		AddMenuItem("977年秋","F")
		AddMenuItem("1978年春","F")
		AddMenuItem("1977年冬 ","T")
	elseif(r==4)then
	LuaSay("恶魔看守：中国对香港恢复了行使主权是在什么时候？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1999年12月20日","F")
		AddMenuItem("1998年7月1日","F")
		AddMenuItem("1996年7月1日","F")
		AddMenuItem("1997年7月1日","T")
	elseif(r==5)then
	LuaSay("恶魔看守：中华人民共和国国歌《义勇军进行曲》是由谁作的曲？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("聂耳","T")
		AddMenuItem("洗星海","F")
		AddMenuItem("田汉","F")
		AddMenuItem("陈刚","F")
	elseif(r==6)then
	LuaSay("恶魔看守：建国后修建的第一条铁路是？ ")
		AddMenuItem("@7答案选项","")
		AddMenuItem("京九铁路","F")
		AddMenuItem("成渝铁路","T")
		AddMenuItem("京广铁路","F")
		AddMenuItem("青藏铁路","F")
	elseif(r==7)then
	LuaSay("恶魔看守：我国第一座核电站是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("大亚湾核电站","F")
		AddMenuItem("秦山核电站","T")
		AddMenuItem("岭澳核电站","F")
		AddMenuItem("连云港核电站","F")
	elseif(r==8)then
	LuaSay("恶魔看守：根据世界贸易组织发布的世界排名， 中国以3250亿美元的进口总值，首次跻身全球十强是在哪一年？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1995年","F")
		AddMenuItem("1996年","F")
		AddMenuItem("1997年","T")
		AddMenuItem("1998年","F")
	elseif(r==9)then
	LuaSay("恶魔看守：中国第一乘坐自主研制的载人飞船登上太空的宇航员为是杨利伟，那么第一位实施空间出舱活动的宇航员又是谁呢？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("刘玄德","F")
		AddMenuItem("翟志刚","T")
		AddMenuItem("曹阿瞒","F")
		AddMenuItem("孙仲谋","F")
	elseif(r==10)then
	LuaSay("恶魔看守：中国发射第一颗人造卫星是在哪一年？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1968年","F")
		AddMenuItem("1970年","T")
		AddMenuItem("1971年","F")
		AddMenuItem("1972年","F")
	elseif(r==11)then
	LuaSay("恶魔看守：中国共产党第一次全国代表大会是什么时候召开的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1920年7月23日","F")
		AddMenuItem("1921年7月22日","F")
		AddMenuItem("1922年7月23日","F")
		AddMenuItem("1921年7月23日","T")
	elseif(r==12)then
	LuaSay("恶魔看守：加一笔不好，加一倍不少，打一字？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("涂","F")
		AddMenuItem("大","F")
		AddMenuItem("夕","T")
		AddMenuItem("曹","F")
	elseif(r==13)then
	LuaSay("恶魔看守：《北京城市总体规划》明确了北京发展目标为“国家首都、国际城市、文化名城还有？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("宜居城市","T")
		AddMenuItem("经济中心","F")
		AddMenuItem("和谐城市","F")
		AddMenuItem("旅游名城","F")
	elseif(r==14)then
	LuaSay("恶魔看守：1990年通过的《国旗法》规定，每逢重大节日，必须更换新国旗。即使国旗不受损，悬挂的最长时间也不能超过多少天？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1","F")
		AddMenuItem("7","F")
		AddMenuItem("10","T")
		AddMenuItem("30","F")
	elseif(r==15)then
	LuaSay("恶魔看守：中国第一个奥运会冠军是谁？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("郭晶晶","F")
		AddMenuItem("许海峰","T")
		AddMenuItem("杨 扬","F")
		AddMenuItem("李宁 ","F")
	elseif(r==16)then
	LuaSay("恶魔看守：第二十九届奥林匹克运动会在哪里举行？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("希腊","F")
		AddMenuItem("北京","T")
		AddMenuItem("美国","F")
		AddMenuItem("英国","F")
	elseif(r==17)then
	LuaSay("恶魔看守：澳门回归日期是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("1997年7月1日","F")
		AddMenuItem("1999年12月20日","T")
		AddMenuItem("1997年7月7日","F")
		AddMenuItem("1998年12月1日","F")
	elseif(r==18)then
	LuaSay("恶魔看守：啤酒瓶什么颜色的最好？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("白色","F")
		AddMenuItem("红色","F")
		AddMenuItem("棕色","T")
	elseif(r==19)then
	LuaSay("恶魔看守：助消化药物一般在什么时候使用？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("饭后","T")
		AddMenuItem("饭前","F")
		AddMenuItem("与饭一同吃","F")
	elseif(r==20)then
		LuaSay("恶魔看守：计算机的键盘属于?")
		AddMenuItem("@7答案选项","")
		AddMenuItem("控制设备","F")
		AddMenuItem("输出设备","F")
		AddMenuItem("输入设备","T")				
	elseif(r==21)then
	LuaSay("恶魔看守：人们常说的CPU是指计算机的哪一部分？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("显示器","F")
		AddMenuItem("输入输出设备","F")
		AddMenuItem("中央处理器","T")
	elseif(r==22)then
	LuaSay("恶魔看守：世界三大饮料中不含下列哪种？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("茶叶","F")
		AddMenuItem("可乐","T")
		AddMenuItem("咖啡","F")
	elseif(r==23)then
	LuaSay("恶魔看守：在伤口愈合时不宜食用？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("辣椒","F")
		AddMenuItem("米醋","F")
		AddMenuItem("酱油","T")
	elseif(r==24)then
	LuaSay("恶魔看守：在糖水中加少量盐，尝起来会怎样 ？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("更甜","T","")
		AddMenuItem("变咸","F","")
		AddMenuItem("变苦 ","F","")
	elseif(r==25)then
	LuaSay("恶魔看守：PC是什么意思？ ")
		AddMenuItem("@7答案选项","")
		AddMenuItem("个人电脑","T")
		AddMenuItem("信息技术","F")
		AddMenuItem("国贸","F")
	elseif(r==26)then
	LuaSay("恶魔看守：吸烟有害，烟草中毒性最大的物质是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("尼古丁","T")
		AddMenuItem("亚硝胺","F")
		AddMenuItem("烟焦油","F")			
	elseif(r==27)then
	LuaSay("恶魔看守：狗的汗腺是长在 ？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("鼻子","F")
		AddMenuItem("舌头","T")
		AddMenuItem("肚皮","F")
	elseif(r==28)then
	LuaSay("恶魔看守：工业酒精中含有少量 ？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("硝酸","F")
		AddMenuItem("乙醇","F")
		AddMenuItem("甲醇","T")
	elseif(r==29)then
	LuaSay("恶魔看守：给折枝山茶花保鲜应该用什么？ ")
		AddMenuItem("@7答案选项","")
		AddMenuItem("蒸馏水","F")
		AddMenuItem("冰块","F")
		AddMenuItem("淡盐水","T")
	elseif(r==30)then
	LuaSay("恶魔看守：干冰是由什么物质凝结而成的？ ")            
		AddMenuItem("@7答案选项","")
		AddMenuItem("水","F")
		AddMenuItem("二氧化碳","T")
		AddMenuItem("冰","F")
	elseif(r==31)then
	LuaSay("恶魔看守：鳄鱼为什么会流泪 ？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("杀毒","F")
		AddMenuItem("哭泣","F")
		AddMenuItem("排泄多余的盐分","T")
	elseif(r==32)then
	LuaSay("恶魔看守：陋室铭的作者是谁？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("杜甫","F")
		AddMenuItem("李商隐","F")
		AddMenuItem("刘禹锡","T")
	elseif(r==33)then
	LuaSay("恶魔看守：唐朝著名的诗人中，被称为诗仙的是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("李白","T")
		AddMenuItem("杜甫","F")
		AddMenuItem("白居易","F")
	elseif(r==34)then
	LuaSay("恶魔看守：中国唯一一位女皇帝是谁？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("上官情","F")
		AddMenuItem("慈禧","F")
		AddMenuItem("武则天","T")				
	elseif(r==35)then
	LuaSay("恶魔看守：“国破山河在，城春草木深、”出自杜甫的哪首诗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("冬望","F")
		AddMenuItem("秋望","F")
		AddMenuItem("春望","T")
	elseif(r==36)then
	LuaSay("恶魔看守：“日照香庐升紫烟”诗句中哪座山？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("泰山","F")
		AddMenuItem("庐山","T")
		AddMenuItem("黄山","F")
	elseif(r==37)then
	LuaSay("恶魔看守：“何以解忧，唯有杜康”杜康指什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("茶","F")
		AddMenuItem("水","F")
		AddMenuItem("酒","T")
	elseif(r==38)then
	LuaSay("恶魔看守：孔融让的是什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("梨","T")
		AddMenuItem("苹果","F")
		AddMenuItem("橘子","F")
	elseif(r==39)then
	LuaSay("恶魔看守：四书是指论语、孟子、大学和什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("中庸","T")
		AddMenuItem("诗经","F")
		AddMenuItem("论语","F")
	elseif(r==40)then
	LuaSay("恶魔看守：屈原所坐的中国古代最长的抒情诗是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("离骚","T")
		AddMenuItem("离歌","F")
		AddMenuItem("离别","F")			
	elseif(r==41)then
	LuaSay("恶魔看守：鲁迅先生原名周樟寿，后改名为什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("周育人","F")
		AddMenuItem("周树人","T")
		AddMenuItem("周花人","F")
	elseif(r==42)then
	LuaSay("恶魔看守：西游记的作者是谁？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("施耐庵","F")
		AddMenuItem("曹雪芹","F")
		AddMenuItem("吴承恩","T")
	elseif(r==43)then
	LuaSay("恶魔看守：“春蚕到死丝方尽，蜡炬成灰泪始干”常被用来歌颂什么职业的人？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("工人","F")
		AddMenuItem("医生","F")
		AddMenuItem("教师","T")
	elseif(r==44)then
	LuaSay("恶魔看守：唐三藏的真名是？")            
		AddMenuItem("@7答案选项","")
		AddMenuItem("唐僧","F")
		AddMenuItem("唐玄奘","T")
		AddMenuItem("唐寅","F")
	elseif(r==45)then
	LuaSay("恶魔看守：刘备三顾茅庐请谁出山相助？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("司马懿","F")
		AddMenuItem("诸葛均","F")
		AddMenuItem("诸葛亮","T")
	end
	elseif(LuaQueryTask("Tbossta")==3)then
		LuaSay("恶魔看守：你已经通过了智力测验，进入底层击杀黑暗魔王吧！")
		LuaSay("提示：40分钟内消灭掉黑暗魔王")
		AddMenuItem("请选择","")
			AddMenuItem("进入","jingru")
			AddMenuItem("放弃","giveup")
	end


elseif(answer=="F")then
	LuaAddTask("Tbosstafalse",1)	--记录答错题的道数
	if(LuaQueryTask("Tbosstafalse")<2)then
	if(LuaQueryTask("Tbosstaanswer")<9)then
		LuaSay("恶魔看守：呜呜~ ~ ~你答错了，答错2道题后挑战失败！")
		LuaAddTask("Tbosstaanswer",1)	--记录答题数目
		DoTalk("Tbossta")
	else
		if(LuaQueryTask("Tbosstafalse")<2)then
			LuaSetTask("Tbossta",3)
			LuaSetTask("Tbosstafalse",99)
			LuaSetTask("Tbosstaanswer",99)
			LuaSay("恶魔看守：你的智商很高嘛！恭喜你通过了考验！")
			LuaSay("提示：40分钟内消灭掉黑暗魔王")
			AddMenuItem("请选择","")
				AddMenuItem("进入","jingru")
				AddMenuItem("放弃","giveup")
		else
			LuaSay("恶魔守卫：你已答错2道题，考验失败，回去多加练习，明天再来吧！")
			LocalMsg(""..LuaQueryStr("name").."答题未通过，其余队友继续挑战加油啊！")
			LuaSetTask("Tbosstafalse",0)
			LuaSetTask("Tbosstaanswer",0)
			ChangeMap("lu_jkc")
		end
	end
	else
		LuaSay("恶魔守卫：你已答错2道题，考验失败，回去多加练习，明天再来吧！")
		LocalMsg(""..LuaQueryStr("name").."答题未通过，其余队友继续挑战加油啊！")
		LuaSetTask("Tbosstafalse",0)
		LuaSetTask("Tbosstaanswer",0)
		ChangeMap("lu_jkc")
	end
	UpdateMenu()

elseif(answer=="T")then
	if(LuaQueryTask("Tbosstaanswer")<9)then
		LuaSay("恶魔看守：这道题太简单了，我再问你一道题。")
		LuaAddTask("Tbosstaanswer",1)	--记录答题数目
		DoTalk("Tbossta")
	else
		if(LuaQueryTask("Tbosstafalse")<2)then
			LuaSetTask("Tbossta",3)
			LuaSetTask("Tbosstafalse",99)
			LuaSetTask("Tbosstaanswer",99)
			LuaSay("恶魔看守：你的智商很高嘛！恭喜你通过了考验！")
			LuaSay("提示：40分钟内消灭掉黑暗魔王")
			AddMenuItem("请选择","")
				AddMenuItem("进入","jingru")
				AddMenuItem("放弃","giveup")
		else
			LuaSetTask("Tbosstafalse",0)
			LuaSetTask("Tbosstaanswer",0)
			ChangeMap("lu_jkc")
		end
	end
	UpdateMenu()

elseif(answer=="jingru")then
	ChangeMap("lu_tongtiantasi")
elseif(answer=="giveup")then
	LuaSay("恶魔看守：马上就是最后一关了，好好考虑考虑吧！")
----------------------
end 
LuaSendMenu()
return 1
end 
