NPCINFO = { 
serial="23",
base_name="yuweng",
icon=2503,
NpcMove=2503,
name="渔翁",
iconaddr=1 ,
butt="10|10|50" ,
name_color="CEFFCE",
lastsay="钓鱼有一定几率得到高级肉",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then
	local level=LuaQuery("level")
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7任务列表","")
	--if(LuaQueryTask("Tqxzf")>=1 and LuaQueryTask("Tqxzf")<5)then
		--AddTopSayMenuItem("@5进入静谧村庄@0","Tjmcz")				--七夕祝福
	--end 
--	AddTopSayMenuItem("@3幸运鱼饵","Txyye")
	if(day=="2012-6-20" or day=="2012-6-22" or day=="2012-6-23" or day=="2012-6-24")then
		AddTopSayMenuItem("@1[火热]@0@3端午节的粽子","Ac_47")
	end
	if(LuaQueryTask("bao_A")~=0)then
		AddTopSayMenuItem("@2甲鱼之王【隐藏】","T140")
		havetask =2
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_7")==1 or LuaQueryTask("TfindNPC_7")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_7")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end
	if((LuaQueryTask("Tsnpc_9")==1 or LuaQueryTask("Tsnpc_9")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_9")
		if(LuaQueryTask("Tsnpc_9")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_9")==1 or LuaQueryTask("Tenpc_9")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_9")
		if(LuaQueryTask("Tenpc_9")==1)then
			havetask2=1
		end
	end

	 if(LuaQueryTask("Tdiaoyu")==0) then
		AddTopSayMenuItem("钓鱼","Tdiaoyu")
	 else
		AddTopSayMenuItem("钓鱼","Tdiaoyu1")
		AddTopSayMenuItem("获取钓鱼收益","Tdiaoyu")
		
	 end
 	 AddTopSayMenuItem("@7钓鱼托管@0","Tdiaoyutg")
	 AddTopSayMenuItem("@3帮助新人钓鱼@0","Tdyhelp")
	 AddTopSayMenuItem("@5如何钓鱼","diaoyu")
	 AddTopSayMenuItem("聊天","liaotian")
	 return 1 
		
elseif(answer=="liaotian") then 
	LuaSay("渔翁：钓鱼可以轻松获得经验、铜币和材料，帮助未钓过鱼的玩家还有高额奖励哦。@!")
elseif(answer=="Tjmcz")then
	ChangeMap("lu_jmcz")

elseif(answer=="Tdiaoyutg") then
	if(LuaQueryTask("Tdiaoyutg")==0) then
		LuaSay("渔翁：钓鱼托管可以让你离开钓鱼台并且获得钓鱼的收益哦。")
		LuaSay("渔翁：最好在你退出游戏之前进行钓鱼托管，这样即使不在游戏也能获取钓鱼受益。@!")
		AddMenuItem("@7托管选择","")
		AddMenuItem("6小时需@81银票","6tg")
		AddMenuItem("12小时需@82银票","12tg")
		AddMenuItem("24小时需@84银票","24tg")
		AddMenuItem("不托管","butg")
	elseif(LuaQueryTask("Tdiaoyutg")==1) then       --6小时 
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=21600) then
			LuaSay("渔翁：通过6小时的钓鱼托管，你获得以下奖励：")
			LuaGive("o_mission040",18) 
			LuaGive("o_material_31",3)          ----给3级肉
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(26)==0) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3钓鱼托管@06小时收杆，人品爆发得到了@25级紫玉@0!价值@2250元宝")
                LuaGive("o_present108",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("渔翁：你的6小时钓鱼托管用去@3"..a.."小时"..b.."分@0了，你确定要获取收益吗？")
			LuaSay("渔翁：取消托管后，剩余时间将直接作废哦，可得想清楚了。")
			AddMenuItem("@7是否停止托管","")
			AddMenuItem("继续托管","jixutg")
			AddMenuItem("不再托管","quxiaotg")
		end 
	elseif(LuaQueryTask("Tdiaoyutg")==2) then      --12小时
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=43200) then
			LuaSay("渔翁：通过12小时的钓鱼托管，你获得以下奖励：")
			LuaGive("o_mission020",14)    
			LuaGive("o_mission039",12) 
			LuaGive("o_mission040",20) 
			LuaGive("o_material_31",6)
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(26)==1) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3钓鱼托管@012小时收杆，人品爆发得到了@26级紫玉@0!价值@2500元宝")
                LuaGive("o_present109",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("渔翁：你的12小时钓鱼托管用去@3"..a.."小时"..b.."分@0了，你确定要获取收益吗？")
			LuaSay("渔翁：取消托管后，剩余时间将直接作废哦，可得想清楚了。")
			AddMenuItem("@7是否停止托管","")
			AddMenuItem("继续托管","jixutg")
			AddMenuItem("不再托管","quxiaotg")
		end
    
	elseif(LuaQueryTask("Tdiaoyutg")==3) then      --24小时
		local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
		if(tgtime>=86400) then
			LuaSay("渔翁：通过24小时的钓鱼托管，你获得以下奖励：")
			LuaGive("o_mission020",20)    
			LuaGive("o_mission039",20) 
			LuaGive("o_mission040",20) 
			LuaGive("o_mission040",20)
			LuaGive("o_material_31",12)
			LuaSetTask("Tdiaoyutg",0)
			LuaSetTask("Tdiaoyu",1)  
            if(LuaRandom(31)==1) then
                LuaNotice("@2"..LuaQueryStr("name").."@0@3钓鱼托管@012小时收杆，人品爆发得到了@27级紫玉@0!价值@21000元宝")
                LuaGive("o_present110",1,"Tdiaoyutg")
            end
			UpdateMenu()                                                             
		else
			local a=floor(tgtime/3600)
			local b=floor((tgtime-a*3600)/60) 
			LuaSay("渔翁：你的24小时钓鱼托管用去@3"..a.."小时"..b.."分@0了，你确定要获取收益吗？")
			LuaSay("渔翁：取消托管后，剩余时间将直接作废哦，可得想清楚了。")
			AddMenuItem("@7是否停止托管","")
			AddMenuItem("继续托管","jixutg")
			AddMenuItem("不再托管","quxiaotg")
		end
	end
    
elseif(answer=="butg") then
	LuaSay("渔翁：钓鱼托管后可以在离线后仍然获得钓鱼收益的哦。@!")
elseif(answer=="6tg") then       --6小时托管：道具耗费
	local a=LuaItemCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>0)then
		LuaSay("渔翁：你成功的进行了@36小时钓鱼托管@0。@!")
		if(LuaRandom(25)==1) then
			LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
			LuaGive("o_box002",1,"Tdiaoyutg")
		end        
		if(b>0) then
			DelItem("o_gold2y",1)
		else
			DelItem("o_gold2j",1)
		end
		LuaLogRecord("钓鱼托管","o_gold2y","元宝","消耗",10)--记成一种可也，有必要的话再分开
		LuaSetTask("Tdiaoyutg",1)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("渔翁：6小时的钓鱼托管需要@21个@8银票。")--10yb
        end
      
