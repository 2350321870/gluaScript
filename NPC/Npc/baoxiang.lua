NPCINFO = {
serial= "142" ,
base_name="baoxiang",
icon= 2589,
NpcMove=2589,
name= "����" , --NPC��
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE" , 
LuaType=1,
--lastsay="����",
}
function do_talk(answer)
if (answer=="ask") then
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@3�򿪱���","open")	
	AddTopSayMenuItem("��ֵı���","qiguai")		

elseif(answer=="open")then 
if(LuaQueryTask("alopen")~=1)then
	if(LuaItemCount("o_mission217")>=1)then
		if(LuaQueryTask("luck")==1)then
			local r1=LuaRandom(3)
			if(r1==0)then
				LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Txmg1") --3����������һ  
			elseif(r1==1)then
				LuaGive("coin",3000+LuaRandom(2000),"Txmg1")
			elseif(r1==2)then
				LuaGive("o_cangbaotu",1,"Txmg1")
			end
			LuaGive("o_drug_hp4",5+LuaRandom(5),"Txmg1")
			LuaGive("o_drug_mp4",5+LuaRandom(5),"Txmg1")
			LuaDelTask("luck")
		else
			local r2=LuaRandom(10)

			if(r2<4)then
				LuaGive("o_material_"..(12+9*LuaRandom(6)).."",1,"Txmg1") --2����������һ     2/5
			elseif(r2<6)then
				
				LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Txmg1") --3����������һ     1/5
			elseif(r2==7)then
				LuaGive("o_cangbaotu",1,"Txmg1")                          --�ر�ͼ            1/10
			end
			LuaGive("o_drug_hp4",3,"Txmg1")
			LuaGive("o_drug_mp4",3,"Txmg1")
		end
		DelItem("o_mission217",1)
		LuaSetTask("alopen",1)
	else
		LuaSay("��ʾ��û��Կ�ף��ٷ����ı���Ҳ���̲����ģ�")
	end
else
	LuaSay("�Թ�ʹ�ߣ����Ѿ��򿪹��˱�����")
end
elseif(answer=="qiguai")then
	LuaSay("��ֵı��������ƺ�װ��ʲô������")
	

end
LuaSendMenu()
return 1
end    	