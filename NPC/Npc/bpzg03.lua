NPCINFO = { 
serial="172" ,
base_name="bpzg03" ,
icon=2502,
NpcMove=2502,
name="包租公" ,
iconaddr=1 ,
butt="10|15|64" ,
lastsay="施肥还是投毒，这是一个问题！",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local map=MapName()
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T299")==1 or LuaQueryTask("T299")==2)then
		AddTopSayMenuItem("@2承包土地【剧情】","T299")
		havetask=2
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_12")==1 or LuaQueryTask("TfindNPC_12")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_12")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end

	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddTopSayMenuItem("@3承包土地","test1")
		AddTopSayMenuItem("@3管理自己的土地","test2")
		AddTopSayMenuItem("@3获得肥料","test3") 
	end
	AddTopSayMenuItem("@3查看该园排行","test4")
	AddTopSayMenuItem("@3种植园说明","test5")

elseif(answer=="test1")then
	refresh() 
	LuaSetTemp("n1",getland())
	local n1=LuaQueryTemp("n1")
	if(n1<21)then
		LuaSay("第"..n1.."块地没人种你愿意承包不？")
		AddMenuItem("请选择下面","")
		AddMenuItem("承包(1000铜币)","cb")
		AddMenuItem("算了","fq")
	else
		LuaSay("已经没有多余的地供你承包了，你可以破坏他人的农场，让他们破产！")
	end
elseif(answer=="cb")then
	local map=MapName()
	local n1=LuaQueryTemp("n1")
	if(LuaPublicQuery(""..map.."/"..n1.."/gs")==0)then
		if(LuaItemCount("coin") >=1000)then
			LuaPublicSet(""..map.."/"..n1.."/gs",1)
			LuaPublicSetStr(""..map.."/"..n1.."/winid",LuaQueryStr("name"))
			LuaPublicSet(""..map.."/"..n1.."/cbq",100)
			LuaPublicSet(""..map.."/"..n1.."/exp",1000)
			LuaPublicSet(""..map.."/"..n1.."/bh",0)
			LuaPublicSet(""..map.."/"..n1.."/time",GetCurrentTime())
			LuaGive("coin",-1000,"Tzzy")
			--LuaDelTask("o_gold1y",1)
		else
			LuaSay("您的铜币不足！承包土地承包费1000铜，收益多倍金钱！这个不解释！你懂的！")
		end
	else
		LuaSay("该地已经承包完了！")
	end
elseif(answer=="fq")then
	LuaSay("承包后的收益可是相当丰厚的。当你别人的农场承包期到0时，你可以来我这承包那块土地！")   
elseif(answer=="test2")then         --查看自己的土地
	AddMenuItem("请选择下面","")
	AddMenuItem("查看","ck")
	AddMenuItem("请保安","bh")
elseif(answer=="test3")then          --购买肥料 金砖可以换
	AddMenuItem("请选择下面","")
	AddMenuItem("购买10肥料(1通宝)","gm1")
	AddMenuItem("购买10肥料送5毒药(1通宝)","gm2")
	AddMenuItem("任务免费换取","rwhd")
     
elseif(answer=="test4")then        --查看排行
	landlist()
