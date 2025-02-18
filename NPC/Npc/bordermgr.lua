NPCINFO = {
serial="160" ,
base_name="bordermgr",
icon= 2569,
NpcMove=2569,
name= "边境管理员（小五）" , 
iconaddr=1,
butt="10|10|64",
lastsay="可在我这里进入其他国家领地",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7边关操作","")
	AddTopSayMenuItem("@3进入该国地图","incounty")
        AddTopSayMenuItem("@3在线出国","Tcs")
	AddTopSayMenuItem("@3加入该国国籍","joincountry")
		if(level>=35)then
        AddTopSayMenuItem("@3入侵该国(20:00-21:00)","gjbwz")
        else
        AddTopSayMenuItem("@3入侵该国(20:00-21:00)","gjbwz_no")
        end
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3回国指南","milu")
	end
	AddTopSayMenuItem("@7土胚变金砖","Thgz")
	if(LuaQueryTask("Txxwc")==0) then
		AddTopSayMenuItem("@3心系王城","Txxwc")
		havetask=1
	end
	if(LuaQueryTask("Txxwc")==1 or LuaQueryTask("Txxwc")==2) then
		AddTopSayMenuItem("@2心系王城","Txxwc")
		havetask=2
	end
	if(LuaQueryTask("Tghc")==1) then
		AddTopSayMenuItem("@2赶火车","Tghc")
		havetask=2
	end
	AddTopSayMenuItem("国家说明","countrysm")
    return 1



--------------------------------------------------------------------------------------------------------------------
---------------------------土胚变金砖
elseif(answer=="Thgz") then
	if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
		if(LuaQueryTask("Thgz")==0) then
			if(LuaItemStatusNormalCount("o_mission514")>=1) then-----------有土胚
				LuaSay("小五：英雄拿到@2金砖土胚了@0，离成功只有一步了：@3土胚变金砖@0。")
				LuaSay("小五：想要让@2金砖土胚变成金砖@0@3需要1500铜币@0，知道方法的只有我一个人哦!(转化成金砖可是有2w拿的哦)")
				AddMenuItem("@7选择列表","")
				AddMenuItem("@3我出钱买消息","Tyes")
				AddMenuItem("太贵了，不选择","Tno")
			elseif(LuaItemStatusNormalCount("o_mission214")>=1) then-----------有土胚
				LuaSay("小五：你身上已经有@2金砖@0了，可以在我这里接受任务@3心系王城@0任务给金砖附魔领取奖励后再会本国上缴！")
				LuaSay("小五：也可以直接回@4本国洛阳城@0@4国家库房总管@0处上缴。")
			elseif(LuaItemStatusNormalCount("o_mission214")<1 and LuaItemStatusNormalCount("o_mission514")<1) then
				LuaSay("小五：你身上既@3没有金砖@0也@2没有金砖土胚@0，到@4外国的洛阳城@0@2国家库房总管@0处@7挖墙脚@0偷回一块@2金砖土胚@0再来找我！")
			end
		elseif(LuaQueryTask("Thgz")==1) then
			 tS_skill={  --杀怪
					{1,"幼貂","task_kill/mon_008/Thgz_1",40},----level<=15
					{2,"幼貂","task_kill/mon_008/Thgz_2",50},----level<=22
					{3,"愚民","task_kill/mon_020/Thgz_3",40},----level<=28
					{4,"氐族哨兵","task_kill/mon_025/Thgz_4",40},----level<=35
					{5,"竹叶妖","task_kill/mon_030/Thgz_5",40},----level<=40
					{6,"竹叶妖","task_kill/mon_030/Thgz_6",50},----level>40
					}
			if(LuaItemStatusNormalCount("o_mission514")>=1) then
				local t=LuaQueryTask("hgz_dj")
				if(LuaQueryTask(tS_skill[t][3])>=tS_skill[t][4]+1) then-----已经杀完了
					LuaSay("小五：恭喜你吸取能量让@2金砖土胚变成了金砖@0。")
					DelItem("o_mission514",1,"Thgz")--------删除道具
					LuaGive("o_mission214",1,"Thgz")
					LuaDelTask(tS_skill[t][3])---删除杀怪计数器
					LuaDelTask("hgz_dj")
					LuaDelTask("Thgz")
				else----未杀完
					local t=LuaQueryTask("hgz_dj")
					local m=tS_skill[t][4]----总的要杀
					local n=LuaQueryTask(tS_skill[t][3])-1----实际杀了
					if(n==-1) then------容错判断   未成功开启杀怪计数器	  计数器为0
						LuaSay("小五：啊，英雄，实在不好意思，刚才师父急着召见我，也不知道你杀了多少怪，要不你@2重新再来一次@0吧！")
						local t
						if(LuaQuery("level")<=15) then
							t=1
						elseif(LuaQuery("level")<=22) then
							t=2
						elseif(LuaQuery("level")<=28) then
							t=3
						elseif(LuaQuery("level")<=35) then
							t=4
						elseif(LuaQuery("level")<=40) then
							t=5
						else
							t=6
						end
						LuaSetTask(tS_skill[t][3],1)-------开启杀怪计数器
					else
						LuaSay("小五：你才击杀了@6"..n.."@0个@2"..tS_skill[t][2].."@0，接着到边境击杀@6"..(m-n).."@0个@2"..tS_skill[t][2].."@0再来找我吧！")
					end
				end
			else------身上没金砖土胚了  被人爆了
				local t=LuaQueryTask("hgz_dj")
				LuaSay("小五：你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0再来找我！")
				LuaDelTask(tS_skill[t][3])---删除杀怪计数器
				LuaDelTask("hgz_dj")
				LuaDelTask("Thgz")
			end
		end
	else
		LuaSay("小五：金砖变土胚任务只能在@2外国进行@0，去外国做任务吧")
	end

elseif(answer=="Tyes") then
	if(LuaItemCount("coin")>=1500) then
		LuaSay("小五：我师父是追求仙道的世外高人，我曾经跟我师父学了些茅山道术.")
		LuaSay("小五：自从王城内金砖变成土胚后，我夜观星象，发现@2金砖@0能量都散于@4边境@0@2怪物@0身上。")
		local tS_skill={  --杀怪
			{1,"幼貂","task_kill/mon_008/Thgz_1",40},----level<=15
			{2,"幼貂","task_kill/mon_008/Thgz_2",50},----level<=22
			{3,"愚民","task_kill/mon_020/Thgz_3",40},----level<=28
			{4,"氐族哨兵","task_kill/mon_025/Thgz_4",40},----level<=35
			{5,"竹叶妖","task_kill/mon_030/Thgz_5",40},----level<=40
			{6,"竹叶妖","task_kill/mon_030/Thgz_6",50},----level>40
			}
		local t
		if(LuaQuery("level")<=15) then
			t=1
		elseif(LuaQuery("level")<=22) then
			t=2
		elseif(LuaQuery("level")<=28) then
			t=3
		elseif(LuaQuery("level")<=35) then
			t=4
		elseif(LuaQuery("level")<=40) then
			t=5
		else
			t=6
		end
		LuaSetTask("hgz_dj",t)-----方便下面读出t
		local t=LuaQueryTask("hgz_dj")
		LuaSay("小五：既然你出了1500铜币，我就告诉你转化方法：到@4边境@0击杀@6"..tS_skill[t][4].."@0个@2"..tS_skill[t][2].."@0吸取能量让@2金砖土胚@0转化为@2金砖@0吧！")
		LuaNotice("猥琐的"..LuaQueryStr("name").."在王城内挖走@2金砖土胚@0一块，目前正在@2"..GeGJMC().."国边境@0杀怪，大家快去击杀他暴金砖土胚吧！")
		LuaGive("coin",-1500,"Thgz")
		LuaSetTask(tS_skill[t][3],1)-------开启杀怪计数器
		LuaSetTask("Thgz",1)
	elseif(LuaItemCount("coin")<1500) then
		LuaSay("小五：你身上没有1500铜币，想浑水摸鱼，休想。")
	end
elseif(answer=="Tno") then
	LuaSay("小五：看你相貌堂堂，一块金砖上缴到王城就能换取@22w铜币+海量经验@0，咋这点账就算不过来呢！")



---------------------------心系王城
elseif(answer=="Txxwc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Txxwc")==0) then
		local shijiancha2=(GetCurrentTime() - LuaQueryTask("xxwctime2"))
		if(shijiancha2>=600 or shijiancha2==GetCurrentTime()) then-------10分钟能接一次任务或者第一次接任务
			LuaSay("小五：欢迎来到边境，听说进入别国就能@2偷砖@0为自己国家建设王城.")
			LuaSay("小五：我也想为自己的国家建设尽上一份力，我从小学习一种符文能够抵御妖魔，但是需要@2金砖@0作为载体。")
			LuaSay("小五：现在你需要@2一块金砖@0(金砖来源：一，杀有金砖之人。二，到@5外国偷金砖胚子@0后@2来我这里@0告诉你变成金砖的方法)，我为金砖加上一道抗魔符文镇守王城。")
			LuaSetTask("Txxwc",1)
			UpdateMenu()
		else
			LuaSay("阿大：@2此任务需10分钟才能接取一次@0.")
			local q=floor(shijiancha2/60)-----分钟
			local s=shijiancha2-q*60
			LuaSay("阿大：现在才过了@2"..q.."分钟"..s.."秒@0，等满@210分钟@0再来接这个任务吧！")
		end
	elseif(LuaQueryTask("Txxwc")==1) then
		if(LuaItemCount("o_mission214")>=1) then----身上有金砖
			LuaSay("小五：我现在就为金砖附上一道抗魔符文，金砖就放英雄身上即可。")
			LuaSay("小五：这个过程@4需要10分钟@0，请英雄10分钟后来我这领取奖励，以表英雄对国家所作出的努力。")
			LuaSay("小五：如果英雄闲的无聊，可以到我的四位大哥那看看有没有任务，@4记住10分钟来我这领奖，金砖千万别被人爆了@0，附魔失败自然没奖励了！")
			LuaNotice("@4"..LuaQueryStr("name").."@0身上有@2金砖@0，目前正在@4边境@0，大家快来爆他@2金砖@0啊！")
			local time=GetCurrentTime()
			LuaSetTask("xxwctime1",time)
			LuaSetTask("Txxwc",2)
			UpdateMenu()
		elseif(LuaItemCount("o_mission514")>=1) then----身上有金砖土胚
			LuaSay("小五：你身上只有@2金砖土胚@0，@2先完成任务@0@7土胚变金砖@0再接这个任务吧！")
		else
			LuaSay("小五：@4你身上没有金砖@0，去外国偷取@2金砖土胚@0转化成@2金砖@0再来我这吧！")
		end
	elseif(LuaQueryTask("Txxwc")==2) then
		if(LuaItemCount("o_mission214")>=1) then----身上有金砖,没有被其他人爆了
			local shijiancha1=(GetCurrentTime() - LuaQueryTask("xxwctime1"))
			if(shijiancha1>=600) then
				LuaSay("小五：国家有你这样的人实乃大幸啊！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Txxwcjl")
			else
				LuaSay("小五：@210分钟@0还没过，我正在为金砖附魔，再过会再来吧！")
			end
		else
			LuaSay("小五：你身上的@2金砖被人爆了@0，金砖附魔失败，自然不能领奖了，从头来过吧。")
			LuaDelTask("xxwctime1")
			LuaDelTask("Txxwc")
			UpdateMenu()
		end
	end
