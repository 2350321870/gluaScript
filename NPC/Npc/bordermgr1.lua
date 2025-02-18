NPCINFO = {
serial="190" ,
base_name="bordermgr1",
icon= 2569,
NpcMove=2569,
name= "边境管理员（阿大）" , 
iconaddr=1,
butt="10|10|64",
lastsay="外国人进入本国地图请向右边一直走！！！！",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	local Tghc=LuaQueryTask("Tghc")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTempStr("online")=="100" or LuaQueryTempStr("online")=="400")then
	AddTopSayMenuItem("@1[火热]@0@3疯狂70级","Ac41")
	end
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3本国人回城","huiguo")
	end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3回国指南","milu")
	end
	if(LuaQueryTask("Tghc")==0) then
		AddTopSayMenuItem("@3赶火车","Tghc")
		havetask=1
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2赶火车","Tghc")
		havetask=2
	end
	--if(LuaQueryTask("Tbjxh1")==0) then
		--AddTopSayMenuItem("貂皮大衣【循环】","Tbjxh1")
		--havetask=1
	--end
	--if(LuaQueryTask("Tbjxh1")==1) then
		--AddTopSayMenuItem("@2貂皮大衣【循环】","Tbjxh1")
		--havetask=2
	--end
	AddTopSayMenuItem("国家说明","countrysm")
    return 1
elseif(answer=="Ac41") then
	local a = LuaPublicQuery("Max70_Number")
	local level=LuaQuery("level")
		if(LuaQueryTask("Maxcountry")==0)then
			if(level>=70)then
				if(LuaPublicQuery("Max70_Number")<10)then
					if(LuaFreeBag()>=8)then
						local b= LuaPublicQuery("Max70_Number") + 1
						LuaSay("阿大：恭喜你获得本区的第"..b.."个70级的玩家，特此系统给你丰厚的奖励")
						LuaNotice("恭喜玩家@2"..LuaQueryStr("name").."@0为本区第"..b.."位到达@390级@0的玩家，系统给予大量奖励")
						LuaNotice("各大区前十个到达70级的玩家都将获得大量免费奖励，先到先得哦@!")
						LuaPublicAdd("Max70_Number",1)
						LuaGive("o_present021",1,"Maxcountry")		--1级综合材料包
						LuaGive("o_present023",1,"Maxcountry")		--2级综合材料包
						LuaGive("o_present025",1,"Maxcountry")		--3级综合材料包
						LuaGive("o_present027",1,"Maxcountry")		--4级综合材料包
						LuaGive("o_present029",1,"Maxcountry")		--5级综合材料包
						
						LuaGive("o_douyu",300,"Maxcountry")		--斗玉	
						LuaGive("o_longyu",150,"Maxcountry")		--龙玉
						LuaGive("o_lv70taozhuang",1,"Maxcountry")	--70级套装合成书
						LuaGive("coin",500000,"Maxcountry")
						LuaSetTask("Maxcountry",99)
					else
						LuaSay("提示：必须保持8格的背包空间才能领全区前10的奖励哦@!")
					end
				else
					LuaSay("前10个到达70级的玩家才有奖励的哦")
				end
			else
				local a = LuaPublicQuery("Max70_Number")
				if(a==0)then
					LuaSay("阿大：本区还未有70级的玩家")
					LuaSay("阿大：赶快加油哦，每个区前十个到达70级的玩家将会得到丰厚奖励")
					LuaSay("阿大：这其中包括@270级套装合成书@01件、@2300个斗玉@0、@2150个龙玉@0、@21-5级综合材料包@0各一个、@250W铜币@0！")
					LuaSay("阿大：赶快加油升级吧@!")
				elseif(a<10)then	
					LuaSay("阿大：本区现在只有"..a.."位70级的玩家，赶快加油最后的胜利属于您")
					LuaSay("阿大：赶快加油哦，每个区前十个到达70级的玩家将会得到丰厚奖励")
					LuaSay("阿大：这其中包括@270级套装合成书@01件、@2300个斗玉@0、@2150个龙玉@0、@21-5级综合材料包@0各一个、@250W铜币@0！")
					LuaSay("阿大：赶快加油升级吧@!")
				else
					LuaSay("阿大：本大区前10活动已经结束。谢谢您对《统一OL》的支持")
				end
			end
		else
			LuaSay("阿大：你已经参加完了此活动并领取了奖励了哦，祝您游戏愉快！")
		end
--70级奖励
--70级套装合成书1件、300个斗玉、150个龙玉、1-5级综合材料包、50W铜币！
--
--70级系统滚动条
--全国欢庆！XXX，目前已经成为《统一OL》1区第X个70级战神！前10名战神诞生会获得奖励以及系统消息祝福！