elseif(answer=="test5")then   --种植园说明
	if(LuaQueryTask("Tyuanx_qr")==2) then
		if(LuaQueryTask("yuanx_zz")==0) then
		 	if(TeamCount()==2) then
				local mapname=MapName()
				LuaSetTask("yx_mapzz",mapname)
		 		if(LuaQueryStr("id")==TeamQueryStrTask("yuanx_tvid")) then
		 	    		if(TeamQueryStrTask("yx_mapzz")==mapname) then
		 	    	  		local r=LuaRandom(2)
						if(r==1) then
			 	    	  		LuaSay("提示：【浪漫之旅】活动中@5了解【种植园说明】@0任务完成")
			 	    	  		LuaSetTask("yuanx_zz",1)
			 	    	  		LuaAddTask("yuanx_tvnum",1)
			 	    	  		if(LuaQueryTask("yuanx_tvnum")>=4) then
								LuaSetTask("Tyuanx_qr",3)
								LuaSay("采集农场说明，先来我这承包一片土地，记住编号，承包后可以每5分钟采集一次并获得与成长度相等的金钱和额外经验，初始是成长度为1000，你可以通过施肥来增加自己农场的成长度！当然也可以往农场里投毒，降低该农场的承包度与成长度！当一个农场承包期为0时，该农场将被回收！成长度小于0时，该农场不会获得收益！")
  								LuaSay("当然你还可以购买保安，防止外国人来偷你的东西或投毒，保安有很大几率将其他人投入监狱！本国人在本国不能采集其他人的植物，能查看该农场的信息！外国人可以进来采集，施肥和投毒需要在对应的农场内，否则会误伤自己的农场！")
             							LuaSay("提示：你已经完成了【浪漫之旅】，你队友也完成之后，一起回去找活动使者吧")
							end
			 	    	  		LuaSendMenu()
		 	    	        		return 0
		 	    			else
							LuaSay("提示：【浪漫之旅】活动中的@5了解【种植园说明】@0失败，包租包事情比较忙，请稍后再来了解")
							LuaSendMenu()
							return 0
		 	    			end
		 	    		else
		 	    	  		LuaSay("提示：你的队友还没有了解【种植园说明】，督促下他吧")
		 	    	  		LuaSendMenu()
		 	    	  		return 0
					 end
				else
					LuaSay("提示:你的队友不是和你一起报名参加【浪漫之旅】的人，找到和你一起报名的人才可以继续任务")
					LuaSendMenu()
					return 0
				end
			else
				LuaSay("提示：参与【浪漫之旅】活动期间的了解【种植园说明】，必须2人组队")
				LuaSendMenu()
				return 0
			end
		else
	 		LuaSay("提示：【浪漫之旅】活动中@5了解【种植园说明】@0任务已经完成")
	 		LuaSendMenu()
	 		return 0
		end
	elseif(LuaQueryTask("Tyuanx_qr")==1) then
		LuaSay("提示：你还未接取【浪漫之旅】任务")
		LuaSendMenu()
		return 0
	elseif(LuaQueryTask("Tyuanx_qr")==3) then
		LuaSay("提示：你已经完成了【浪漫之旅】，你队友也完成之后，一起回去找活动使者吧")
		LuaSendMenu()
		return 0
	end
	LuaSay("采集农场说明，先来我这承包一片土地，记住编号，承包后可以每10分钟采集一次并获得与成长度相等的金钱和额外经验，初始是成长度为1000，每次采集成功后植物经验值会减半！你可以通过施肥来增加自己农场的成长度！当然也可以往农场里投毒，降低该农场的承包度与成长度！当一个农场承包期为0时，该农场将被回收！成长度小于0时，该农场不会获得收益！")
	LuaSay("当然你还可以购买保安，防止外国人来偷你的东西或投毒，保安有很大几率将其他人投入监狱！本国人在本国不能采集其他人的植物，能查看该农场的信息！外国人可以进来采集，施肥和投毒需要在对应的农场内，否则会误伤自己的农场！")
elseif(answer=="ck")then 
      getmyland()

elseif(answer=="bh")then 
	local map=MapName()
        local winbh=getwinland()
	if(winbh<21)then
		if(LuaItemCount("o_gold1y") >=1)then
			LuaPublicSet(""..map.."/"..winbh.."/bh",1)
			DelItem("o_gold1y",1)
			LuaSay("你成功对第"..winbh.."块地，雇佣了保安，偷东西的可倒霉了！")
		else
			LuaSay("雇保安得花费1通宝，你身上没有通宝")
		end
	else
		LuaSay("你没有需要保安的农场")
	end
 elseif(answer=="gm1")then 
        if(LuaItemCount("o_gold1y") >=1)then
		LuaGive("o_mission215",10,Tcj)  
		DelItem("o_gold1y",1)
	else
		LuaSay("购买肥料得花费1通宝，你身上没有通宝")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("温馨提示：你可以点击菜单再点击@2商店@0键-元宝商城-其他中购买到哦！，有肥料更给力@!")
		else
			LuaSay("温馨提示：你可以通过右键商城-元宝商城-其他中购买到哦！，有肥料更给力@!")
		end
	end
            
