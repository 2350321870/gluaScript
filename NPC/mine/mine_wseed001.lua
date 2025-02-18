NPCINFO = {
name="玉带草",
butt="0|0|32",
isboss = 2,
serial= "950" ,
icon= 10500,
NpcMove= 10500,
iconaddr= 1,
maxnum=3,
booty= "o_material_38|o_material_38|o_mission153",
getrate= 90,
bootyrate="10|99|100",
gettime= 1,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("Tyuanx_qr")==2) then
      if(LuaQueryTask("yuanx_ws")==0) then
		 	if(TeamCount()==2) then
		 	   local mapname=MapName()
				LuaSetTask("yx_mapws",mapname)
		 	    if(LuaQueryStr("id")==TeamQueryStrTask("yuanx_tvid")) then
		 	    	  if(TeamQueryStrTask("yx_mapws")==mapname) then
		 	    	  		local r=LuaRandom(2)
							if(r==1) then
			 	    	  		LuaSay("提示：【浪漫之旅】活动中@5采集1次玉带草@0任务完成")
			 	    	  		LuaSetTask("yuanx_ws",1)
			 	    	  		LuaAddTask("yuanx_tvnum",1)
			 	    	  		if(LuaQueryTask("yuanx_tvnum")>=4) then
			 	    	  	    	  LuaSetTask("Tyuanx_qr",3)
              						  LuaSay("提示：你已经完成了【浪漫之旅】，你队友也完成之后，一起回去找活动使者吧")
								end
			 	    	  		LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        else
		 	    	        	LuaSay("提示：【浪漫之旅】活动中的@5采集玉带草@0失败，请重新采集")
		 	    	        	LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        end
		 	    	  else
		 	    	  	  LuaSay("提示：你的队友还没有采集玉带草，督促下他吧")
		 	    	  	  LuaOtherSendMenu()
		 	    	  	  return 1
					  end
			    else
					LuaSay("提示:你的队友不是和你一起报名参加【浪漫之旅】的人，找到和你一起报名的人才可以继续任务")
					LuaOtherSendMenu()
					return 1
				end
			else
				LuaSay("提示：参与【浪漫之旅】活动期间的采集玉带草，必须2人组队")
				LuaOtherSendMenu()
				return 1
			end
	 else
	 	  LuaSay("提示：【浪漫之旅】活动中@5采集1次玉带草@0任务已经完成")
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