elseif(answer=="12tg") then       --12小时托管：道具耗费
	local  a=LuaItemCount("o_gold2j")
	local  b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>=2)then
		LuaSay("渔翁：你成功的进行了@312小时钓鱼托管@0。@!")
		if(LuaRandom(2)==0) then
			LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
			LuaGive("o_box002",1,"Tdiaoyutg")
		end        
		if(b>=2) then
			DelItem("o_gold2y",2)
		else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",2-b)
		end
		LuaLogRecord("钓鱼托管","o_gold2y","元宝","消耗",20)--记成一种可也，有必要的话再分开
		LuaSetTask("Tdiaoyutg",2)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("渔翁：12小时的钓鱼托管需要@22个@8银票。")--20yb
        end
      
elseif(answer=="24tg") then        --24小时托管：道具耗费 
	local a=LuaItemCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
        if(a+b>=4)then
		LuaSay("渔翁：你成功的进行了@324小时钓鱼托管@0。@!")
		LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
        LuaGive("o_box002",1,"Tdiaoyutg")
		if(b>=4) then
			DelItem("o_gold2y",4)
		else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",4-b)
		end        
		LuaLogRecord("钓鱼托管","o_gold2y","元宝","消耗",40)--记成一种可也，有必要的话再分开
		LuaSetTask("Tdiaoyutg",3)
		LuaSetTask("Tdytgtime",GetCurrentTime())
        else
		LuaSay("渔翁：24小时的钓鱼托管需要@24个@8银票。")--40yb
        end
    
