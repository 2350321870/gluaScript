NPCINFO = { 
serial="58" ,
base_name="bpzg02" ,
icon=2567,
NpcMove=2567 ,
name="国家库房总管" ,
iconaddr=1 ,
butt="10|15|62" ,
lastsay="吾皇万岁万岁万万岁！",
LuaType=1,
} 

function do_talk(answer)
if(answer=="ask")then
	n=10000
	AddTopSayMenuItem("@7该国当前国家资源是"..n.."","")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddTopSayMenuItem("@3建设王城(缴金砖换2W铜)","Tgj1a")
		AddTopSayMenuItem("@3建设王城(缴银砖)","Tgj1b")
		AddTopSayMenuItem("@3建设王城(缴青砖)","Tgj1c")
		AddTopSayMenuItem("@3王城挖墙脚说明","Tgjsm")
	else
		AddTopSayMenuItem("@3挖墙脚","Tgj2")
	end
elseif(answer=="Tgjsm")then  
	LuaSay("玩家可以到@2其他国家的洛阳城@0@4国家库房总管@0处偷得@2砖块@0，在自己国家可以上缴金砖和银砖提高国家资源数，国家资源数大则奖励越高(暂未开放，国家资源为定值)。")
	LuaSay("砖块可分为@2金，银，青@0三种砖块：@2金砖@0：@2一天只能上缴一次@0，奖励最好！@2银砖@0：@2每天前5次获得额外奖励@0，后面@2依然可以增加国家资源@0。@2青砖@0：@2无限制@0，@2每20块可换取一次奖励@0，奖励最差！")
	LuaSay("获得概率：@3金砖@0：偷砖过程中@210%概率@0获得@2答题机会@0，@2答对5题@0者-->获得@2金砖土胚@0-->到@4边境@0找@2边境管理者(小五)@0-->任务@7土胚变金砖@0转化成@2金砖@0。@3银砖@0：@220%概率直接获得。@0@2青砖@0：@250%机会直接获得@0！")
	LuaSay("@1提示：偷砖过程中20%概率铁锹断了，没挖到砖。@0")
	LuaSay("提示：偷砖过程中如果@2身上有金砖或者金砖土胚@0则不能再获得@2金砖土胚了@0了！@2身上有5块银砖@0也不能再获得银砖了，请回国上缴后再继续。砖块是死亡掉落的，注意保护。王城内，本国人不能PK。")
elseif(answer=="Tgj1a")then       --建设王城
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tgj1aday"))then
		if(LuaItemStatusNormalCount("o_mission514")>0) then
			LuaSay("你身上只有@2金砖土胚@0，到@4边境@0找@2边境管理员（小五）@0，他会告诉你@2让金砖土胚变成金砖@0的方法，拿到金砖后再回我这里上缴吧！")
		end
		if(LuaItemStatusNormalCount("o_mission214")>0)then
			if(LuaQueryTask("Tgj1atimes")<1)then
				LuaAddJx("combat_exp",floor(level/5-1)*50000,"Tgj1a") 
				LuaNotice("无私的"..LuaQueryStr("name").."为社会主义添上一块金砖，获得大量经验奖励和2W铜币，真乃我国之楷模啊！") 
				LuaAddTask("Tgj1atimes",1)--公聊
				DelItem("o_mission214",1)
				LuaGive("coin",20000,"Tgj1a")
			else 
				LuaSay("金砖每天只能上缴一次，也能增加国家资源，资源越高，其他国家任务奖励越高！注意保护好自己国家金砖！")
			end 
		elseif(LuaItemStatusNormalCount("o_mission514")<1 and LuaItemStatusNormalCount("o_mission214")<1) then
			LuaSay("你身上没有金砖，请注意自己任务背包中")
		end
	else
		LuaSetTask("Tgj1aday",GetCurrentDay())
		LuaDelTask("Tgj1atimes")
		LuaSay("新的一天，你有一次上缴金砖机会！")
	end
