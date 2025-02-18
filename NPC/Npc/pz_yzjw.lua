NPCINFO = {
serial="130" ,
base_name="pz_yzjw",
icon=2518,
NpcMove=2518,
name="拓跋烈" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="为了北魏的统一大业",
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
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T800")==0 and level>=61 and level<63) then
		AddTopSayMenuItem("平息兵乱【循环】","T800")
		havetask1=1
	end
	if(LuaQueryTask("T801")==0 and level>=63 and level<=65) then
		AddTopSayMenuItem("储备粮食【循环】","T801")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T800")==1)then
		AddTopSayMenuItem("@2平息兵乱【循环】","T800")
		havetask4 =1
	end
	if(LuaQueryTask("T801")==1)then
		AddTopSayMenuItem("@2储备粮食【循环】","T801")
		havetask4 =1
	end
	if(LuaQueryTask("T802")==1)then
		AddTopSayMenuItem("@2神秘卷轴任务","T802")
		havetask4 =1
	end   
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end	
-------------------------------------------------------------------------
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
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("拓跋烈：统一天下的必然是我北魏皇朝。")
		
--------------------------------------------------------------------神秘卷轴任务
elseif(answer== "T802")then
	if(LuaQueryTask("T802c")==1)then
		local coldata1={Ycrwjz(LuaQueryTask("shuzu"))}
		LuaSay("@2"..coldata1[2].."@0")	
		LuaSay("答案就是：@1"..coldata1[3].."@0，没想到吧！@)")	
		local level=LuaQuery("level")
		if(level>80)then
		level=80
	end
		local jingyan=244176+level^2*20
			LuaAddJx("combat_exp",jingyan,"T802")
			LuaSetTask("T802",0)
			LuaSetTask("T802c",0)
			DelLog("802")
			LuaDelTask("shuzu")
			DelItem("o_ycrwjz",1)
			LuaSay("卷轴忽然化作一道青烟消失了.....")
	else
		LuaSay("拓跋烈：老夫愚昧，也不知道答案！你去问问契丹族长和耶律雄才他们二位吧！")

	end
	UpdateMenu()
--------------------------------------------------------------------------消灭【循环】
elseif(answer== "T800") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("800day")~=GetCurrentDay())then
		LuaDelTask("T800num")
	end
		if(LuaQueryTask("T800")==0) then
			LuaSay("拓跋烈: 军中缺粮已经有士兵开始闹腾了，你速去@3干掉30个鲜卑蛮兵@0，杀一儆百，完成后回复。")
			LuaSetTask("T800",1)
			LuaAddTask("T800num",1)
			LuaSetTask("800day",GetCurrentDay())
			LuaSetTask("task_kill/mon_050/T800",1)
			UpdateTopSay("杀30个鲜卑蛮兵")
			AddLog("平息兵乱【循环】",800)
   			UpdateMenu()
		elseif(LuaQueryTask("T800")==1)then
			if(LuaQueryTask("task_kill/mon_050/T800")>=31) then
				LuaSay(LuaQueryStr("name").."：@330个鲜卑蛮兵@0已被我消灭！")
				LuaSay("拓跋烈:哈哈~...果然是年少有为！干得不错！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T800jl")
			else
				LuaSay("拓跋烈:你还没有杀够@4云中城郊外@0的@330个鲜卑蛮兵@0哦！")
				UpdateTopSay("杀够30个鲜卑蛮兵再来找我吧")
			end
		end