elseif(answer=="jixutg") then
        LuaSay("渔翁：在托管时间到期后，再来领取收益是最划算的哦。")
        LuaSay("渔翁：在托管期间，可是不能离开建康城的哦！@!")
elseif(answer=="quxiaotg") then
	local tgtime=GetCurrentTime()-LuaQueryTask("Tdytgtime")
	if(tgtime<600) then                                              
		LuaSay("渔翁：你的托管时间不到10分钟，没有得到任何东西。")        
	else
		if(LuaQueryTask("Tdiaoyutg")==1) then       --6小时 
			local tg1=floor(tgtime/2400)    --2400  40分钟 
			LuaSay("渔翁：你的6小时钓鱼托管收益如下：")
			if(tg1==0) then
				LuaGive("o_mission020",2)
			else
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			end                                                         
		elseif(LuaQueryTask("Tdiaoyutg")==2) then   --12小时：最多36个精品肉 
			local tg1=floor(tgtime/2400) 
			LuaSay("渔翁：你的12小时钓鱼托管收益如下：")
			if(tg1==0) then
				LuaGive("o_mission020",3)
			elseif(tg1<=10) then
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			elseif(tg1<20) then  
				LuaGive("o_mission040",20)
				LuaGive("o_material_31",(floor(tg1/2)-2))
				local num=tg1-10
				if(num<=5) then
					LuaGive("o_mission020",4*num)
				else
					LuaGive("o_mission020",20)
					LuaGive("o_mission039",10)
				end
			end
    
		elseif(LuaQueryTask("Tdiaoyutg")==3) then   --24小时 
			local tg1=floor(tgtime/2400)
			local tg2=floor((tgtime-tg1*600)/600)
			LuaSay("渔翁：你的24小时钓鱼托管收益如下：")
			if(tg1==0) then
				LuaGive("o_mission020",2)
			elseif(tg1<=10) then
				LuaGive("o_mission040",2*tg1)
				LuaGive("o_mission020",2)
				if(tg1>=2) then
					LuaGive("o_material_31",floor(tg1/2))
				end
			elseif(tg1<=20) then
				LuaGive("o_mission040",20)
				LuaGive("o_mission040",2*(tg1-10))
				LuaGive("o_mission020",2)
				LuaGive("o_material_31",(floor(tg1/2)-2))
			else
				LuaGive("o_mission040",20)
				LuaGive("o_mission040",20)
				LuaGive("o_mission020",20)
				LuaGive("o_mission039",20)
				LuaGive("o_material_31",(floor(tg1/2)-2))
			end
		end 
	end
	LuaSetTask("Tdiaoyutg",0)
	LuaSetTask("Tdiaoyu",1)
	UpdateMenu()
    