elseif(answer=="Txxwcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Txxwc")==2) then
		if(LuaItemCount("o_mission214")>=1) then
			local time=GetCurrentTime()
			LuaSetTask("xxwctime2",time)
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
					LuaAddJx("combat_exp",jinyan,"Txxwc")
				local x=LuaRandom(10)---随机性物品
		if(x==0) then
			LuaGive("coin",300,"Txxwc")
		elseif(x==1) then
			LuaGive("coin",400,"Txxwc")
		elseif(x==2) then
			LuaGive("coin",500,"Txxwc")
		elseif(x==3) then
			LuaGive("coin",700,"Txxwc")
		end
			LuaDelTask("xxwctime1")
			LuaDelTask("Txxwc")
			UpdateMenu()
		end
	end
---------------------------赶火车
elseif(answer=="Tghc") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc_fs1")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs2")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs3")-----使玩家能点其他NPC
		LuaDelTask("Tghc_fs4")-----使玩家能点其他NPC
		if(LuaQueryTask("Tghc_fs5")==0) then ------防止连续点同一个NPC刷
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
			LuaSay("小五："..sh[a][1].."")
			if(LuaQueryTask("Tghc_sj")==5 or LuaQueryTask("Tghc_dccs")>=5) then ---点对NP或者点错NPC>=5次
				local b=LuaRandom(4)+9
				LuaSay("小五："..sh[b][1].."")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","Tghcjl")
			else    -------点错NPC
				LuaAddTask("Tghc_dccs",1)----点错次数+1
				local m=LuaRandom(5)+1 -----随机正确的NPC   ---1->老1  2->老2``
				LuaSetTask("Tghc_sj",m) ----方便其他npc读出m值
				LuaSetTask("Tghc_fs5",1)-----点过一次此NPC
				local c=LuaRandom(5)+4
				LuaSay("小五："..sh[c][1].."")
				LuaSay("小五：接受处罚吧，哈哈！！")
				local n=LuaRandom(3)---扣多少铜
				if(n==0) then
					LuaGive("coin",-100,"Tghc")
				elseif(n==1) then
					LuaGive("coin",-150,"Tghc")
				elseif(n==2) then
					LuaGive("coin",-200,"Tghc")
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
				LuaSay("小五：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
				LuaSay("小五：悄悄的告诉你，我们兄弟五个当中，@2老大老二@0是最喜欢钱的，@2你找错了处罚也是最高的@0，所以以后常往我这跑跑。")
			end
		elseif(LuaQueryTask("Tghc_fs5")==1) then ------防止连续点同一个NPC刷
			LuaSay("小五：快去@2我的其他四个兄弟@0那找那块@2家传宝玉@0吧！")
		end
	end      

elseif(answer=="Tghcjl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tghc")==1) then
		LuaDelTask("Tghc")
		local time=GetCurrentTime()
		LuaSetTask("ghctime",time)
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
			cion=LuaQueryTask("Tghc_dccs")*230----给铜数->和点错NPC扣铜数挂钩
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



	
elseif(answer=="incounty") then
local level= LuaQuery("level")
  LuaSay("客官，我们会根据你当前的等级我们将会送你到比较安全的地图去。你确定进入该国家吗？")
   AddMenuItem("选择进入的地图","")
      if(0<level and level<=10 )then
          AddMenuItem("桃源","changqmk")
      elseif(10<level and level <=40)then    
         AddMenuItem("建康城东郊","wds")
          elseif(40<level  )then
          AddMenuItem("洛城废墟","jgd") 	  
      end

   elseif(answer=="changqmk") then
    ChangeMap("lu_changqmk")
   elseif(answer=="wds") then
    ChangeMap("lu_jkdj")
     elseif(answer=="jgd") then
    ChangeMap("lu_jgd")
   
