NPCINFO = {
serial="191" ,
base_name="bordermgr2",
icon= 2569,
NpcMove=2569,
name= "边境管理员（阿二）" , 
iconaddr=1,
butt="10|10|64",
lastsay="外国人操作找小五！！！！",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3本国人回城","huiguo")
	end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3回国指南","milu")
	end
	if(LuaQueryTask("Twutu")==0 or LuaQueryTask("Twutu")==99) then
		AddTopSayMenuItem("@3玄封五徒【循环】","Twutu")
		havetask=1
	end
	if(LuaQueryTask("Twutu")==1) then
		AddTopSayMenuItem("@2玄封五徒【循环】","Twutu")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2赶火车","Tghc")
		havetask=2
	end
	--if(LuaQueryTask("Tbjxh1")==1) then
	--	AddTopSayMenuItem("@2貂皮大衣【循环】","Tbjxh1")
		--havetask=2
	--end
	AddTopSayMenuItem("国家说明","countrysm")
    return 1
elseif(answer=="test") then
LuaGive("o_mix_book029",1,"test")
	


--------------------------------------------------------------------------------------------------------------------
------玄封五徒【循环】------组队杀怪
elseif(answer=="Twutu") then
local shijiancha=(GetCurrentTime() - LuaQueryTask("wututime"))
if(shijiancha>=1800) then-------30分钟能接一次任务
	tSkill={  --杀怪
		--随机编号  怪物  怪物id  杀怪数量(可以随便改)
		----->以最大人物等级为基准
		{1,"幼貂","task_kill/mon_008/Twutu",60},
		{2,"愚民","task_kill/mon_020/Twutu",70},
		{3,"氐族哨兵","task_kill/mon_025/Twutu",60},
		{4,"竹叶妖","task_kill/mon_030/Twutu",70},
		{5,"竹叶妖","task_kill/mon_030/Twutu",90},
		}
	if(TeamCount()==2)then
		if(LuaQueryStrTask("wutu_dyid")==TeamQueryStr("id")) then
			if(LuaQueryTask("Twutu")==0)then
				if(TeamQueryTask("Twutu")==0 or TeamQueryTask("Twutu")==99)then
					local a=LuaQuery("level")----自己等级
					local b=TeamQuery("level")---队友等级
					local m
					local t
					if(a<b) then ---自己等级小于队友等级 ---> 以队友等级为基准
						t=b
					else 
						t=a   ---队友等级小于自己等级 ---> 以自己等级为基准
					end
					if(t<=18) then
						m=1
					elseif(t<=28) then
						m=2
					elseif(t<=35) then
						 m=3
					elseif(t<=40) then
						m=4
					else
						m=5
					end
					LuaSetTask("wutu_sjbh",m)--------方便队友能读出m值				
					LuaSay("阿二：最近边境不知从哪冒出这么些怪物，饶人清幽。")
					LuaSay("阿二：你和你的队友在@4边境@0一起击杀@3"..tSkill[m][4].."@0个@4"..tSkill[m][2].."@0吧！")
					LuaSay("阿二：你的队友还没接取任务哦，赶快提醒他接任务一同杀怪哦，组队之后杀的怪物才算作两人一起杀的哦@!")
					LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
					LuaSetTask("Twutu",1)
					LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------获取队友id
					LuaSetTask(tSkill[m][3],1)-------开启杀怪计数器						
					UpdateMenu()
				elseif(TeamQueryTask("Twutu")==1)then
					local m=TeamQueryTask("wutu_sjbh")--------读取队友身上的m值
					LuaSetTask("wutu_sjbh",m)-------方便后面读出自身m值
					--LuaSay("m的值为："..m.."")
					LuaSay("阿二：最近边境不知从哪冒出这么些怪物，饶人清幽。")
					LuaSay("阿二：你和你的队友在@4边境@0一起击杀@3"..tSkill[m][4].."@0个@4"..tSkill[m][2].."@0吧！")					
					LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
					LuaSetTask("Twutu",1)	
					LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------获取队友id
					LuaSetTask(tSkill[m][3],1)-------开启杀怪计数器
					UpdateMenu()
				end
			elseif(LuaQueryTask("Twutu")==1)then
				if(TeamQueryTask("Twutu")==0)then-------防止队友未开启杀怪计数器 y=0后显示-1
					LuaSay("阿二：@2你的队友还没有接任务@0，快去叫他接任务吧!")
				elseif(TeamQueryTask("Twutu")==1)then
					local m=LuaQueryTask("wutu_sjbh")--------读取自身m值
					--LuaSay("m的值为："..m.."")
					local x=LuaQueryTask(tSkill[m][3])------自己杀怪计数器----x-1为杀怪数
					local y=TeamQueryTask(tSkill[m][3])-----队友杀怪计数器
					--LuaSay("阿二：x的值为："..x.."")
					--LuaSay("阿二：y的值为："..y.."")
					if(x>=tSkill[m][4]+1 and y>=tSkill[m][4]+1) then
						LuaSay("阿二：我为你能找到一个愿意和你一同奋战的朋友而高兴@!")
						LuaSay("阿二：无兄弟，不统一。")
						AddMenuItem("@7任务完成","")
						AddMenuItem("领取奖励","Twutujl")
					else
						if(x==y) then  ------杀怪过程中未退组  杀怪共享  杀怪数量一样
							LuaSay("阿二：你和你的队友才击杀了@2"..(x-1).."@0个@4"..tSkill[m][2].."@0，杀满@3"..tSkill[m][4].."个@0再来找我吧！")
						else       -----杀怪过程中退组再进组
							if(x>=tSkill[m][4]+1 and y<tSkill[m][4]+1)then
								LuaSay("阿二：你已经杀满了@3"..tSkill[m][4].."@0个@2"..tSkill[m][2].."@0，但是你的队友只击杀了@2"..(y-1).."@0个，赶快去帮助他吧。")
							elseif(x<tSkill[m][4]+1 and y>=tSkill[m][4]+1)then
								LuaSay("阿二：你的队友杀满了@3"..tSkill[m][4].."@0个@2"..tSkill[m][2].."@0，但是你只击杀了@2"..(x-1).."@0个，赶快叫他来帮助你吧。")
							elseif(x<tSkill[m][4]+1 and y<tSkill[m][4]+1)then
								LuaSay("阿二：你和你的队友还没有杀够@2"..tSkill[m][4].."@0个"..tSkill[m][2].."，你才杀了@2"..(x-1).."@0个,你的队友也才杀了@2"..(y-1).."@0个，赶快努力吧！")
							end
						end
					end
				elseif(TeamQueryTask("Twutu")==99)then
					local m=LuaQueryTask("wutu_sjbh")--------读取自身m值
					local x=LuaQueryTask(tSkill[m][3])------自己杀怪计数器----x-1为杀怪数
					if(x>=tSkill[m][4]+1) then
						LuaSay("符坚：我为你能找到一个愿意和你一同奋战的朋友而高兴@!")
						LuaSay("符坚：无兄弟，不统一。")
						AddMenuItem("@7任务完成","")
						AddMenuItem("领取奖励","Twutujl")
					end
				end
			elseif(LuaQueryTask("Twutu")==99)then
				if(TeamQueryTask("Twutu")==1)then-------队友还没有交任务
					local m=TeamQueryTask("wutu_sjbh")--------读取自身m值
					local y=TeamQueryTask(tSkill[m][3])-----队友杀怪计数器
					if(y>=tSkill[m][4]+1) then
						LuaSay("阿二：@2你的队友还没有交任务@0，赶快提醒他交任务领取奖励吧！")
					else
						LuaDelTask("Twutu")
						DoTalk("Twutu")
					end
				elseif(TeamQueryTask("Twutu")==99)then-------队友也交了任务
					LuaSay("阿二：恭喜你和你的队友完成任务，现在是否继续接取@2玄封五徒@0任务？")
					AddMenuItem("@7是否继续进行任务！","")
					AddMenuItem("继续","Yes")
					AddMenuItem("我要去做其他任务了","No")
				end
			end
		else
			LuaSay("阿二：由于你以前和你一起进行@2玄封五徒@0任务的队友@2非现在的队友@0，现在将自动重置此任务，请@2重新接取玄封五徒任务@0。")
			LuaDelTask("Twutu")
			LuaDelTask("wutu_sjbh")
			LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------获取队友id
			UpdateMenu()
		end
	else
		LuaSay("阿二：此任务需要@2两个玩家组队@0才能进行下一步，赶快找个玩家一起组队吧！")
	end
else
	LuaSay("阿二：@2此任务需30分钟才能接取一次@0.")
	local q=floor(shijiancha/60)-----分钟
	local s=shijiancha-q*60
	LuaSay("阿二：现在才过了@2"..q.."分钟"..s.."秒@0，等满@230分钟@0再来接这个任务吧！")
end
elseif(answer=="Yes")then
	LuaDelTask("Twutu")
	LuaSetTask("wutu_dyid",TeamQueryStr("id"))-------获取队友id
	DoTalk("Twutu")
	UpdateMenu()
elseif(answer=="Twutujl")then
	local level= LuaQuery("level")
	if(LuaQueryTask("Twutu")==1 and TeamQueryTask("Twutu")==1)then
		local m=LuaQueryTask("wutu_sjbh")--------读取自身m值
		if(LuaQueryTask(tSkill[m][3])>=tSkill[m][4]+1 and TeamQueryTask(tSkill[m][3])>=tSkill[m][4]+1) then
			local jinyan
			if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*150+level*level*20
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*20
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*20
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2300+level*level*4
					else
						jinyan=level*2800+level*level*4
					end
		end
	elseif(LuaQueryTask("Twutu")==1 and TeamQueryTask("Twutu")==99)then
		local m=LuaQueryTask("wutu_sjbh")--------读取自身m值
		if(LuaQueryTask(tSkill[m][3])>=tSkill[m][4]+1) then
			local jinyan
			if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*150+level*level*20
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*20
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*20
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2300+level*level*4
					else
						jinyan=level*2800+level*level*4
					end
		end
	end
		LuaAddJx("combat_exp",jinyan,"Twutu")
		LuaGive("coin",1200,"Twutu")
		local x=LuaRandom(20)---随机性物品
		if(x==0) then
			LuaGive("o_drug_hp4",5,"Twutu")
		elseif(x==1) then
			LuaGive("o_drug_mp4",5,"Twutu")
		end
		local time=GetCurrentTime()
		LuaSetTask("wututime",time)
		LuaSetTask("Twutu",99)
		local m=LuaQueryTask("wutu_sjbh")
		LuaDelTask(tSkill[m][3],1)---删除杀怪计数器
		LuaDelTask("wutu_sjbh")
		UpdateMenu()

--------貂皮大衣
elseif(answer=="Tbjxh1") then
	if(LuaQueryTask("Tbjxh1")==1) then
		LuaSay(""..LuaQueryStr("name").."：我是应阿大的要求来送貂皮给你的，阿大想让你帮他织貂皮大衣。")
		if(LuaItemCount("o_mission419")>=10) then
			LuaSay("阿二：还是老大了解我，知道我一闲下来就惹事，找点事让我做")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tbjxh1jl")
		else
			LuaSay("阿二：你休要忽悠我，大哥刚飞鸽传信说是@210张貂皮@0，你身上才有@2"..LuaItemCount("o_mission419").."张@0.")
			LuaSay("阿二：在我左边边@2击杀幼貂@0@3收集满10张貂皮@0再来找我吧.")
		end
	end
elseif(answer=="Tbjxh1jl") then
	if(LuaQueryTask("Tbjxh1")==1 and LuaItemCount("o_mission419")>=10) then
		LuaAddJx("combat_exp",45000,"Tbjxh1")
		DelItem("o_mission419",10)
		LuaDelTask("Tbjxh1")
		local x=LuaRandom(5)---随机性物品
		if(x==0) then
			LuaGive("coin",450,"Tbjxh1")
		end
		UpdateMenu()
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
	end

elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs3")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs4")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs5")-----使玩家能点其他NPC
		if(LuaQueryTask("Tghc_fs2")==0) then ------防止连续点同一个NPC刷
			local sh={
				-------第一句话
				{"英雄这么自信宝玉就在我这？"},
				{"多谢英雄这么信任我，感动中..."},
				{"你说玉会不会在我这？..."},
				------点错NPC
				{"哎，你就不能早来点吗，我把玉给传出去了..."},
				{"我拿着宝玉等了很久都不见英雄前来，只好在极度悲伤之中把玉传给了下一个！"},
				{"玉很久都没传到我这了，相信不久就会轮到我了，兴奋中..."},
				{"你运气太差了，玉没在我这，接受处罚吧，哈哈，有钱拿了。"},
				{"是相貌问题还是人品问题，你怎么就认为玉会在我这。"},
				------点对NPC
				{"我正在考虑要不要撒个谎，说玉没在我这，算了吧，会遭雷劈的..."},
				{"人品太好了，我们传这么快都能找对人。"},
				{"运气太好了，我刚说把玉传出去，没惩罚了，有待你遗憾..."},
				{"恭喜，玉在我这，拿奖励吧！"},
				}
			local a=LuaRandom(3)+1 -----随机第一句话
			LuaSay("阿二："..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==2 or LuaQueryTask("Tghc_dccs")>=5) then ---点对NP或者点错NPC>=5次
				local b=LuaRandom(4)+9
				LuaSay("阿二："..sh[b][1].."")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Tghcjl")
			else    -------点错NPC
				LuaAddTask("Tghc_dccs",1)----点错次数+1
				local m=LuaRandom(5)+1 -----随机正确的NPC   ---1->老1  2->老2```
				LuaSetTask("Tghc_sj",m) ----方便其他npc读出m值
				LuaSetTask("Tghc_fs2",1)-----点过一次次NPC
				local c=LuaRandom(5)+4
				LuaSay("阿二："..sh[c][1].."")
				LuaSay("阿二：接受处罚吧，哈哈！！")
				local n=LuaRandom(3)---扣多少铜
				if(n==0) then
					LuaGive("coin",-170,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-120,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-270,"Tghc")
				end
				local jinyan
				if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*20+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*100+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*250+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*400+level*level*4
					else
						jinyan=level*350+level*level*4
					end
				LuaAddJx("combat_exp",jinyan,"Tghc")
				LuaSay("阿二：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
			end
		elseif(LuaQueryTask("Tghc_fs2")==1) then ------防止连续点同一个NPC刷
			LuaSay("阿二：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
		end
	end      
elseif(answer=="Tghcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc")
		local time=GetCurrentTime()
		LuaSetTask("ghctime",time)
		local jinyan
		if(LuaQuery("level")<=10) then  --小于10级
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*400+level*level*4
					else
						jinyan=level*350+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tghc")
		if(LuaQueryTask("Tghc_dccs")==0) then-----第一次就点对NPC
			cion=1500
		else
			cion=LuaQueryTask("Tghc_dccs")*210----给铜数->和点错NPC扣铜数挂钩
		end
		LuaGive("coin",cion,"Tghc")
		local x=LuaRandom(20)---随机性物品
		if(x==0) then
			LuaGive("o_cangbaotu",1,"Tghc")------给藏宝图
		elseif(x==1) then
			LuaGive("coin",572,"Tghc")
		elseif(x==2) then
			LuaGive("o_drug_hp4",5,"Tghc")
		elseif(x==3) then
			LuaGive("o_drug_mp4",5,"Tghc")
		end
		LuaDelTask("Tghc_dccs")
		UpdateMenu()
		UpdateNPCMenu("bordermgr")
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
		UpdateNPCMenu("bordermgr3")
		UpdateNPCMenu("bordermgr4")
	end

elseif(answer=="countrysm") then
	AddMenuItem("@7国家说明","")
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then------外国人
		AddMenuItem("@3回国指南","milu")
	end
	AddMenuItem("@3国家系统介绍","1")
	AddMenuItem("@3国家区别介绍","2")
	AddMenuItem("@3国战介绍","3")
	AddMenuItem("@3通缉令","5")

elseif(answer=="1") then
	LuaSay("@2头上显示的字是国家名字@0，你现在所属的国家是@3"..LuaQueryStr("country").."@0.")
	LuaSay("当你@2等级到20级后@0，进入别的国家将会从边境进入，@2如果想变成该国家的人必须到本国宫殿申请叛国@0，@2外国地图名字都会有个国家名字@0，请注意下自己是否在外国！。")
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then------外国人
		LuaSay("你可以通过@2地图最右边的小五@0进入@2本国相应等级的地图@0,如果你@430级以上@0的话，还可以@2直接从最右边切图进入洛阳城@0。")
		LuaSay("@2地图最右边的小五@0处提供了外国人的一切操作，包括@3进入该国地图@0，@3在线出国@0，@3加入该国国籍@0，@3入侵该国@0(21:00-22:00).")
		LuaSay("@2在其他国家PK他人，你将不会受到惩罚@0，并且在其他国家获取的收益将比自己国家高一点哦@!")
	else
		LuaSay("本国人回城可以在@4边境@0的@2随便哪个NPC身上@0点击@3本国人回城@0就能进入自己国家的地图了.")
		LuaSay("如果你@430级以上@0的话，还可以@2直接从最右边切图进入洛阳城@0。")
		AddMenuItem("选择列表","")
		AddMenuItem("@3本国人回城","huiguo")
	end
elseif(answer=="2") then
	LuaSay("你@2在外国杀人等级差距20内可不会受到PK惩罚@0！@1在外国将不能使用飞世界切图@0，@5无法看到自己寄卖元宝@0，@2无自己帮派信息@0，@2不能加入外国帮派@0")
elseif(answer=="3") then
	LuaSay("@2每晚20点-21点@0可以到@4边境地图右边的小五处@0申请@3入侵该国家@0！还可以@2直接去洛阳偷该国砖回国@0换铜币奖励！金砖可以换取大量铜币！手头紧的话可以去试试！")
	LuaSay("在@2国战@0中获得的@3积分@0可以回去@4宫殿战争使者@0处换取@2威武的称号和金钱@0！但必须@2积分要达到50以上@0！")
elseif(answer=="5") then
	LuaSay("今天暂无通缉的外国人供你杀！")	

elseif(answer=="huiguo") then
  LuaSay("边境管理员：客官，我们会根据你当前的等级我们将会送你到本国地图去。")
   AddMenuItem("选择进入的地图","")
	local level= LuaQuery("level")
      if(0<level and level<=10 )then
          AddMenuItem("桃源","changqmk")
      elseif(10<level and level <=25)then
         AddMenuItem("五斗山","wds")
      elseif(25<level and level<=40  )then
          AddMenuItem("淝水对岸","fsda")
     elseif(40<level  )then
          AddMenuItem("洛城废墟","jgd") 	  
      end
   elseif(answer=="changqmk") then
    ChangeMap("lu_changqmk")
   elseif(answer=="wds") then
    ChangeMap("lu_wds")
   elseif(answer=="fsda") then
    ChangeMap("lu_fsda")
     elseif(answer=="jgd") then
    ChangeMap("lu_jgd")

elseif(answer=="milu")then
	LuaSay("边境管理员：亲，您迷路了吗，我将会给你帮助")
	AddMenuItem("@7窝心列表","")
	AddMenuItem("@3我想回国","back")
	AddMenuItem("@3我还想转转","goon")
	
elseif(answer=="back")then
		LuaSay("你是无意中@4选择错了国家列表@0到我们国家来的吗，不要急。你有@7两种选择方式：@0")		
		LuaSay("一，@3在线换国@0：@2向右走到地图最右边@0，找到@4NPC边境管理员(小五)@0，选择@3在线换国@0-->@2"..LuaQueryStr("country").."@0国（你自己所属国家），就回到本国国边境@0了。")
		LuaSay("二，@3下线再上线@0：选择@2退出游戏@0(@7按取消键再按星号键@0)-->@2正常登陆@0-->选择@3"..LuaQueryStr("country").."@0国，进入游戏就回@2到本国边境@0了。")
		LuaSay("回到本国边境后，在@4边境@0的@2随便哪个NPC身上@0点击@3本国人回城@0就能进入自己国家的地图了，@2本国是可以飞世界的哦@0！")
		LuaSay("如果@2你不知道你自己是属于哪个国家的话，当你在游戏中的时候@2你头顶最上面就是你所属的国家@0，你现在所属国家是@2"..LuaQueryStr("country").."@0国。")
elseif(answer=="goon")then
		LuaSay("你是专程来到我们国家来看看的吗，我代表我们的国民欢迎你。")
		LuaSay("你可以通过@2边境最右边的小五@0进入@2本国相应等级的地图@0,如果你@430级以上@0的话，还可以@2直接从最右边切图进入洛阳城@0。")
		LuaSay("@2地图最右边的小五@0处提供了外国人的一切操作，包括@3进入该国地图@0，@3在线出国@0，@3加入该国国籍@0，@3入侵该国@0(21:00-22:00).")
		LuaSay("@2在其他国家PK他人，你将不会受到惩罚@0，并且在其他国家获取的收益将比自己国家高一点哦@!")
end 
LuaSendMenu()
return 1
end