-------帮助新人钓鱼
elseif(answer=="Tdyhelp") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tdyhelp")==0) then
		if(TeamCount()== 2) then
			if(TeamQueryTask("Tdydotime")==0 and LuaQueryTask("Tdydotime")==1) then           --对话的是带人者 
				if(TeamQueryTask("Tdyhelp")==2 ) then
					if(TeamQueryStr("Tdyhelpname")==LuaQueryStr("name")) then
						LuaSay("渔翁：当你帮助@3"..TeamQueryStr("name").."@0成功钓鱼后，可2人组队来领取@3海量的经验奖励和2000铜币。")
						LuaSetTask("Tdyhelp",1)
						LuaSet("Tdyhelpname",TeamQueryStr("name"))
					else
						LuaSay("提示：你的组队对象，已经有了他人帮助，你还是去帮助其他需要帮助的人吧。")
					end 
				else
					LuaSay("提示：必须你的帮助对象先接此任务，你方可接任务。@!")
				end  
			elseif(TeamQueryTask("Tdydotime")==1 and LuaQueryTask("Tdydotime")==0) then       --对话的是被带者 
				LuaSay("提示：向他请教如何钓鱼吧。@!")
				LuaSay("提示：等你成功钓鱼1次，就可以来找我领取@31000的铜币。@!")
				LuaSetTask("Tdyhelp",2)
				LuaSet("Tdyhelpname",TeamQueryStr("name"))     --带人者ID 
			else
				LuaSay("提示：成功钓过鱼和未钓过鱼的玩家，二人组队才能领取该任务。")
			end
		else
			LuaSay("提示：成功钓过鱼和未钓过鱼的玩家，二人组队才能领取该任务。")
		end 	 	 

	elseif(LuaQueryTask("Tdyhelp")==1) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        if(TeamCount()==2) then
		 if(TeamQueryStr("name")==LuaQueryStr("Tdyhelpname")) then
			   if(TeamQueryTask("Tdydotime")==1) then
			      LuaSetTask("Tdyhelp",0)
			        local jingyan=30000+level^2*50+level*5000 	    
				LuaAddJx("combat_exp",jingyan,"Tdyhelp")
				LuaGive("coin",2000,"Tdyhelp")
			   else
				   LuaSay("渔翁：你还没有帮助@3"..TeamQueryStr("name").."@0成功钓鱼呢。")
				   AddMenuItem("@7是否放弃任务","")
				   AddMenuItem("继续任务","jixu")
				   AddMenuItem("放弃任务","fangqi")
			    end
		else
		     LuaSay("渔翁：必须和你接任务时的帮助对象@3"..LuaQueryStr("Tdyhelpname").."@02人组队，才能提交该任务。")
		     AddMenuItem("@7是否放弃任务","")
		     AddMenuItem("继续任务","jixu")
		     AddMenuItem("放弃任务","fangqi")
		end
        else
		LuaSay("渔翁：必须和你接任务时的帮助对象@3"..LuaQueryStr("Tdyhelpname").."@02人组队，才能提交该任务。")
		AddMenuItem("@7是否放弃任务","")
		AddMenuItem("继续任务","jixu")
		AddMenuItem("放弃任务","fangqi")
        end
     elseif(LuaQueryTask("Tdyhelp")==2) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		    if(LuaQueryTask("Tdydotime")==1) then 
			LuaSay("渔翁：恭喜你学会了钓鱼，多多去帮助他人吧。@!")
			LuaGive("coin",1000,"Tdyhelp")
			LuaAddJx("combat_exp",60000+level^2*40,"Tdyhelp")
			LuaSetTask("Tdyhelp",0)
		    else
			LuaSay("提示：等你成功钓鱼1次后，才能领取奖励。@!")
		    end				
     end   
       elseif(answer=="jixu") then
       LuaSay("渔翁：这样才好嘛，助人为快乐之本，何况还有高额奖励领取。@!")
       elseif(answer=="fangqi") then
       LuaSay("渔翁：现在你可以帮助其他需要帮助的新人了。@!")
       LuaSetTask("Tdyhelp",0)
	 