--------------------------------------------------------------------------------------------------------------------	
--------貂皮大衣
elseif(answer=="Tbjxh1") then
	if(LuaQueryTask("Tbjxh1")==0) then
		LuaSay("阿大：此任务合适@29-15级玩家@0！")
		LuaSay("阿大：最近边境不知从哪冒出这么些怪物，很不安定。")
		LuaSay("阿大：老二除了武功好外，还会像个女人一样织衣服，所以我想就地取材叫老二帮我织貂皮大衣我来出售。")
		LuaSay("阿大：在我右边@2击杀幼貂@0@3收集十张貂皮@0送给@4阿二@0，他会帮我织貂皮大衣的.")
		LuaSetTask("Tbjxh1",1)
		UpdateMenu()
		UpdateNPCMenu("bordermgr1")
		UpdateNPCMenu("bordermgr2")
	elseif(LuaQueryTask("Tbjxh1")==1) then
		if(LuaItemCount("o_mission419")>=10) then
			LuaSay("阿大：快去把貂皮送给我@2右边不远处的阿二@0吧.")
		else
			LuaSay("阿大：在我右边@2击杀幼貂@0@3收集十张貂皮@0送给@4阿二@0.")
		end
	end

--------- 赶火车
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==0) then
		if(LuaItemCount("coin")>=500) then
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ghctime"))
			if(shijiancha>=1800 or shijiancha==GetCurrentTime()) then-------30分钟能接一次任务或者第一次接任务
				LuaSay("阿大：我们五兄弟自打15岁起就镇守着各国的边疆，我们平时搜刮各国信使得了不少好处，但是有钱没处花啊。")
				LuaSay("阿大：我们五兄弟想了个法子，@2我们五人会不断来回之间传送一块家传宝玉@0，只要英雄你能@2找到这块玉在谁身上@0，我们会把我们非常丰富的积蓄分一点点给你。")
				LuaSay("阿大：但是我们又不想有出没进，所以设了一点点处罚手段，@2如果找错了人会有处罚@0，认真寻找哦@!")
				LuaSay("阿大：@1游@0@2戏@0@3开@0@4始@0！快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
				local m=LuaRandom(5)+1 -----随机正确的NPC   ---1->老1  2->老2```
				LuaSetTask("Tghc_sj",m) ----方便其他npc读出m值
				--LuaSay("m的值是:"..m.."")
				LuaSetTask("Tghc",1)
				LuaSetTask("Tghc_dccs",0)-------点错NPC次数
				UpdateMenu()
				UpdateNPCMenu("bordermgr")
				UpdateNPCMenu("bordermgr1")
				UpdateNPCMenu("bordermgr2")
				UpdateNPCMenu("bordermgr3")
				UpdateNPCMenu("bordermgr4")
			else
				LuaSay("阿大：@2此任务需30分钟才能接取一次@0.")
				local q=floor(shijiancha/60)-----分钟
				local s=shijiancha-q*60
				LuaSay("阿大：现在才过了@2"..q.."分钟"..s.."秒@0，等满@230分钟@0再来接这个任务吧！")
			end
		else
			LuaSay("此任务需要@3500@0铜做甜头。")
		end
	elseif(LuaQueryTask("Tghc")==1) then
		if(LuaQueryTask("Tghc_dccs")==0) then-----还未点过其他NPC
			LuaSay("阿大：游戏开始了，快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧!")
		elseif(LuaQueryTask("Tghc_dccs")>0) then-----点错过其他NPC
			LuaDelTask("Tghc_fs2")-----使玩家能点其他NPC
			LuaDelTask("Tghc_fs3")-----使玩家能点其他NPC
			LuaDelTask("Tghc_fs4")-----使玩家能点其他NPC
			LuaDelTask("Tghc_fs5")-----使玩家能点其他NPC
			if(LuaQueryTask("Tghc_fs1")==0) then ------防止连续点同一个NPC刷
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
				--LuaSay("a的值是:"..a.."")
				LuaSay("阿大："..sh[a][1].."")
				if(LuaQueryTask("Tghc_sj")==1 or LuaQueryTask("Tghc_dccs")>=5) then ---点对NPC或者点错NPC>=5次
					local b=LuaRandom(4)+9
					LuaSay("阿大："..sh[b][1].."")
					AddMenuItem("@7任务完成","")
					AddMenuItem("领取奖励","Tghcjl")
				else    -------点错NPC
					LuaAddTask("Tghc_dccs",1)----点错次数+1
					LuaSetTask("Tghc_fs1",1)-----点过一次此NPC
					local m=LuaRandom(3)+1 -----随机正确的NPC   ---1->老1  2->老2和老4  3->老3和老5
					LuaSetTask("Tghc_sj",m) ----方便其他npc读出m值
					local c=LuaRandom(5)+4
					LuaSay("阿大："..sh[c][1].."")
					LuaSay("阿大：接受处罚吧，哈哈！！")
					local n=LuaRandom(3)---扣多少铜
					if(n==0) then
						LuaGive("coin",-180,"Tghc")
					elseif(n==1) then
						LuaGive("coin",-230,"Tghc")
					elseif(n==2) then
						LuaGive("coin",-280,"Tghc")
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
					LuaSay("阿大：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
				end
			elseif(LuaQueryTask("Tghc_fs2")==1) then ------防止连续点同一个NPC刷
				LuaSay("阿大：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
			end
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
			local cion=1500
		else
			local cion=LuaQueryTask("Tghc_dccs")*200----给铜数->和点错NPC扣铜数挂钩
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
	LuaSay("@2头上显示的字就是国家名字@0，你现在所属的国家是@3"..LuaQueryStr("country").."@0.")
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