elseif(answer=="Tgj1b")then       --建设王城
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tgj1bday"))then            --
		if(LuaItemStatusNormalCount("o_mission213")>0)then
			if(LuaQueryTask("Tgj1btimes")<6)then       
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tgj1b") 
				LocalMsg("无私的"..LuaQueryStr("name").."为社会主义添上一块银砖，获得大量经验奖励和金钱！") 
				LuaAddTask("Tgj1btimes",1)
				LuaGive("coin",1000,"Tgj1b")
			else
				LuaSay("每天只有前3次有奖励！超过三次属于自愿捐赠，虽不奖励，但也能增加国家资源，资源越高，其他国家任务奖励越高！砖块死亡掉落！")
			end
			DelItem("o_mission213",1)
       
		else
			LuaSay("你身上没有银砖")
		end
	else
		LuaSetTask("Tgj1bday",GetCurrentDay())
		LuaDelTask("Tgj1btimes")
		LuaSay("新的一天，你的前3次捐银砖将获得额外奖励，")
	end
elseif(answer=="Tgj1c")then 
	local level=LuaQuery("level")
	if(LuaItemStatusNormalCount("o_mission212")>19)then
		LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tgj1c") 
		LuaGive("coin",1000,"Tgj1c")
		DelItem("o_mission212",20)
	else
		LuaSay("青砖每20块可换取一次奖励！你身上青砖不足20块！凑够数再来吧！")
	end
elseif(answer=="Tgj2")then---5%机会触发答题获得金砖， 20%机会获得银砖
	if(LuaItemStatusNormalCount("o_mission514")<1 and LuaQueryTask("Thgz")==1) then
		LuaSay("听说你身上的@2金砖土胚被人爆了@0，哎，可伶的孩子，重新来过吧！")
		local tS_skill={  --杀怪
				{1,"幼貂","task_kill/mon_008/Thgz_1",40},----level<=15
				{2,"幼貂","task_kill/mon_008/Thgz_2",50},----level<=22
				{3,"愚民","task_kill/mon_020/Thgz_3",40},----level<=28
				{4,"氐族哨兵","task_kill/mon_025/Thgz_4",40},----level<=35
				{5,"竹叶妖","task_kill/mon_030/Thgz_5",40},----level<=40
				{6,"竹叶妖","task_kill/mon_030/Thgz_6",50},----level>40
				}
		local t
		t=LuaQueryTask("hgz_dj")
		LuaDelTask(tS_skill[t][3])---删除杀怪计数器
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
	end
	if(LuaQuery("rightanswer")>0)then 
		if(LuaQuery("zcount")>20)then
			if(LuaQuery("rightanswer") <5)then
				LuaSay("提示：你在刚才的答题中，答对了@3"..LuaQuery("rightanswer").."个题目，小于5道题，你不能获得@2金砖土胚@0奖励")
			else
				LuaSay("提示：你在刚才的答题中，答对了@3"..LuaQuery("rightanswer").."个题目.")
				LuaSay("恭喜你，成功挖取了一块@2金砖土胚@0，速到@4边境@0找@2边境管理员（小五）@0，他会告诉你如何让@2金砖土胚变成金砖@0！")
				LuaNotice("猥琐的"..LuaQueryStr("name").."在我王城内挖走@2金砖土胚@0一块，大家快去击杀他暴金砖土胚吧！")
				LuaGive("o_mission514",1,"Tgj2")
			end
			LuaDel("rightanswer")
			LuaDelTask("Twdtype")
		else
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx")
			AddMenuItem("@3放弃","fq")
		end
	else        
		if(LuaQueryTask("Tgjtztime") == GetCurrentMinute())then
			LuaSay("你的频率太快，1分钟后再来吧！")
		else
			if(GetCurrentDay()~=LuaQueryStrTask("Ac_45numday")) then
				LuaSetTask("Ac_45num",0)
				LuaSetTask("Ac_45numday",GetCurrentDay())
			end
			local day=GetCurrentDay()
			LuaSay("近年来@2"..GeGJMC().."国@0富庶，内城城墙都是用@7金砖银砖@0砌成，连不起眼的外城城墙都是用@7青砖@0砌成的。")
			LuaSay("如此浪费，岂能不遭天妒，突变初起，一夜之间王城内的@2金砖@0都变成了@3金砖土胚@0(@4银砖青砖@0人瞧不上眼....)，并且天上闪出一道五彩琉璃字：尔等不思进取，以此惩戒！")
			LuaSetTask("Tgjtztime",GetCurrentMinute())
			r=LuaRandom(10)                        --参与答题抽金砖
			if(LuaQueryTask("Ac_45num")<50)then
				if(LuaQueryStr("country_id")=="200" or LuaQueryStr("country_id")=="201" or LuaQueryStr("country_id")=="202")then
				else
					if(day=="2012-6-18"  or  day=="2012-6-19" or day=="2012-6-20" or day=="2012-6-21")then ---2012年6月19日~21日活动
						local rr=LuaRandom(100)
						if(rr==0 and rr<=1)then
							LuaGive("o_mission528",1,"Ac_45") ---金石
							LuaSay("恭喜你获得了@3金石@0，活动期间2012年6月19日~21日，你可以自己国家中的建康城NPC活动使者换取活动道具物品！")
						elseif(rr>=2 and rr<7)then
							LuaGive("o_mission527",1,"Ac_45") ---银石
							LuaSay("恭喜你获得了@8银石@0，活动期间2012年6月19日~21日，你可以自己国家中的建康城NPC活动使者换取活动道具物品！")
						elseif(rr>=8 and rr<38)then
							LuaGive("o_mission526",1,"Ac_45") ---青石
							LuaSay("恭喜你获得了@9青石@0，活动期间2012年6月19日~21日，你可以自己国家中的建康城NPC活动使者换取活动道具物品！")
						end
						LuaAddTask("Ac_45num",1)
						LuaSay("今日挖砖第"..LuaQueryTask("Ac_45num").."次，50次之后将不会再获得石头奖励")
					end
				end
			end
			
			if(r==0)then
 				if(LuaQuery("rightanswer")==0) then  
					if(LuaItemStatusNormalCount("o_mission214")<1) then
						if(LuaItemStatusNormalCount("o_mission514")<1) then
							LuaSay("你的运气来了！下面会出题目数为20，当@2答对5个以上题目@0，将会得到1个@2金砖土胚@0的奖励")
							AddMenuItem("@7是否答题","")
							AddMenuItem("@3开始答题","begin")
							AddMenuItem("@3不答题","noanswer")
						else
							LuaSay("你身上有@2金砖土胚@0，不能再次获得幸运答题机会。")
							LuaSay("到@4边境@0找@2边境管理员（小五）@0接取@3任务@0@7土胚变金砖@0，他会告诉你如何让@2金砖土胚变成金砖@0！")
						end
					else
						LuaSay("你身上有@2金砖@0，不能再次获得幸运答题机会，请回@4本国洛阳城@0@4国家库房总管@0处上缴后再来！")
					end
				end 
			elseif(r<=2)then
				if(LuaItemStatusNormalCount("o_mission213")<6)then
					LuaSay("努力的挖呀挖....")
					LuaSay("哈哈，你挖到了一块@2银砖@0！")
					LuaNotice("@2"..LuaQueryStr("name").."@0努力了挖墙脚，很幸运挖到了一块价值连城的银砖！")
					LuaGive("o_mission213",1,"Tgj2")
				else
					LuaSay("你身上银砖多于5个！不能携带更多银砖了，回@4本国洛阳城@0@4国家库房总管@0处上缴后再来吧!")
				end
			elseif(r<=7)then
				LuaSay("努力的挖呀挖....")
				LuaSay("运气有些差！你只挖到了一块普通的@2青砖@0！")
				LuaGive("o_mission212",1,"Tgj2")
			else
				LuaSay("铁锹断了，没挖到任何砖！")
			end     
		end 
	end