elseif(answer=="Tcs") then
	if(LuaItemCount("o_tgws") >=1) then
			LuaSay("边境管理员：欢迎乘坐时空穿梭机！")
			ChangeServer()
	else
		LuaSay("边境管理员：你身上@2无通关文书@0，不能在线出国，现在有@4两种选择@0：")
		LuaSay("边境管理员：一：花费@220个通宝@0(@7商城-元宝-其他@0中购买)换取一张@1永久@0的@2通宝文书@0再进行在线换国。")
		LuaSay("边境管理员：二：花费@23000铜币@0乘坐@2一次性@0的时光穿梭机，进行@2在线换国@0.")
		AddMenuItem("@7选择列表","")
		AddMenuItem("@520通宝换取一张通关文书","Thq")
		AddMenuItem("@53000铜币乘坐一次性的","Tyq")
		AddMenuItem("放弃","Tbhg")
	end
elseif(answer=="Thq")then
	if(LuaItemCount("o_gold1y") >=20) then 
		DelItem("o_gold1y",20)
		LuaGive("o_tgws",1)
		DoTalk("Tcs")
	else
		LuaSay("边境管理员：你没有足够的@9通宝@0，请到@2商城-元宝-其他@0中购买@220个通宝@0再来我这换取吧！")
	end