elseif(answer=="Tdiaoyu1")then
		LuaSay("渔翁：真是愿者上钩啊，这么多人想来帮我钓鱼@!，在@3鱼竿附近@0使用背包中的@2鱼饵@0后，就成功撒下了窝子。")
		LuaSay("渔翁：在使用鱼饵@310分钟后@0，就可以在使用鱼饵的地方收获鱼了。@3再次使用鱼饵@0就可以得到鱼了。")
		LuaSay("渔翁：钓鱼的@3时间越长@0，得到的@2鱼肉@0越好，好的鱼肉将从老夫这里得到更高的报酬。")
		AddMenuItem("@7是否钓鱼","")
		AddMenuItem("我要钓鱼","YES")
		AddMenuItem("放弃","NO")
		UpdateMenu()
elseif(answer=="Tdiaoyu") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tdiaoyu")==0) then
		if(LuaQueryTask("Tdiaoyutg")==0) then
			LuaSay("渔翁：真是愿者上钩啊，这么多人想来帮我钓鱼@!，在@3鱼竿附近@0使用背包中的@2鱼饵@0后，就成功撒下了窝子。")
			LuaSay("渔翁：在使用鱼饵@310分钟后@0，就可以在使用鱼饵的地方收获鱼了。@3再次使用鱼饵@0就可以得到鱼了。")
			LuaSay("渔翁：钓鱼的@3时间越长@0，得到的@2鱼肉@0越好，好的鱼肉将从老夫这里得到更高的报酬。")
			AddMenuItem("@7是否钓鱼","")
			AddMenuItem("我要钓鱼","YES")
			AddMenuItem("放弃","NO")
			UpdateMenu()
		else
			LuaSay("渔翁：你已经进行了@3钓鱼托管@0，不能再钓鱼。@!")
		end
	elseif(LuaQueryTask("Tdiaoyu")==1) then
		local a=LuaItemCount("o_mission020")
		local b=LuaItemCount("o_mission039")
		local c=LuaItemCount("o_mission040")
		LuaSetTask("Tdiaoyu",0)
		if(a==0 and  b==0 and  c==0) then
			LuaSay("渔翁：你还没有通过钓鱼得到任何鱼肉呢，不能得到任何奖励。")
		else
			LuaSay("渔翁：钓鱼有机会钓起甲鱼哦@!")
			LuaSay("渔翁：你通过钓鱼得到了@2"..a.."块劣质鱼肉，"..b.."块优质鱼肉，"..c.."块精品鱼肉。")
			DelItem("o_mission020",a)
			DelItem("o_mission039",b)
			DelItem("o_mission040",c)
			local d=a+1.5*b+2*c
			local money
			if(level<20) then
				money=d*200
			else
				money=d*250
			end
			if(LuaQueryTask("Tdiaoyu")==0) then
				local exp=(278+level^2*1.5+level*208)*d
				LuaGive("coin",money,"Tdiaoyu")
				LuaAddJx("combat_exp",exp,"Tdiaoyu")
				
			end
			if(LuaQueryTask("Thx2")==5) then
					if(LuaQueryTask("Thx2E")==0) then
						LuaSay("提示：你已经完成环形任务第五环，快去回复拓跋圭吧。@!")
						LuaSetTask("Thx2E",99)
					end
			end
			DelLog("diaoyu")
			if(d>15) then
				LuaSay("渔翁：你已经钓了很长时间的鱼了，还是去活动活动筋骨吧。")
				LuaSay("渔翁：跑到天涯海角找@3幸运老人@0吧，这可是能获得超高经验和铜币的哦。@!")
				AddMenuItem("@7是否活动筋骨","")
				AddMenuItem("活动筋骨","huodong")
				AddMenuItem("我很懒，继续钓鱼","YES")
			end
		end
		UpdateMenu()
	  end

   elseif(answer=="YES") then
        LuaSetTask("Tdiaoyu",1)
	if(LuaItemCount("o_mission041")<10) then
        LuaGive("o_mission041",10)
        end
        ChangeMap("lu_diaoyudao")
   elseif(answer=="NO") then
        LuaSay("渔翁：钓鱼可是很轻松的，想要钓鱼就来找我。")
   elseif(answer=="diaoyu") then
        LuaSay("渔翁：在鱼竿附近使用鱼饵，使用鱼饵@310分钟后@0，就可以在使用鱼饵的地方收获鱼了。@3再次使用鱼饵@0就可以得到鱼@0。")
	LuaSay("渔翁：钓鱼的@3时间越长@0，得到的@2鱼肉@0越好，好的鱼肉将从老夫这里得到更高的报酬。")

   elseif(answer=="huodong") then
		LuaSetTask("Tdiaoyuhd",1)
		ChangeMap("lu_tyhj")