elseif(answer=="gm2")then 
	if(LuaItemCount("o_gold1y") >=1)then
		LuaGive("o_mission215",10,Tcj) 
		LuaGive("o_mission216",5,Tcj)  
		DelItem("o_gold1y",1)
        else
		LuaSay("购买买10送5得花费1通宝，你身上没有通宝")


		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("温馨提示：你可以点击菜单再点击@2商店@0键-元宝商城-其他中购买到哦！，有肥料更给力@!")
		else
			LuaSay("温馨提示：你可以通过右键商城-元宝商城-其他中购买到哦！，有肥料更给力@!")
		end
	end
elseif(answer=="rwhd")then 
	if(LuaQueryTask("Tcj")==0)then
		LuaSay("第一次进来进来者，我将送你一些肥料！")
		LuaGive("o_mission215",3,Tcj)
		LuaGive("o_mission216",3,Tcj)
		LuaSetTask("Tcj",99)
	else
		AddMenuItem("做以下任务可免费获得肥料","")
		AddMenuItem("金砖换肥料","nf")
		AddMenuItem("跑天涯","Tpty")
	end
elseif (answer=="Tpty")then
	if(LuaQueryTask("Tpty")==0)then
		LuaSetTask("Tpty",1)
		LuaSay("据说天涯海角的老头囤积了大量肥料毒药！你现在去找他，他一定会给你一两包肥料！")
		AddMenuItem("选择","")
		AddMenuItem("传我去天涯","csty")
		AddMenuItem("我自己跑吧","zjpty")
	else
		LuaSay("到天涯海角找幸运老人,只要心诚即可，就可以得到肥料！")
	end
elseif(answer=="csty")then 
	ChangeMap("lu_tyhj")
elseif(answer=="zjpty")then
	LuaSay("自己跑的话，顺便还可以做千里行商的任务，一举两得！")
    
elseif(answer=="nf")then
	local level= LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tcjday"))then            --
		if(LuaItemStatusNormalCount("o_mission214")>0)then
			if(LuaQueryTask("Tcjtimes")<6)then
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tcj") 
				LuaAddTask("Tcjtimes",1)
				DelItem("o_mission214",1)
				LuaGive("o_mission215",5,Tcj)
				LuaGive("o_mission216",5,Tcj)
			else 
				LuaSay("金砖换肥料也一天只能换5次！你还是明天再来吧！")
			end 
		else
			LuaSay("你身上没有金砖，请注意自己任务背包中")
		end
	else
		LuaSetTask("Tcjday",GetCurrentDay())
		LuaDelTask("Tcjtimes")
		LuaSay("今天去外国的洛阳城国库总管处偷块金砖来给我！我就给你肥料或毒药各一个！")
	end
 -----------------------------------------------------------

