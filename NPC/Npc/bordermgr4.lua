NPCINFO = {
serial="193" ,
base_name="bordermgr4",
icon= 2569,
NpcMove=2569,
name= "边境管理员（阿四）" , 
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
	if(LuaQueryTask("Tdst")==0) then
		AddTopSayMenuItem("@3大舌头","Tdst")
		havetask=1
	end
	if(LuaQueryTask("Tdst")==1) then
		AddTopSayMenuItem("@2大舌头","Tdst")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2赶火车","Tghc")
		havetask=2
	end
	AddTopSayMenuItem("国家说明","countrysm")
    return 1
elseif(answer=="test") then
LuaGive("o_mix_book029",1,"test")



--------------------------------------------------------------------------------------------------------------------
elseif(answer=="Tdst") then-------参考活动使者   真心话大冒险
	local level= LuaQuery("level")
	local shijiancha=(GetCurrentTime() - LuaQueryTask("dsttime"))
	if(shijiancha>=1800 or shijiancha==GetCurrentTime()) then-------30分钟能接一次任务或者第一次接任务		
		Tdst=LuaQueryTask("Tdst") 
		DSTsh={
		------说话性别取向(0--男 1--女 2--男女通用) 喊话内容
		{0,"我就爱美女"},
		{1,"我就爱帅哥"},
		{0,"我是帅哥"},
		{1,"我是美女"},
		{0,"听说我们会来了个美女"},
		{2,"我想找个人结婚哇"},
		{2,"神啊赐个情人吧"},
		{2,"边境是用来做PK和做任务的"},
		{2,"我今天要在边境杀100个人"},
		{2,"边境不是用来挂机的"},
		{2,"我专杀在边境挂机的"},
		{2,"听说边境的怪物爆率高"},
		{2,"爱玩统一"},
		{2,"边境任务奖励还行"},
		{2,"边境任务真简单"},
		{2,"外国人回国找边境小五"},
		{2,"谁找不到回国谁是傻蛋"},
		{2,"边境PK没惩罚哇"},
		{2,"欢迎外国人来边境PK"},
		{2,"我天天在边境呆着"},
		{2,"不服的来边境PK"},
		{2,"边境五兄弟怎么会一模一样"},
		{2,"做个好孩纸"},
		{2,"统一是我唯一赚到钱的游戏"},
		{2,"谁说统一不好我跟谁急"},
		{2,"这游戏不花钱也玩的爽"},
		{2,"先花点钱才能赚更多元宝"},
		{2,"我偶尔充值装回大爷"},
		{2,"战士最强"},
		{2,"侠客最牛"},
		{2,"谋士最厉害"},
		}
		if(LuaQueryTask("Tdst")==0)   then
			local r=LuaRandom(31)+1-----随机哪句话
			LuaSetTask("DST_R",r)
			local DST_R=LuaQueryTask("DST_R")
			if(LuaQueryStr("gender")=="男性") then    ------当男玩家随机到话的内容是女玩家说的
				if(DSTsh[DST_R][1]==1)then     -----------数组第一个参数，0为只能男说，1为只能女说的话，2为男女适用。
					DST_R=DST_R+1
					--LuaSay("阿二：DST_R的值为："..DST_R.."")
					LuaSetTask("DST_R",DST_R)
				end
			end	
			if(LuaQueryStr("gender")=="女性") then    ------当女玩家随机到话的内容是男玩家说的
				if(DSTsh[DST_R][1]==0)then     -----------数组第一个参数，0为只能男说，1为只能女说的话，2为男女适用。
					DST_R=DST_R+1
					--LuaSay("阿二：DST_R的值为："..DST_R.."")
					LuaSetTask("DST_R",DST_R)
				end
			end
			DST_R=LuaQueryTask("DST_R")
			LuaSay("阿二：边境人烟稀少，为了能让边境活跃一点，我可谓绞尽脑汁啊。")
			LuaSay("阿二：只有你在@1公聊@0频道说一句：@5"..DSTsh[DST_R][2].."@0（注意@2无任何符号，凡英文字母全为大写@0），就能领奖！")
			LuaSetTask("Tdst",1)
			UpdateMenu()
 		elseif(LuaQueryTask("Tdst")==1)  then
			local DST_R=LuaQueryTask("DST_R")
 			if(LuaQueryTempStr("last_world_msg")==DSTsh[DST_R][2])then
				LuaSay("阿二：每天笑口常开，有益身心健康！")
				local jinyan
				if(LuaQuery("level")<=10) then  --小于10级
					jinyan=level*150+level*level*15
				elseif(LuaQuery("level")<=20) then  --10-20
					jinyan=level*600+level*level*15
				elseif(LuaQuery("level")<=30) then	--20-30
					jinyan=level*1200+level*level*15
				elseif(LuaQuery("level")<=60) then	--30-60
					jinyan=level*2300+level*level*15
				else
					jinyan=level*2000+level*level*15
				end
				LuaAddJx("combat_exp",jinyan,"Tdst")
				local x=LuaRandom(10)---随机性物品
				if(x==0) then
					LuaGive("coin",100,"Tdst")
				elseif(x==1) then
					LuaGive("coin",200,"Tdst")
				elseif(x==2) then
					LuaGive("coin",300,"Tdst")
				elseif(x==3) then
					LuaGive("coin",400,"Tdst")
				end
				local time=GetCurrentTime()
				LuaSetTask("dsttime",time)
				LuaDelTask("Tdst")
				UpdateMenu()
			else
				LuaSay("阿二：@2你说错了或者还没说@0！只有在@1公聊@0频道，说一句：@5"..DSTsh[DST_R][2].."@0（注意@2无任何符号，凡英文字母全为大写@0）！")
				LuaSay("阿二：按@1两次0键@0就能进入聊天频道，@1上下移动@0就能选择发送的频道，并按@1确定键@0确定选择频道！")
				UpdateMenu()
			end
 	    end
    else
        LuaSay("阿二：@2此任务需30分钟才能接取一次@0.")
		local q=floor(shijiancha/60)-----分钟
		local s=shijiancha-q*60
		LuaSay("阿三：现在才过了@2"..q.."分钟"..s.."秒@0，等满@230分钟@0再来接这个任务吧！")
	end
	
-------------------------------------
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs2")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs3")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs5")-----使玩家能点其他NPC
		if(LuaQueryTask("Tghc_fs4")==0) then ------防止连续点同一个NPC刷
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
			LuaSay("阿四："..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==4 or LuaQueryTask("Tghc_dccs")>=5) then ---点对NP或者点错NPC>=5次
				local b=LuaRandom(4)+9
				LuaSay("阿四："..sh[b][1].."")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Tghcjl")
			else    -------点错NPC
				LuaAddTask("Tghc_dccs",1)----点错次数+1
				local m=LuaRandom(5)+1 -----随机正确的NPC   ---1->老1  2->老2`````
				LuaSetTask("Tghc_sj",m) ----方便其他npc读出m值
				LuaSetTask("Tghc_fs4",1)-----点过一次此NPC
				local c=LuaRandom(5)+4
				LuaSay("阿四："..sh[c][1].."")
				LuaSay("阿四：接受处罚吧，哈哈！！")
				local n=LuaRandom(3)---扣多少铜
				if(n==0) then
					LuaGive("coin",-130,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-180,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-230,"Tghc")
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
				LuaSay("阿四：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
			end
		elseif(LuaQueryTask("Tghc_fs4")==1) then ------防止连续点同一个NPC刷
			LuaSay("阿四：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
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
		local cion
		if(LuaQueryTask("Tghc_dccs")==0) then-----第一次就点对NPC
			cion=1500
		else
			cion=LuaQueryTask("Tghc_dccs")*270----给铜数->和点错NPC扣铜数挂钩
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
local level= LuaQuery("level")
  LuaSay("边境管理员：客官，我们会根据你当前的等级我们将会送你到本国地图去。")
   AddMenuItem("选择进入的地图","")
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