elseif(answer=="T140")then
	if(LuaQueryStrTask("140Taskday")~=GetCurrentDay()) then
		LuaSetTask("140dotime",0)
	end
	if(LuaQueryTask("bao_A")~=0)then
		if(LuaItemStatusNormalCount("o_mission168")>=1)then
			if(LuaQueryTask("140dotime")<10) then
				LuaSay(""..LuaQueryStr("name").."：我这手中可是@3甲鱼@0？")
				LuaSay("渔翁：是的，这么珍贵的东西都被你钓上来了，可真是运气之好啊，这@3甲鱼@0在平常人那里是没什么用的，只有老夫能将它的功效发挥出来。")
				LuaSay("渔翁：老身没什么钱币，我可以用精品鱼肉、优质鱼肉、劣质鱼肉以及2，3，4级肉其中的一个和你兑换。")
				AddMenuItem("@7选项","")
				AddMenuItem("愿意兑换","T140yes")
				AddMenuItem("不愿意兑换","T140no")
			else
				LuaSay("提示：我这里已经没什么东西和你兑换了，明天再来吧。")
				LuaDelTask("bao_A")
				UpdateMenu()
			end
		else
			LuaSay("渔翁：老头子虽然眼花，但是你的这些小把戏是不能糊弄我的，你甲鱼都没有呢，怎么兑换呢")
		end
	end

	elseif(answer=="T140yes")then
	if(LuaItemStatusNormalCount("o_mission168")>=1)then
		 if(LuaQueryTask("bao_A")~=0)then
			LuaSetTask("231Taskday",GetCurrentDay())
			LuaAddTask("231dotime",1)
			LuaDelTask("bao_A")
			UpdateMenu()
			local T140r=LuaRandom(10)
			if(T140r==0)then
				LuaSay("渔翁：老身眼睛不好，这块劣质鱼肉算是给你的奖励。")
				LuaGive("o_mission020",1)--劣质鱼肉
				DelItem("o_mission168",1)
			elseif(T140r==1)then
				LuaSay("渔翁：老身眼睛不好，这块优质鱼肉算是给你的奖励。")
				LuaGive("o_mission039",1)--优质鱼肉
				DelItem("o_mission168",1)
			elseif(T140r==2)then
				LuaSay("渔翁：老身翻了半天总算是找到多年珍藏的这块精品鱼肉，算是给你的奖励。")
				LuaGive("o_mission040",1)--精品鱼肉
				DelItem("o_mission168",1)
			elseif(T140r==3)then
				LuaSay("渔翁：这块4级肉算是给你辛苦的奖励。")
				LuaGive("o_material_32",1) --4肉
				DelItem("o_mission168",1)
			elseif(T140r==4)then
				LuaSay("渔翁：老身眼睛不好，这块3级肉算是给你的奖励。")
				LuaGive("o_material_31",1) --3肉
				DelItem("o_mission168",1)
			else
				LuaSay("渔翁：2级肉在生活中应用广泛，老身就把它送你一块。")
				LuaGive("o_material_30",1)--2肉
				DelItem("o_mission168",1)
			end
		end
	else
		LuaSay("@5提示：你身上没有携带甲鱼")
	end
	elseif(answer=="T140no")then
		if(LuaQueryTask("bao_A")~=0)then
			LuaSay("渔翁：保守固然是好，可不要错过行情哦。")
			LuaDelTask("bao_A")
			UpdateMenu()
		end

