NPCINFO = {
name="�����",
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
			 	    	  		LuaSay("��ʾ��������֮�á����@5�ɼ�1�������@0�������")
			 	    	  		LuaSetTask("yuanx_ws",1)
			 	    	  		LuaAddTask("yuanx_tvnum",1)
			 	    	  		if(LuaQueryTask("yuanx_tvnum")>=4) then
			 	    	  	    	  LuaSetTask("Tyuanx_qr",3)
              						  LuaSay("��ʾ�����Ѿ�����ˡ�����֮�á��������Ҳ���֮��һ���ȥ�һʹ�߰�")
								end
			 	    	  		LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        else
		 	    	        	LuaSay("��ʾ��������֮�á���е�@5�ɼ������@0ʧ�ܣ������²ɼ�")
		 	    	        	LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        end
		 	    	  else
		 	    	  	  LuaSay("��ʾ����Ķ��ѻ�û�вɼ�����ݣ�����������")
		 	    	  	  LuaOtherSendMenu()
		 	    	  	  return 1
					  end
			    else
					LuaSay("��ʾ:��Ķ��Ѳ��Ǻ���һ�����μӡ�����֮�á����ˣ��ҵ�����һ�������˲ſ��Լ�������")
					LuaOtherSendMenu()
					return 1
				end
			else
				LuaSay("��ʾ�����롾����֮�á���ڼ�Ĳɼ�����ݣ�����2�����")
				LuaOtherSendMenu()
				return 1
			end
	 else
	 	  LuaSay("��ʾ��������֮�á����@5�ɼ�1�������@0�����Ѿ����")
	 	  LuaOtherSendMenu()
	 	  return 1
	 end
elseif(LuaQueryTask("Tyuanx_qr")==1) then
	 LuaSay("��ʾ���㻹δ��ȡ������֮�á�����")
	 LuaOtherSendMenu()
	 return 1
elseif(LuaQueryTask("Tyuanx_qr")==3) then
 LuaSay("��ʾ�����Ѿ�����ˡ�����֮�á��������Ҳ���֮��һ���ȥ�һʹ�߰�")
	 LuaOtherSendMenu()
	 return 1
end

return 0
end