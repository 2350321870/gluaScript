NPCINFO = { 
serial="43" ,
base_name="huanchong" ,
icon=2549,
NpcMove=2549,
name="桓冲" ,
iconaddr=1 ,
butt="10|10|55" ,
name_color="CEFFCE" ,
lastsay="非白名者为恶人，皆可杀之" ,
LuaType=1,
} 

function do_talk(answer) 
if (answer=="ask") then 
       havetask =0 
        local level= LuaQuery("level")
		AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("@7命运的眷顾【每日】@0","T320")
		if(LuaQueryTask("T321") ==0 and level >=13) then
			AddTopSayMenuItem("桓氏家族【剧情】","T321") 
			havetask =1
			end
		if(LuaQueryTask("T322") ==0 and level >=14 and LuaQueryTask("T321") ==99) then
			AddTopSayMenuItem("叔侄之情【剧情】","T322") 
			havetask =1
			end
		if(LuaQueryTask("T323")==0 and level >=12) then
			AddTopSayMenuItem("治世之道【剧情】","T323") 
			havetask =1
			end
--		if(LuaQueryTask("T324")==0 and LuaQueryTask("T323")==99) then
--			AddTopSayMenuItem("治世之道2【剧情】","T324") 
--			havetask =1
--			end
--		if(LuaQueryTask("T322") ==99 and LuaQueryTask("T326")==0)then
--			AddTopSayMenuItem("天师道【剧情】","T326")
--			havetask=1
--		end
		if(LuaQueryTask("T325") ==0 and level >=10 and level <16) then
			AddTopSayMenuItem("拱卫王都【循环】","T325") 
			havetask =1
			end	
			-------------------------------------
		if(LuaQueryTask("T325") ==1 ) then
			AddTopSayMenuItem("@2拱卫王都【循环】@0","T325") 
			havetask =4
			end
			 
--		if(LuaQueryTask("T324")==1) then
--			AddTopSayMenuItem("@2治世之道2【剧情】","T324") 
--			havetask =4
--			end
		if(LuaQueryTask("T323")==1) then
			AddTopSayMenuItem("@2治世之道【剧情】","T323") 
			havetask =4
			end
	-------------------------------------
		if((LuaQueryTask("Tsnpc_29")==1 or LuaQueryTask("Tsnpc_29")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_29")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_29")==1 or LuaQueryTask("Tenpc_29")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_29")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_13")==1 or LuaQueryTask("TfindNPC_13")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_13")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
		if(LuaQueryTask("Tbprw003")==1 or LuaQueryTask("Tbprw003")==2)then
			AddTopSayMenuItem("@2探听风云【每日】@0","Tbprw003")
			havetask=2
		end
-- 		if(LuaQueryTask("T326")>0 and LuaQueryTask("T326")<99)then
--			AddTopSayMenuItem("@2天师道【剧情】","T326")
--		end
		if(LuaQueryTask("T352")==1 or LuaQueryTask("T352")==2)then
			AddTopSayMenuItem("@2破敌之策【剧情】","T352")
			if( LuaQueryTask("T352")==1)then
			havetask=2
			end
		end
		if(LuaQueryTask("T267")==2 or LuaQueryTask("T267")==1) then
			AddTopSayMenuItem("@2贤臣桓冲【剧情】","T267") 
			havetask =2
			end
		if(LuaQueryTask("T322") ==1 or LuaQueryTask("T322")==2 or LuaQueryTask("T322")==3) then
			AddTopSayMenuItem("@2叔侄之情【剧情】@0","T322") 
			if(LuaQueryTask("T322")==2) then
			havetask =2
			end
		end
		if(LuaQueryTask("T321") ==1 ) then
			AddTopSayMenuItem("@2桓氏家族【剧情】@0","T321") 
			if(LuaQueryTask("T321B")==99 ) then 
			havetask =2
			end
		end 
		if(LuaQueryTask("T358")>1 and LuaQueryTask("T358")<99) then
			AddTopSayMenuItem("@2桓玄之志【剧情】","T358") 
			if(LuaQueryTask("T358")==2)then
			havetask =2
			end
		end
		if(LuaQueryTask("T302")==3 and LuaQueryTask("T302C")==0) then
			AddTopSayMenuItem("@2每日信使@0","T302C")
			havetask =2
		end

		if(LuaQueryTask("T41")== 1)then
			AddTopSayMenuItem("@2物品合成【教程】","T41")
			havetask =2
		end
	
		