--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_7")==1)then
					LuaSay("渔翁：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_7",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_7")==2)then
					LuaSay("渔翁：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_7",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("渔翁：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("渔翁：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end
elseif(answer=="Tsnpc_9")then
	if(LuaQueryTask("Tsnpc_9")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的秘密信件，如果你高兴可以给我条鱼吃@!")
		LuaSay("渔翁：一条小鱼，又有什么，")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_9",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_9")==2)then
		LuaSay("渔翁：信我看到了，你回去复命吧")
	end
elseif(answer=="Tenpc_9")then
	if(LuaQueryTask("Tenpc_9")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主子这次让我传话给你，说鱼要最好的鱼，你不能再搞些假货来了啊")
		LuaSay("渔翁：啊，我从来没给过们假鱼啊，冤枉!")
		LuaSetTask("Tenpc_9",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_9")==2)then
		LuaSay("渔翁：回去告诉你们大人，我再也不敢了")
	end
	
	
elseif(answer=="Txyye")then  --幸运鱼饵
    LuaSay("使用幸运鱼饵钓鱼有更大的几率钓到者优质鱼肉、甲鱼哦！")
    AddMenuItem("需要6个@9通宝@0","")
	AddMenuItem("确定兑换","Txyye_yes")
elseif(answer=="Txyye_yes")then
    if(LuaItemStatusNormalCount("o_gold1y")>=6)then
        LuaGive("o_mission530",1,"Txyye")   --强化石
    	DelItem("o_gold1y",6)
	else
	    LuaSay("你身上@9通宝@0不足6个！")
	end

elseif(answer=="Ac_47")then
    LuaSay("这个伴随我们历史文化成长的端午节已经到来！活动期间玩家可以在我这里进入钓鱼台！用鱼饵或者幸运鱼饵钓鱼有几率钓到粽子！")
    LuaSay("使用幸运鱼饵钓鱼有更大的几率钓到粽子或者优质鱼肉、甲鱼哦！拿到粽子可到我这里来兑换大量的经验或者大量的铜币、加150的属性符和3个强化石。（幸运鱼饵可以在商城里购买。）")

	if(LuaItemStatusNormalCount("o_mission529")>=1)then
    	AddMenuItem("@7选项","")
	--	AddMenuItem("兑换经验","Ac_47_jl1")
		AddMenuItem("兑换奖励","Ac_47_jl2")
	else
	    LuaSay("你身上没有粽子，在活动期间（2012年6月22日~24日）钓鱼的时候有概率获得哦！")
	end
	--[[
elseif(answer=="Ac_47_jl1")then --兑换经验
    if(LuaItemStatusNormalCount("o_mission530")>=1)then
    LuaAddJx("combat_exp",30000+level^2*50+level*5000,"Ac_47")
    DelItem("o_mission529",1)
    else
	    LuaSay("你身上没有粽子，在活动期间（2012年6月22日~24日）钓鱼的时候有概率获得哦！")
	end ]]
elseif(answer=="Ac_47_jl2")then --兑换其他道具
    if(LuaItemStatusNormalCount("o_mission529")>=1)then
        if(LuaFreeBag()>=3)then
       	 	r=LuaRandom(10)
       	 	if(r==0)then
       	 	    LuaGive("o_ybsc002j",3,"Ac_47")   --强化石
			elseif(r>0 and r<=2) then
    			LuaGive("coin",20000,"Ac_47")
			elseif(r>2 and r<5) then
    			LuaGive("o_state019j",1,"Ac_47")  --力量符
    			LuaGive("o_state024j",1,"Ac_47")  --敏捷符
    			LuaGive("o_state029j",1,"Ac_47")  --智慧符
    		else
    		    LuaAddJx("combat_exp",10000,"Ac_47")
    		end

    	DelItem("o_mission529",1)
    	else
		LuaSay("请保持3格以上的背包空间")
		end
	else
	    LuaSay("你身上没有粽子，在活动期间（2012年6月22日~24日）钓鱼的时候有概率获得哦！")
	end
	
end
LuaSendMenu()
return 1
end 