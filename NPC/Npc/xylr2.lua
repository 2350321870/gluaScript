NPCINFO = {
serial="184" ,
base_name="xylr2" ,
icon=2522,
NpcMove=2522,
name="�ھ���תԱ" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="������£��ó�����" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    	havetask =0
        local havetask0=0	--Ĭ��û��
		local havetask1=0	--��̾��
		local havetask2=0	--��ɫ�ʺ�
		--local havetask3=0	--��ɫ�˵�
		local havetask4=0	--��ɫ�ʺ�    
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")   
	if(LuaQueryTask("QLYB")==1) then
	AddTopSayMenuItem("@7ǧ��Ѻ�ڡ�ÿ�ա�@0","QLYB")
	end
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end 
--return 1

elseif(answer=="liaotian") then
	LuaSay("���������װ�������Ȼ���ҳ�����һ˿������ζ����")
elseif(answer=="QLYB") then
if(LuaQueryTask("QLYB")==1) then
	local a=LuaItemCount("o_biaohuo001")
	local b=LuaItemCount("o_biaohuo002")
	local c=LuaItemCount("o_biaohuo003")
	local d=LuaItemCount("o_biaohuo004")
	local e=LuaItemCount("o_biaohuo005")
	local f=LuaItemCount("o_biaohuo006")
	local g=LuaItemCount("o_biaohuo007")
	local h=LuaItemCount("o_biaohuo008")
	local i=LuaItemCount("o_biaohuo009")
	local j=LuaItemCount("o_biaohuo010")
	if(a+b+c+d+e+f+g+h+i+j==0) then
	LuaSay("������û���ڻ���")
	end
	if(a+b>0) then
		if(a+b>20)then
			LuaSay("���һƷ�ڻ���������20����������20�����㣡��õĽ������£�")
			LuaGive("coin",20*1000,"QLYB")
		else
			LuaSay("�������һƷ�ڻ���õĽ������£�")
			LuaGive("coin",(a+b)*1000,"QLYB")		    
		end 
		

	end 
	if(c+d>0) then
		if(c+d>20)then
			LuaSay("���@7��Ʒ@0�ڻ���������20����������20�����㣡��õĽ������£�")
			LuaGive("coin",20*2000,"QLYB")
		else
			LuaSay("�������@7��Ʒ@0�ڻ���õĽ������£�")
			LuaGive("coin",(c+d)*2000,"QLYB")		    
		end
		

	end 
	if(e+f>0) then
		if(e+f>20)then
			LuaSay("���@5��Ʒ@0�ڻ���������20����������20�����㣡��õĽ������£�")
			LuaGive("coin",20*3000,"QLYB")
		else
			LuaSay("�������@5��Ʒ@0�ڻ���õĽ������£�")
			LuaGive("coin",(e+f)*3000,"QLYB")		        
		end
		

	end
	if(g+h>0) then
		if(g+h>20)then
			LuaSay("���@3��Ʒ@0�ڻ���������20����������20�����㣡��õĽ������£�")
			LuaGive("coin",20*4000,"QLYB")
		else
			LuaSay("�������@3��Ʒ@0�ڻ���õĽ������£�")
			LuaGive("coin",(g+h)*4000,"QLYB")
		end
		

	end
	if(i+j>0) then
		if(i+j>20)then
			LuaSay("���@1��Ʒ@0�ڻ���������20����������20�����㣡��õĽ������£�")
			LuaGive("coin",20*6000,"QLYB")
		else
			LuaSay("�������@1��Ʒ@0�ڻ���õĽ������£�")
			LuaGive("coin",(i+j)*6000,"QLYB")		        
		end
		
	end
	for i=1,40,1 do
		DelItem("o_biaohuo001",1)
		DelItem("o_biaohuo002",1)
		DelItem("o_biaohuo003",1)
		DelItem("o_biaohuo004",1)
		DelItem("o_biaohuo005",1)
		DelItem("o_biaohuo006",1)
		DelItem("o_biaohuo007",1)
		DelItem("o_biaohuo008",1)
		DelItem("o_biaohuo009",1)
		DelItem("o_biaohuo010",1)
	end	
	LuaSetTask("QLYB",99)
	UpdateMenu()
end


end
LuaSendMenu()
return 1
end