-------------↓↓固定↓↓
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
-------------↑↑固定↑↑    
elseif(answer=="liaotian") then
	LuaSay("桓冲：唉...我那侄儿@3桓玄@0继承了大哥@3桓温@0的性格，不知道是福还是祸啊。")

elseif(answer=="T302C") then
	   if(LuaQueryTask("T302C")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
	   LuaSay("桓冲：唔...知道了!")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302C",99)
	   UpdateMenu()
	   end

-------------------------------------------------------------命运的眷顾任务开始
elseif(answer=="T320") then  
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("320Taskday")) then
		LuaSetTask("T320",0)
		LuaSetTask("320dotime",0)
		LuaSetTask("lunshu",0)
	end
	if(LuaQueryTask("T320")==99) then
		LuaSay("桓冲：你已经做过了@3命运的眷顾@0任务，要送死也不用这么着急呀，明天再来吧@!")
		if(LuaQueryTask("Thx2")==3) then
			if(LuaQueryTask("Thx2C")==0) then
				LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
				LuaSetTask("Thx2C",99)
			end
		end
	end
	if(LuaQueryTask("T320")==0) then
		LuaSay("桓冲：从来就没有救世主，也不靠神仙和皇帝，想要变得更强吗？那就用你的生命来换取吧@!")
		LuaSay("桓冲：小赌怡情，大赌发家，现在不搏，更待何时！")
		LuaSay("桓冲：只要你@3连续4次@0猜中我手中铜钱的@3正反面@0，就会得到@3铜钱@0和@3大量经验@0，而这样的好事每天有@35次机会@0哦")
		LuaSetTask("320Taskday",GetCurrentDay())
		LuaSay("桓冲：你猜这枚铜钱是@3正面@0还是@3反面@0")
		AddMenuItem("选择列表","","")
		AddMenuItem("正面","zheng","")
		AddMenuItem("反面","fan","")

	end

