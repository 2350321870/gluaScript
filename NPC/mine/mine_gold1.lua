NPCINFO = {
isboss = 2,
name="劣质金矿" ,
butt="0|0|24",
serial= "904" ,
icon= 10004,
NpcMove= 10004, 
iconaddr= 1, 
maxnum=4,--获得的物品种类数必须大于booty字段中物品种类 
booty= "o_material_47|o_material_56|o_material_57|o_mission145",--1级矿:15|1级晶:50|2级晶:30|F5
getrate= 90,--获得几率
bootyrate="20|70|99|100",
gettime= 5,--可获得次数
getlevel= 2,--获得需要挖掘最低等级
candig=1,--初始化能不能挖
act=1,--???
ondig=1,
}
function OnDig()
if(LuaQueryTask("Tyuanx_qr")==2) then
      if(LuaQueryTask("yuanx_gd")==0) then
		 	if(TeamCount()==2) then
		 		local mapname=MapName()
				LuaSetTask("yx_mapgd",mapname)
		 	    if(LuaQueryStr("id")==TeamQueryStrTask("yuanx_tvid")) then
		 	    	  if(TeamQueryStrTask("yx_mapgd")==mapname) then
		 	    	  		local r=LuaRandom(2)
							if(r==1) then
			 	    	  		LuaSay("提示：【浪漫之旅】活动中@5采集一次劣质金矿@0任务完成")
			 	    	  		LuaSetTask("yuanx_gd",1)
			 	    	  	    LuaAddTask("yuanx_tvnum",1)
			 	    	  	    if(LuaQueryTask("yuanx_tvnum")>=4) then
			 	    	  	    	  LuaSetTask("Tyuanx_qr",3)
								   	  LuaSay("提示：你已经完成了【浪漫之旅】，你队友也完成之后，一起回去找活动使者吧")
								end
			 	    	  		LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        else
		 	    	        	LuaSay("提示：【浪漫之旅】活动中的@5采集劣质金矿@0失败，请重新采集")
		 	    	        	LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        end
		 	    	  else
		 	    	  	  LuaSay("提示：你的队友还没有采集劣质金矿，督促下他吧")
		 	    	  	  LuaOtherSendMenu()
		 	    	  	  return 1
					  end
			    else
					LuaSay("提示:你的队友不是和你一起报名参加【浪漫之旅】的人，找到和你一起报名的人才可以继续任务")
					LuaOtherSendMenu()
					return 1
				end
			else
				LuaSay("提示：参与【浪漫之旅】活动期间的采集劣质金矿，必须2人组队")
				LuaOtherSendMenu()
				return 1
			end
	 else
	 	  LuaSay("提示：【浪漫之旅】活动中@5采集一次劣质金矿@0任务已经完成")
	 	  LuaOtherSendMenu()
	 	  return 1
	 end
elseif(LuaQueryTask("Tyuanx_qr")==1) then
	 LuaSay("提示：你还未接取【浪漫之旅】任务")
	 LuaOtherSendMenu()
	 return 1
elseif(LuaQueryTask("Tyuanx_qr")==3) then
 LuaSay("提示：你已经完成了【浪漫之旅】，你队友也完成之后，一起回去找活动使者吧")
	 LuaOtherSendMenu()
	 return 1
end



return 0
end