elseif(answer=="Tyq")then
	if(LuaItemCount("coin")>=3000) then
		LuaSay("边境管理员：欢迎乘坐时空穿梭机！")
		LuaGive("coin",-3000,"Tcs")
		ChangeServer()
	else
		LuaSay("边境管理员：你身上没有@23000铜币@0，不能在线换国，时空穿梭机的维修费可是很高的。")
	end
elseif(answer=="Tbhg")then
		LuaSay("不选择@2在线换国@0，要进入他国，必须@2下线-->选择国家-->再上线@0，才能到其他国家，你不觉得麻烦么？看你相貌堂堂，咋这点账就算不过来呢！")
elseif(answer=="joincountry") then 
    if(LuaQuery("partyid") == 0)then
       JoinInCountry()
       else 
       LuaSay("要加入本国家条件是：@21：外国人，2：无帮派人士@0，3:帅哥或美女，虽然你符合第三项，但你有已经有帮派或国籍了，本官也不敢枉法收你。")
       LuaSay("若你@2有国籍或帮派@0还想加入本国。请到@2你原来的国家@0找@4晋帝@0办理下@2叛国或退出帮派手续@0，下官将在此恭候你")
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
		LuaSay("你可以通过我这里进入@2本国相应等级的地图@0,如果你@430级以上@0的话，还可以@2直接从最右边切图进入洛阳城@0。")
		LuaSay("我这里提供了外国人的一切操作，包括@3进入该国地图@0，@3在线出国@0，@3加入该国国籍@0，@3入侵该国@0(21:00-22:00).")
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
	LuaSay("@2每晚20点-21点@0可以到@4我（边境管理员（小五）)这里@0申请@3入侵该国家@0！还可以@2直接去洛阳偷该国砖回国@0换铜币奖励！金砖可以换取大量铜币！手头紧的话可以去试试！")
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
 elseif(answer=="gjbwz")then
	if(GetCurrentHour()==20) then----20点到20：30点
		if(LuaQueryTask("Ac14")==0)then
			LuaSay("统一的勇士，欢迎您来参加传说中灰常给力的国战杀人活动，这里非您莫属")
			LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
			LuaSetTask("Ac14",99)
		end
		GetInCountryProtectFightMap("lu_gzdt_01")
	else 
		LuaSay("边境管理员：现在还没到@2国家保卫战@0时间，请@220:00~21:00@0再来把！")
	end
 elseif(answer=="gjbwz_no")then
 	LuaSay("提示：需要35级以上才能参加国战！")
end 
LuaSendMenu()
return 1
end