elseif(answer=="zheng" and LuaQueryTask("T320")<99) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r = LuaRandom(2)
	if(LuaQueryTask("320dotime")<4) then           
		if(LuaQueryTask("lunshu")<3) then            
			if(r==0) then
				  LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
				  LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
				  LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
				  LuaAddTask("320dotime",1)                
				  LuaDelTask("lunshu")
				  LuaSet("hp",0)
				  FlushMyInfo("0")
				  if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
						LuaSetTask("Thx2C",99)
					end
				  end
			  else
				LuaSay("桓冲：算你还有点人品，不过可要经过@34轮赌命@0活下来才算通过哦@!，继续赌@!")
				LuaAddTask("lunshu",1)                    
				AddMenuItem("选择列表","","")
				AddMenuItem("正面","zheng","")
				AddMenuItem("反面","fan","")
			  end
		   else
	 
			if(r==0) then
				LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
				LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
				LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
				LuaAddTask("320dotime",1)                 
				LuaDelTask("lunshu")
				LuaSet("hp",0)
				FlushMyInfo("0")
				if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
						LuaSetTask("Thx2C",99)
					end
				end
			else
				LuaSay("桓冲：你可真是强人啊，居然能够通过连续4轮赌命@!")
				LuaSetTask("T320",99)
				if(LuaRandom(4)==0) then
					LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你")
					LuaGive("o_box002",1,"Tdiaoyutg")
				end
				if(LuaQueryTask("Thx2")==3) then
					if(LuaQueryTask("Thx2C")==0) then
						LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
						LuaSetTask("Thx2C",99)
					end
				end
				local jingyan=(35000+level^2*30)*4
				LuaAddJx("combat_exp",jingyan,"T320")
				LuaGive("coin",10000,"T320")
				local r1=LuaRandom(4)
				if(r1==0) then
				LuaGive("e_clothes011",1,2,"T320") 
				elseif(r1==1) then
				LuaGive("e_earring003",1,2,"T320")
				elseif(r1==2) then
				LuaGive("e_shoes006",1,2,"T320") 
				elseif(r1==3) then
				LuaGive("e_pants010",1,2,"T320")      
				LuaDelTask("320dotime")
				LuaDelTask("lunshu")
				end
			end
		end
	else
	
	if(LuaQueryTask("lunshu")<3) then
		if(r==0) then
			LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
			LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
			LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
			LuaSetTask("T320",99)
			LuaDelTask("320dotime")
			LuaDelTask("lunshu")                
			LuaSet("hp",0)
			FlushMyInfo("0")
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
				LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
				LuaSetTask("Thx2C",99)
				end
			end
		else
			LuaSay("桓冲：算你还有点人品，不过你只有这最后一次机会了，可有经过@34次赌命@0活下来才算通过哦@!，继续赌吧@!")
			LuaAddTask("lunshu",1)
			AddMenuItem("选择列表","","")
			AddMenuItem("正面","zheng","")
			AddMenuItem("反面","fan","")
		end
	else
		if(r==0) then
			LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
			LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
			LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
			LuaAddTask("320dotime",1)
			LuaSetTask("T320",99)
			LuaSet("hp",0)
			FlushMyInfo("0")
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
					LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
					LuaSetTask("Thx2C",99)
				end
			end
		else
			LuaSay("桓冲：你可真是强人@!，居然最后一次机会都被你把握到呢@!")
			LuaSay(""..LuaQueryStr("name").."：看来命运之神终于降临到我的头上了，啊哈哈哈哈@!")
			LuaSay("桓冲：老夫告诉你个秘密哦，@4建康城南@0的@3刘裕@0那有隐藏的@3小赌怡情@0玩法哦，需要身上的铜币达到1W、5W、10W才能开启哟~")
			if(LuaRandom(4)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			if(LuaQueryTask("Thx2")==3) then
				if(LuaQueryTask("Thx2C")==0) then
				LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
				LuaSetTask("Thx2C",99)
				end
			end
			LuaSetTask("T320",99)
			local jingyan=(35000+level^2*20)*4
			LuaAddJx("combat_exp",jingyan,"T320")
			LuaGive("coin",10000,"T320")
			local r1=LuaRandom(4)
				  if(r1==0) then
				  LuaGive("e_clothes011",1,2,"T320") 
				  elseif(r1==1) then
				  LuaGive("e_earring003",1,2,"T320")
				  elseif(r1==2) then
				  LuaGive("e_shoes006",1,2,"T320") 
				  elseif(r1==3) then
				  LuaGive("e_pants010",1,2,"T320") 
				  LuaDelTask("320dotime")
				  LuaDelTask("lunshu")
				  end
				  LuaDelTask("320dotime")
				  LuaDelTask("lunshu")
		end
	   end
	end
	

elseif(answer=="fan" and LuaQueryTask("T320")<99) then
	 local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local  r = LuaRandom(2)
    if(LuaQueryTask("320dotime")<4) then           ------------------5次以内
      if(LuaQueryTask("lunshu")<3) then            ------------------4轮以内
         if(r==0) then
	  LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
	  LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
	  LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
          LuaAddTask("320dotime",1)                ----------------没挂掉1次，次数加1，当为5时，玩家不能再进行赌命
          LuaDelTask("lunshu")
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("桓冲：算你还有点人品，不过可要经过@34轮赌命@0活下来才算通过哦@!，继续赌@!")
          LuaAddTask("lunshu",1)                    --------------lunshu，每通过一次，轮数加1，轮数到5为胜利即得到奖励
	      AddMenuItem("选择列表","","")
          AddMenuItem("正面","zheng","")
          AddMenuItem("反面","fan","")
	      end
	   else

	   if(r==0) then
	  LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
	  LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
	  LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
          LuaAddTask("320dotime",1)                 ----------------dotime是指任务完成次数 time是指完成任务的时间
          LuaDelTask("lunshu")
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("桓冲：你可真是强人啊，还没有用完@35次机会@0就成功了，难道阁下就是那传说中有名的咸猪手@!")
          LuaSetTask("T320",99)
          if(LuaRandom(4)==0) then
		  LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你")
		  LuaGive("o_box002",1,"Tdiaoyutg")
		  end
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          local jingyan=(35000+level^2*20)*4
          LuaAddJx("combat_exp",jingyan,"T320")
          LuaGive("coin",10000,"T320")
          local  r1=LuaRandom(4)
          if(r1==0) then
          LuaGive("e_clothes011",1,2,"T320") 
          elseif(r1==1) then
          LuaGive("e_earring003",1,2,"T320")
          elseif(r1==2) then
          LuaGive("e_shoes006",1,2,"T320") 
          elseif(r1==3) then
          LuaGive("e_pants010",1,2,"T320")   
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
          end
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
	   end
	   end
	else
      if(LuaQueryTask("lunshu")<3) then
         if(r==0) then
	  LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
	  LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
	  LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
          LuaSetTask("T320",99)
          LuaDelTask("320dotime")
		  LuaDelTask("lunshu")                --------------------玩家挂掉以后，要清空赌博胜利的轮数
          LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("桓冲：算你还有点人品，不过你只有这最后一次机会了，可要经过@34次赌命@0活下来才算通过哦@!，继续赌吧@!")
          LuaAddTask("lunshu",1)
	      AddMenuItem("选择列表","","")
          AddMenuItem("正面","zheng","")
          AddMenuItem("反面","fan","")
	      end
	   else

	   if(r==0) then
	  LuaSay("桓冲：可惜你猜错了，你可真衰啊，可怜的孩子@!建议你@7正常复活@0再来试试自己的运气吧，@1原地复活需要花费不少铜币@0哦。")
	  LuaSay("桓冲：不过呢，在统一的世界，越不怕死，得经验和升级必然越快，成就统一大业指日可待。")
	  LuaSay("桓冲："..LuaQueryStr("name").."，我看你是个可造之材，每天到我这里来练习下不怕死的胆量。只有勇敢的人，才能一统天下。")
          LuaAddTask("320dotime",1)
          LuaSetTask("T320",99)
		  LuaSet("hp",0)
          FlushMyInfo("0")
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          else
          LuaSay("桓冲：你可真是强人@!，居然最后一次机会都被你把握到呢@!")
          LuaSay(""..LuaQueryStr("name").."：看来命运之神终于降临到我的头上了，啊哈哈哈哈@!")
          LuaSetTask("T320",99)
          if(LuaRandom(4)==0) then
		  LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你")
		  LuaGive("o_box002",1,"Tdiaoyutg")
		  end
          if(LuaQueryTask("Thx2")==3) then
           if(LuaQueryTask("Thx2C")==0) then
	      LuaSay("提示：你已经完成环形任务第三环，快去回复司马元显吧。@!")
          LuaSetTask("Thx2C",99)
	      end
	      end
          local jingyan=(35000+level^2*20)*4
          LuaAddJx("combat_exp",jingyan,"T320")
          LuaGive("coin",10000,"T320")
          local  r1=LuaRandom(4)
          if(r1==0) then
          LuaGive("e_clothes011",1,2,"T320") 
          elseif(r1==1) then
          LuaGive("e_earring003",1,2,"T320")
          elseif(r1==2) then
          LuaGive("e_shoes006",1,2,"T320") 
          elseif(r1==3) then
          LuaGive("e_pants010",1,2,"T320")      
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
          end
		  LuaDelTask("320dotime")
          LuaDelTask("lunshu")
	   end
	   end
	end

---------------------------------------------------------------命运的眷顾任务结束

		
elseif(answer=="T267") then    ------------------------贤臣桓冲 
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("T267")==2 or LuaQueryTask("T267")==1) then
		LuaSay("桓冲：亏得刘裕这小子记挂了，此次桓某定不负华夏天恩，先灭天师，再征蛮夷。")
		LuaSetTask("T267",2)
		    AddMenuItem("@7任务完成","")
	            AddMenuItem("领取奖励","T267jl")
		end 
			elseif(answer=="T267jl")then	            
		       if(LuaQueryTask("T267")==2)then
				LuaSetTask("T267",99) 
				DelItem("o_mission004",LuaItemCount("o_mission004"))
				LuaAddJx("combat_exp",24730,"T267")               
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("267") 
				UpdateMenu() 
				end