elseif(answer=="T800jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T800")==1) then
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
			LuaDelTask("T800")
			DelLog("800")
			LuaDelTask("task_kill/mon_050/T800")
			if(LuaQueryTask("T800num")<=30)then
				LuaAddJx("combat_exp",174176+level^2*20,"T800")
				LuaGive("coin",money,"T800")
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(174176+level^2*20)/2,"T800")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------收集【循环】
elseif(answer== "T801") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("801day")~=GetCurrentDay())then
		LuaDelTask("T801num")
	end
		if(LuaQueryTask("T801")==0) then
			LuaSay("拓跋烈: 军中缺粮严重，十万火急，你速去消灭龙蝎，取得20块龙蝎肉补充军粮吧！")
			LuaSetTask("T801",1)
			LuaAddTask("T801num",1)
			LuaSetTask("801day",GetCurrentDay())
			UpdateTopSay("杀龙蝎取龙蝎肉")
			AddLog("储备粮食【循环】",801)
   			UpdateMenu()
		elseif(LuaQueryTask("T801")==1)then
			if(LuaItemStatusNormalCount("o_mission420")>=20) then
				LuaSay(LuaQueryStr("name").."：@320块龙蝎肉@0我已取得，不知够不够！")
				LuaSay("拓跋烈:这些物资足以解救燃眉之急，不过要彻底解决物资问题还远远不够啊！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T801jl")
			else
				LuaSay("拓跋烈:你还没有从龙蝎身上取得20块龙蝎肉哦！")
				UpdateTopSay("杀龙蝎取20块龙蝎肉")
			end
		end

elseif(answer=="T801jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T801")==1) then
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
			LuaDelTask("T801")
			DelLog("801")
			DelItem("o_mission420",20)
			if(LuaQueryTask("T801num")<=30)then
				LuaAddJx("combat_exp",185610+level^2*20,"T801")
				LuaGive("coin",money,"T801")
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(185610+level^2*20)/2,"T801")
			end
			UpdateMenu()
	end

end
LuaSendMenu()
return 1
end


function Ycrwjz(collection)
array={}
array[1]={1,"人在不饥渴的时候也需要什么水？","薪水"}
array[2]={2,"有种动物，大小像只猫，长相又像虎，这是什么动物呢？","小老虎"}
array[3]={3,"世界上什么没有标价?","情意"}
array[4]={4,"一个人什么地方能大能小，三个字?","心眼儿"}
array[5]={5,"3个人3天用3桶水，9个人9天用几桶水呢？","9"}
array[6]={6,"永远都没有终结的事是什么呢？","问题"}
array[7]={7,"黑人不必担心什么事儿？","晒黑"}
array[8]={8,"有一种牛皮最容易被戳穿，是什么牛皮呢？","吹牛皮"}
array[9]={9,"什么地方能出生入死？","医院"}
array[10]={10,"世界上任何地方找不到如此便宜的住所是什么地方？","牢房"}
array[11]={11,"什么虎会吓人但不会吃人？","壁虎"}
array[12]={12,"一朵插在牛粪上的鲜花是什么花？","牵牛花"}
array[13]={13,"什么车最不可能发生车祸？","灵车"}
array[14]={14,"除了司机以外，还有谁每天搭公车不必给钱？","售票员"}
array[15]={15,"什么地方物品售价越高，客人越高兴?","当铺"}
array[16]={16,"要形容女孩子好看，说什么话她最高兴?","谎话"}
array[17]={17,"一人一点是什么字?","太"}
array[18]={18,"什么妖怪，大家都不会害怕?","难怪"}
array[19]={19,"仁慈的皇帝却常常灭人九族来惩罚罪犯，为什么?","怕有人伤心"}
array[20]={20,"男生和女生有什么共同点?","都是人"}
array[21]={21,"有一样东西，你不需要它，却又不能不要它，它到底是什么呢?","大便"}
array[22]={22,"五根手指头会少掉两根会变成什么?","残废"}
array[23]={23,"小明跳进河里为何没死?","河里没水"}
array[24]={24,"睡美人最怕什么?","失眠"}
array[25]={25,"世界上最牢固的琴是什么?","钢琴"}
array[26]={26,"只有头却没有身体的牛，叫什么牛?","一头牛"}
array[27]={27,"什么线看得见，抓不着?","光线"}
array[28]={28,"从没见过的爷爷他是什么爷爷?","老天爷"}
array[29]={29,"黑人吃黑的东西叫什么?","黑吃黑"}
array[30]={30,"什么样的光会给人带来痛苦?","耳光"}
if(collection==1)then
	 collection=LuaRandom(30)+1
end
	 str1=array[collection][2]	--问题
	 str2=array[collection][3]	--答案

return  collection,str1,str2
end