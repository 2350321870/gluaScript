NPCINFO = {
isboss = 2,
name="���ʽ��" ,
butt="0|0|24",
serial= "904" ,
icon= 10004,
NpcMove= 10004, 
iconaddr= 1, 
maxnum=4,--��õ���Ʒ�������������booty�ֶ�����Ʒ���� 
booty= "o_material_47|o_material_56|o_material_57|o_mission145",--1����:15|1����:50|2����:30|F5
getrate= 90,--��ü���
bootyrate="20|70|99|100",
gettime= 5,--�ɻ�ô���
getlevel= 2,--�����Ҫ�ھ���͵ȼ�
candig=1,--��ʼ���ܲ�����
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
			 	    	  		LuaSay("��ʾ��������֮�á����@5�ɼ�һ�����ʽ��@0�������")
			 	    	  		LuaSetTask("yuanx_gd",1)
			 	    	  	    LuaAddTask("yuanx_tvnum",1)
			 	    	  	    if(LuaQueryTask("yuanx_tvnum")>=4) then
			 	    	  	    	  LuaSetTask("Tyuanx_qr",3)
								   	  LuaSay("��ʾ�����Ѿ�����ˡ�����֮�á��������Ҳ���֮��һ���ȥ�һʹ�߰�")
								end
			 	    	  		LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        else
		 	    	        	LuaSay("��ʾ��������֮�á���е�@5�ɼ����ʽ��@0ʧ�ܣ������²ɼ�")
		 	    	        	LuaOtherSendMenu()
		 	    	        	return 1
		 	    	        end
		 	    	  else
		 	    	  	  LuaSay("��ʾ����Ķ��ѻ�û�вɼ����ʽ�󣬶���������")
		 	    	  	  LuaOtherSendMenu()
		 	    	  	  return 1
					  end
			    else
					LuaSay("��ʾ:��Ķ��Ѳ��Ǻ���һ�����μӡ�����֮�á����ˣ��ҵ�����һ�������˲ſ��Լ�������")
					LuaOtherSendMenu()
					return 1
				end
			else
				LuaSay("��ʾ�����롾����֮�á���ڼ�Ĳɼ����ʽ�󣬱���2�����")
				LuaOtherSendMenu()
				return 1
			end
	 else
	 	  LuaSay("��ʾ��������֮�á����@5�ɼ�һ�����ʽ��@0�����Ѿ����")
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