elseif(answer=="begin") then
	a=LuaRandom(5)
	LuaSetTask("Twdtype",a)
	LuaSet("zcount",0) 
	if(LuaQueryTask("Twdtype")==0) then 
		TaskProcess("A")
        elseif(LuaQueryTask("Twdtype")==1) then
		TaskProcess("B")
        elseif(LuaQueryTask("Twdtype")==2) then
		TaskProcess("C")
        elseif(LuaQueryTask("Twdtype")==3) then
		TaskProcess("D")
        elseif(LuaQueryTask("Twdtype")==4) then
		TaskProcess("G")
        end
        
elseif(answer=="noanswer") then
	LuaSay("提示：金砖可以换取大量奖励！") 
elseif(answer=="jx") then
	if(LuaQueryTask("Twdtype")==0) then  
		TaskProcess("A")
        elseif(LuaQueryTask("Twdtype")==1) then 
		TaskProcess("B")
        elseif(LuaQueryTask("Twdtype")==2) then 
		TaskProcess("C")
        elseif(LuaQueryTask("Twdtype")==3) then
		TaskProcess("D")
        elseif(LuaQueryTask("Twdtype")==4) then
		TaskProcess("G")
        end
elseif(answer=="fq") then
	LuaSet("zcount",20)


end
LuaSendMenu()
return 1
end