elseif(answer=="T325") then                   --------------------拱卫王都
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("T325") == 0 ) then 
				LuaSay("桓冲：北方@3苻坚@0百万大军压境，南方可不能再出什么乱子了，拱卫王都是老夫的责任。英雄可愿帮忙？")
				LuaSay("桓冲：帮我消灭@210只金蛊和5只幼貂@0即可。@115级以下可获得双倍经验奖励@0。")
				LuaSetTask("task_kill/mon_007/T325",1)
				LuaSetTask("task_kill/mon_008/T325",1)
				LuaSetTask("T325",1)                
				AddLog("拱卫王都【剧情】",325)
				UpdateTopSay("消灭金蛊和幼貂各10只后回复")
				UpdateMenu() 

		elseif(LuaQueryTask("T325") == 1 ) then
			local a=(LuaQueryTask("task_kill/mon_007/T325")-1)
			local b=(LuaQueryTask("task_kill/mon_008/T325")-1)
			if(a>= 5 and b>= 5 ) then
				LuaSay("桓冲：杀了这么多的@2金蛊和幼貂@0，怎么一眼望去，还是这么多啊。")
				LuaSay("桓冲：看来想要清理这道路可不是一天两天的事，还望能够继续帮我啊。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T325jl")
			else
				LuaSay("桓冲：你已经击杀了@2"..a.."只金蛊，"..b.."只幼貂@0，杀够了@25只金蛊和5只幼貂@0再来找我吧！@115级以下可获得双倍经验奖励@0。")
			end
		end
              elseif(answer=="T325jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
                AddMenuItem("奖励选择","","")
		AddMenuItem("经验奖励","exp","")
                AddMenuItem("金钱奖励","money","")
			elseif(answer=="exp") then
			local level=LuaQuery("level")
				if(level>80)then
		level=80
	end
  				if(LuaQueryTask("T325")==1) then
				if(LuaQueryTask("task_kill/mon_007/T325") >= 11 and LuaQueryTask("task_kill/mon_008/T325") >= 11 ) then
				LuaDelTask("task_kill/mon_008/T325")
				LuaDelTask("task_kill/mon_007/T325")
				if(level <15) then
					local jingyan
					if(LuaQueryTask("T325_first")~=1)then
						jingyan=((13000*2+level^2*40)*1.4)
					else
						jingyan=(13000*2+level^2*40)
					end
					LuaAddJx("combat_exp",jingyan,"T325")
					if(LuaQueryTask("T235_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T235_a",99)
						LuaSetTask("T325_first",1)
					end	
				else
					local jingyan1
					if(LuaQueryTask("T325_first")~=1)then
						jingyan1=((13000+level^2*20)*1.4)
					else
						jingyan1=(13000+level^2*20)
					end
					LuaAddJx("combat_exp",jingyan1,"T325")
					if(LuaQueryTask("T235_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T235_a",99)
						LuaSetTask("T325_first",1)
					end	
				end
				LuaSetTask("T325",0)
				DelLog("325")
				UpdateMenu()
				end
				end



				elseif(answer=="money") then
				local level= LuaQuery("level")
					if(level>80)then
		level=80
	end
	  			if(LuaQueryTask("T325")==1) then
				if(LuaQueryTask("task_kill/mon_007/T325") >= 11 and LuaQueryTask("task_kill/mon_008/T325") >= 11 ) then
				if(GetCurrentDay()~=LuaQueryStrTask("325Taskday")) then
				LuaSetTask("T325dotime",0)
				end
				LuaDelTask("task_kill/mon_008/T325")
				LuaDelTask("task_kill/mon_007/T325")
				  if(LuaQueryTask("T325dotime")<10) then
				   LuaSetTask("325Taskday",GetCurrentDay())
				   LuaAddTask("T325dotime",1)
				   LuaGive("coin",600,"T325")
				   LuaSetTask("T325",0)
				   DelLog("325")
				   UpdateMenu()
				   else
				   LuaSay("桓冲：你今天已经领了10次金钱奖励，只能得到经验奖励了。")
				   if(level <15) then
				   local jingyan=(13000*2+level^2*40)
				   LuaAddJx("combat_exp",jingyan,"T325")
				   LuaAddAchievementSchedule("Task_num",1)	
				   else
				   local jingyan1=(13000+level^2*20)
				    LuaAddJx("combat_exp",jingyan1,"T325")
					LuaAddAchievementSchedule("Task_num",1)	
				    end
				    LuaSetTask("T325",0)
				    DelLog("325")
				   UpdateMenu()
				   end
				   end
				   end

elseif(answer=="T321") then             ---------------桓氏家族
	local level= LuaQuery("level")
		if(LuaQueryTask("T321") == 0 ) then 
			LuaSay("桓冲：想当年，我桓家乃是大晋的第一大家。大哥@3桓温@0一人之下万人之上。三次北伐打的胡人闻风丧胆！")
			LuaSay("桓冲：只是他终于被利欲蒙蔽了心智，企图废帝自立。大哥死前说将遗愿留于@4建康东郊@0的@3木箱@0之中，劳烦英雄帮我去找找。")
			LuaSetTask("T321",1) 
			AddLog("桓氏家族【剧情】",321)
			UpdateTopSay("去搜查建康东郊的箱子")
			UpdateMenu()
			UpdateNPCMenu("muxiang03")
		elseif(LuaQueryTask("T321")==1) then
			if(LuaQueryTask("T321B")==99 ) then 	
			LuaSay("桓冲：遗嘱上说，老夫一生为国，无奈被@3谢安@0等人阻挠，不然早已是九五至尊，老夫遗愿望玄儿能登大殿。")
			LuaSay("桓冲：唉，大哥，你到死都还对自己的叛逆执迷不悟吗？这个遗嘱可不能让玄儿看到了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T321jl")
			else
			LuaSay("桓冲：去找@4建康东郊@0的@3箱子@0，将里面大哥的@2遗嘱@0带回给我。@!")
			end 
		end
			elseif(answer=="T321jl")then	
		       if(LuaQueryTask("T321")==1 and LuaItemCount("o_mission002")>=1)then
				LuaSetTask("T321",99) 
				DelItem("o_mission002",1)
				LuaAddJx("combat_exp",40590,"T321") 
				LuaGive("e_head005",1,1,"T321")          --13级鞋子
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("321") 
				UpdateMenu() 
				end


elseif(answer=="T322") then              ------------------------叔侄之情
		if(LuaQueryTask("T322")==0) then
		LuaSay("桓冲：大哥豪气冲天，数次北伐，打的胡人闻风丧胆，可惜之后逼迫@3晋帝@0退位不成，郁郁而终。")
		LuaSay("桓冲：小侄@3桓玄@0完全继承了其父之风，真怕他那豪爽不羁的性格会做出与大哥同样的错事来啊。")
		LuaSay("桓冲：谢家乃书香世家，希望阁下帮我去找@4建康城南@0的@3谢安@0求一修身养性之道，好让我侄儿转转性。")
		LuaSetTask("T322",1)
		UpdateTopSay("去找建康城南的谢安吧")
                AddLog("叔侄之情【剧情】",322)
                UpdateMenu()
		elseif(LuaQueryTask("T322")==1) then
		LuaSay("桓冲：找@4建康城南@0的@3谢安@0求得一个修身养性之法。")
		elseif(LuaQueryTask("T322")==2 ) then  
		LuaSay("桓冲：好好，还请阁下将这本@2道德经@0转赠给我侄儿@3桓玄@0，他就在@4五斗山@0，@2向右走@0即可前往。")
                LuaSetTask("T322",3)
		UpdateTopSay("去找五斗山的桓玄吧")
                AddLog("叔侄之情【剧情】",322)
                UpdateMenu()
		elseif(LuaQueryTask("T322")==3) then
		LuaSay("桓冲：将@2道德经@0转赠给我侄儿，他就是@4五斗山@0的@3桓玄@0，@2向右走@0即可前往。")
		end 

elseif(answer=="T323") then                ---------------------------治世之道【剧情】
		if(LuaQueryTask("T323")==0) then
				LuaSay("桓冲：蛮夷入侵，杀我子民，我子民又奋起反抗，杀戮异族子民。受苦的终究是平民百姓啊。")
				LuaSay("桓冲：桓某的治世之道你可想知道，想知的话便先去@2消灭5只幼貂@0吧，它们就在这@4建康东郊@0。")
				if(TeamCount()>=2)then
					LuaSay("桓冲：你还在孤身奋战啊，组队不光能让你更快的完成任务，还有额外的经验加成哦。@!")
				else
					LuaSay("桓冲：如果你能找到朋友一起来完成这个任务，将会有额外的经验奖励哦，无兄弟，不统一@!。")
				end
				LuaSetTask("T323",1)
				LuaSetTask("task_kill/mon_008/T323",1)
				UpdateTopSay("消灭幼貂5只后回复我")
				AddLog("治世之道【剧情】",323)
				UpdateMenu()
		elseif(LuaQueryTask("T323")==1) then
			local c=LuaQueryTask("task_kill/mon_008/T323")-1
			if(LuaQueryTask("task_kill/mon_008/T323")>=5) then
				LuaSay("桓冲：恩，做的好，过会你便会发现一些惊奇之处了！@!")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T323jl")
   
			else 
				LuaSay("桓冲：你才消灭了@2"..c.."只@0幼貂，请消灭@25只@0后再来找我。它们就在这@4建康东郊@0。")
			end
		end 
			  elseif(answer=="T323jl")then	
		         if(LuaQueryTask("T323")==1) then			
				if(LuaQueryTask("task_kill/mon_008/T323")>=5) then
					LuaSetTask("T323",99)
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",40660,"T323")
					else
						LuaAddJx("combat_exp",33660,"T323")
					end
					LuaAddAchievementSchedule("Task_num",1)	
					LuaDelTask("task_kill/mon_008/T323")
					DelLog("323")
					UpdateMenu()
				end
			end

elseif(answer=="T324") then                 -------------------------治世之道2【剧情】
		if(LuaQueryTask("T324")==0) then
				LuaSay("桓冲：阁下可还记得你消灭了不少幼貂？不错，幼貂数量减少了，可是没了天敌的金蛊疯狂繁殖，总会成害。")
				LuaSay("桓冲：还请你去消灭@25只金蛊@0，再来回复我吧，它们就在这@4建康东郊@0。")
				LuaSetTask("T324",1)
				LuaSetTask("task_kill/mon_007/T324",1)
				UpdateTopSay("消灭金蛊5只后回复我")
				AddLog("治世之道2【剧情】",324)
				UpdateMenu()
		elseif(LuaQueryTask("T324")==1) then
		d=LuaQueryTask("task_kill/mon_007/T324")-1
			if(LuaQueryTask("task_kill/mon_007/T324")>=5) then
				LuaSay("桓冲：做得好！这样就平衡了。治世也如此，汉人蛮人都是一家人，血腥杀戮总不是解决之道。@!")
				LuaSay("桓冲：年轻人，如你有心，用你手中的武器将这血腥杀戮的世界变成天下一家的极乐之土吧。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T324jl")
			else 
				LuaSay("桓冲：你才消灭@2"..d.."只@0金蛊，快在@4建康东郊@0消灭@25只@0再来找我吧。")
			end
		end 
			  elseif(answer=="T324jl")then	
		        if(LuaQueryTask("T324")==1) then			
			if(LuaQueryTask("task_kill/mon_007/T324")>=5) then
				LuaSetTask("T324",99)
				LuaAddJx("combat_exp",33660,"T324")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaDelTask("task_kill/mon_007/T324")
				DelLog("324")
				UpdateMenu()
				end
				end

elseif(answer=="T358")then                      -----------------------------------桓玄之志【剧情】
	if(LuaQueryTask("T358")==2)then
	LuaSay("桓冲：唉，还是瞒不过他，如今民族存亡之际，外有蛮夷内有妖道，怎是考虑这些个人恩怨的时候？")
	LuaSay("桓冲：况且，我看着侄儿长大，不希望他被仇恨蒙蔽了心智。你去转告我那在@4五斗山@0的侄儿@3桓玄@0吧。")
	UpdateTopSay("转告五斗山的桓玄")
	LuaSetTask("T358",3)
	AddLog("桓冲之志【剧情】",358)
	UpdateMenu()
	elseif(LuaQueryTask("T358")==3)then
	LuaSay("桓冲：还在转悠什么，去回复@4五斗山@0的@3桓玄@0吧。")
	end

-------------------------------------------天师道
	elseif(answer=="T326")then
	    if(LuaQueryTask("T326")==0)then
	    	LuaSay("桓冲：你这孩子还不错，如今这战乱年代能活下来实属不易，我的侄子@3桓玄@0正在围剿天师道妖人，你去@4五斗山@0找他吧")
       	 	LuaSay(""..LuaQueryStr("name").."：自古英雄出少年，时势造英雄，我一定要去看看。")
        	LuaSetTask("T326",1)
		AddLog("天师道【剧情】",326)
		UpdateTopSay("去五斗山找桓玄")
		UpdateMenu()
	    else
		LuaSay("桓冲：乱世出英雄，你去我侄子@3桓玄@0那里锻炼吧，他就在@4五斗山@0")
            end
		
		
		
-------------------------------------------------  破敌之策
elseif(answer=="T352")then
	if(LuaQueryTask("T352")==1)then
		LuaSay("桓冲：我知道是我侄子让你来的吧，知己知彼，方能百战百胜。回去告知他吧。")
		LuaSetTask("T352",2)
		AddLog("破敌之策【剧情】",352)
		UpdateTopSay("回复五斗山的桓玄")
		UpdateMenu()
	elseif(LuaQueryTask("T352")==2)then
		LuaSay("桓冲：知己知彼，方能百战百胜。回去告知@4五斗山@0的@3桓玄@0吧。")
	end

---------------------------------------------探听风云
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==1)then
			LuaSay(LuaQueryStr("name").."：在下远道而来，特向您请教习武之道！")
			LuaSay("桓冲：习武之道，最忌讳心急，要想成就大业，需心平气和，循序渐进方可练就奇功！快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！。")
			LuaSetTask("Tbprw003",2)
			UpdateMenu()
		elseif(LuaQueryTask("Tbprw003")==2)then
			LuaSay("桓冲：快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
		end
	else
		LuaSay("桓冲：由于你昨天的@2探听风云【每日】未完成，现在自动重置，到@4晋帝@0那重新接任务吧！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end


--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_13")==1)then
					LuaSay("桓冲：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_13",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_13")==2)then
					LuaSay("桓冲：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_13",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("桓冲：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("桓冲：你已经将一半的江山画卷送到了我的手上，快去找谢琰领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end
	                                          ---------------------合成2级毛
	 elseif(answer=="T41") then
	   if(LuaQueryTask("T41")==1) then
		if(LuaItemCount("o_material_12")>0) then
		LuaSay("桓冲：你真是聪明啊，这么快就合成了1个2级毛。这是给你的奖励！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T41jl")
		else
		LuaSay("桓冲：你还没有合成@22级毛@0呢，点击背包里的@22级材料合成书@0就可以合成了。")
		UpdateTopSay("使用合成书合成1个2级毛")
		end
	   end
    elseif(answer=="T41jl")then
      if(LuaQueryTask("T41")== 1) then
        LuaAddJx("combat_exp",25000,"T41")--原奖励
	LuaGive("e_necklace001",1,1,"T41")
	LuaGive("coin",400,"T41")
        LuaSetTask("T41",99)
        DelLog("41")
        UpdateMenu()
	end

elseif(answer=="Tsnpc_29")then
	if(LuaQueryTask("Tsnpc_29")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("桓冲：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_29",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_29")==2)then
		LuaSay("桓冲：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_29")then
	if(LuaQueryTask("Tenpc_29")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("桓冲：这都是大人的功劳啊")
		LuaSetTask("Tenpc_29",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_29")==2)then
		LuaSay("桓冲：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end
