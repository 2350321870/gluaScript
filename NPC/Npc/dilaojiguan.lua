NPCINFO = {
serial="21" ,
base_name="dilaojiguan" ,
icon=2539,
NpcMove=2539 ,
name="���λ���" ,
iconaddr=1 ,
butt="10|10|65" ,
name_color="CEFFCE" ,
lastsay="�������غ��ֱ�ӳ�ȥ" ,
LuaType=1,
}
function do_talk(answer)                    
if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
	local T241= LuaQueryTask("T241")
	AddTopSayMenuItem("@7�����б�","")		--9  4 
	if(Tdilaojiguan~=99) then
	AddTopSayMenuItem("�������أ����Σ�","Tdilaojiguan")
	havetask =1
	end	
	AddTopSayMenuItem("ʯ�߻��أ�������","Tfbskyi")
	if(havetask ==2)then
		AddTopSayMenuItem("˵��","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("˵��","liaotian","1")
	else
		AddTopSayMenuItem("˵��","liaotian","0")
	end 	
	return 1

elseif(answer=="liaotian")then
	LuaSay("��ʾ����aͰ��ֻ��7Ͱˮʱ���ɹ���������")

elseif(answer=="Tdilaojiguan")then		--��Ե����˵Ļ���     
	LuaSay("��ʾ��a��װ9Ͱˮ��b��װ4Ͱˮ����a��ֻ��7Ͱˮʱ���������سɹ���Ŀǰab��Ϊ��Ͱ")
		AddMenuItem("@7��β���","")
		if(LuaQueryTask("Tdilaojiguana")==7) then
			AddMenuItem("���ؿ����ɹ�","ok")
		else
			AddMenuItem("��aװ��","a")
			AddMenuItem("��bװ��","b")
			AddMenuItem("��a���","c")
			AddMenuItem("��b���","d")
			AddMenuItem("��a�е�ˮ����b��","e")
			AddMenuItem("��b�е�ˮ����a��","f")
		end

	elseif(answer=="a") then
		LuaSetTask("Tdilaojiguana",9)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")
	elseif(answer=="b") then
		LuaSetTask("Tdilaojiguanb",4)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")
	elseif(answer=="c") then
		LuaSetTask("Tdilaojiguana",0)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="d") then
		LuaSetTask("Tdilaojiguanb",0)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="e") then		--a����b
		local a=LuaQueryTask("Tdilaojiguana")	--a�е�ˮ
		local b=LuaQueryTask("Tdilaojiguanb")	--b�е�ˮ
		if(a<=4-b) then			--��֮��ab�е�ˮ
			LuaSetTask("Tdilaojiguana",0)
			LuaAddTask("Tdilaojiguanb",a)
		else
			LuaAddTask("Tdilaojiguana",b-4)
			LuaSetTask("Tdilaojiguanb",4)
		end
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="f") then		--b����a
		local a=LuaQueryTask("Tdilaojiguana")	--a�е�ˮ
		local b=LuaQueryTask("Tdilaojiguanb")	--b�е�ˮ
		if(9-a>=b) then			--��֮��ab�е�ˮ
			LuaSetTask("Tdilaojiguanb",0)
			LuaAddTask("Tdilaojiguana",b)
		else
			LuaAddTask("Tdilaojiguanb",a-9)
			LuaSetTask("Tdilaojiguana",9)
		end
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="ok") then		--�ɹ���������
		LuaSay("��ʾ�����ܹ�����@3"..LuaQueryTask("Tdljgtime").."@0�����ɹ��Ŀ����˻���")
		LuaDelTask("Tdljgtime")
		LuaDelTask("Tdilaojiguana")
		LuaDelTask("Tdilaojiguanb")

elseif(answer=="Tfbskyi")then		--�������أ����1�˿����������˿��Խ��أ�ÿ����ͼ1�����ø���ʹ�õĹ������� 
	local mapname=MapName()
	local a
	if(mapname=="lu_shikuyi") then
	a=1
	elseif(mapname=="lu_shikuyi1") then
	a=2
	elseif(mapname=="lu_shikuyi2") then
	a=3
	elseif(mapname=="lu_shikuyi3") then
	a=4
	elseif(mapname=="lu_shikuyi4") then
	a=5
	elseif(mapname=="lu_shikuyi5") then
	a=6
	end
	LuaSetTemp("a",a)
	LuaSay("��ʾ��a��װ9Ͱˮ��b��װ4Ͱˮ����a��ֻ��7Ͱˮʱ���������سɹ���Ŀǰab��Ϊ��Ͱ")
		AddMenuItem("@7��β���","")
		if(LuaPublicQuery("Tfbskyi"..a.."a")==7) then--�ø���ʹ�õĹ������� 
			AddMenuItem("���ؿ����ɹ�","ok1")
		else
			AddMenuItem("��aװ��","a1")
			AddMenuItem("��bװ��","b1")
			AddMenuItem("��a���","c1")
			AddMenuItem("��b���","d1")
			AddMenuItem("��a�е�ˮ����b��","e1")
			AddMenuItem("��b�е�ˮ����a��","f1")
		end

	elseif(answer=="a1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."a",9)
		DoTalk("Tfbskyi")
	elseif(answer=="b1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."b",4)
		DoTalk("Tfbskyi")
	elseif(answer=="c1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."a",0)
		DoTalk("Tfbskyi")

	elseif(answer=="d1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."b",0)
		DoTalk("Tfbskyi")

	elseif(answer=="e1") then		--a����b
		local a=LuaPublicQuery("Tfbskyi"..a.."a")	--a�е�ˮ
		local b=LuaPublicQuery("Tfbskyi"..a.."b")	--b�е�ˮ
		if(a<=4-b) then			--��֮��ab�е�ˮ
			LuaPublicSet("Tfbskyi"..a.."a",0)
			LuaPublicAdd("Tfbskyi"..a.."b",a)
		else
			LuaPublicAdd("Tfbskyi"..a.."a",b-4)
			LuaPublicSet("Tfbskyi"..a.."b",4)
		end
		DoTalk("Tfbskyi")

	elseif(answer=="f1") then		--b����a
		local a=LuaPublicQuery("Tfbskyi"..a.."a")	--a�е�ˮ
		local b=LuaPublicQuery("Tfbskyi"..a.."b")	--b�е�ˮ
		if(9-a>=b) then			--��֮��ab�е�ˮ
			LuaPublicSet("Tfbskyi"..a.."b",0)
			LuaPublicAdd("Tfbskyi"..a.."a",b)
		else
			LuaPublicAdd("Tfbskyi"..a.."b",a-9)
			LuaPublicSet("Tfbskyi"..a.."a",9)
		end
		DoTalk("Tfbskyi")

	elseif(answer=="ok1") then		--�ɹ���������
		LuaSay("��ʾ���ɹ��Ŀ����˻���")
		LuaPublicDel("Tfbskyi"..a.."a")
		LuaPublicDel("Tfbskyi"..a.."b")

end 
LuaSendMenu()
return 1
end