--承包土地？
elseif(answer=="T299")then
	if(LuaQueryTask("T299")==1)then
		LuaSay("包租公：你是来了解承包土地的啊，那我给你讲讲，先来我这承包一片土地，记住编号，承包后可以每10分钟采集一次并获得与成长度相等的金钱和额外经验，初始是成长度为1000，每次采集成功后植物经验值会减半！你可以通过施肥来增加自己农场的成长度！当然也可以往农场里投毒，降低该农场的承包度与成长度！当一个农场承包期为0时，该农场将被回收！成长度小于0时，该农场不会获得收益！")
		LuaSay("当然你还可以购买保安，防止外国人来偷你的东西或投毒，保安有很大几率将其他人投入监狱！本国人在本国不能采集其他人的植物，能查看该农场的信息！外国人可以进来采集，施肥和投毒需要在对应的农场内，否则会误伤自己的农场！")
		LuaSetTask("T299",2)
		UpdateMenu()
	elseif(LuaQueryTask("T299")==2)then
		LuaSay("包租公：了解完了透彻了吧。")
		AddMenuItem("@7承包土地","")
		AddMenuItem("了解了","T299yes")
		AddMenuItem("不了解","T299no")
	end
	elseif(answer=="T299yes")then
		LuaSay("包租公：你已经了解承包土地的相关事宜，需要的话随时来找我，建康城一直往右走，就到了我的种植园了，现在回去找司马元显吧!")
	elseif(answer=="T299no")then
		LuaSay("包租公：好吧，我再来给你讲讲，先来我这承包一片土地，记住编号，承包后可以每10分钟采集一次并获得与成长度相等的金钱和额外经验，初始是成长度为1000，每次采集成功后植物经验值会减半！你可以通过施肥来增加自己农场的成长度！当然也可以往农场里投毒，降低该农场的承包度与成长度！当一个农场承包期为0时，该农场将被回收！成长度小于0时，该农场不会获得收益！")
		LuaSay("当然你还可以购买保安，防止外国人来偷你的东西或投毒，保安有很大几率将其他人投入监狱！本国人在本国不能采集其他人的植物，能查看该农场的信息！外国人可以进来采集，施肥和投毒需要在对应的农场内，否则会误伤自己的农场！")




--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_12")==1)then
					LuaSay("包租公：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_12",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_12")==2)then
					LuaSay("包租公：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_12",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("包租公：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("包租公：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end

	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

end 
LuaSendMenu()
return 1
end 
------------------------------------------------------
function getland()
  local n=1
  local map=MapName()
  while (LuaPublicQuery(""..map.."/"..n.."/gs")~=0 )do
          n=n+1
          end
   return n
   end
function getwinland()
local map=MapName()
local n=0
  while (n<22)do
  if(LuaPublicQueryStr(""..map.."/"..n.."/winid")==LuaQueryStr("name") and LuaPublicQuery(""..map.."/"..n.."/bh")==0 )then
     break
    else
          n=n+1
    end
  end
   return n
   end
   
function refresh()
local map=MapName()
 local n2=1
  while (n2<21 )do  
        if(LuaPublicQuery(""..map.."/"..n2.."/cbq")<1)then
        LuaPublicDel(""..map.."/"..n2.."/gs")
        LuaPublicDel(""..map.."/"..n2.."/winid")
	LuaPublicDel(""..map.."/"..n2.."/cbq")
	LuaPublicDel(""..map.."/"..n2.."/exp")
	LuaPublicDel(""..map.."/"..n2.."/bh")
	LuaPublicDel(""..map.."/"..n2.."/time")
	end
	 n2=n2+1
          end
   end
function getmyland()
local map=MapName()
local n=0
while(n<22) do
  if(LuaPublicQueryStr(""..map.."/"..n.."/winid")==LuaQueryStr("name"))then
  LuaSay("你的第"..n.."号地成长情况\n成长度："..LuaPublicQuery(""..map.."/"..n.."/exp").."\n承包期:"..LuaPublicQuery(""..map.."/"..n.."/cbq").."\n保安："..LuaPublicQuery(""..map.."/"..n.."/bh").."")
   end
  n=n+1 
  end
  LuaSay("你没有多余承包地可查看了！")
  return n
  end
function landlist()
   local map=MapName()
   local i=1
   local j=0
   while (i<21)do
   if(LuaPublicQuery(""..map.."/"..j.."/exp")<LuaPublicQuery(""..map.."/"..i.."/exp"))then
   j=i 
   end
    i=i+1
   end
   if(0<j or j<21)then
   LuaSay("目前种植园第一名为第"..j.."块地\n成长度："..LuaPublicQuery(""..map.."/"..j.."/exp").."\n归属："..LuaPublicQueryStr(""..map.."/"..j.."/winid").."")
   else
   LuaSay("当前没有符合的土地")
   end
   return j
  end