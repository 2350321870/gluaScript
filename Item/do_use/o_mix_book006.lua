function do_use()
local d=floor(LuaItemStatusNormalCount("o_material_32")/2)
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=d+e
if (d>=1) then
	AddMenuItem("@24����ɺϳɴ󻹵�("..(d*3)..")��","nc_combine o_mix_book006 d","�󻹵��ϳ�")
	else
	AddMenuItem("4����ɺϳɴ󻹵�(0)��","nc_combine o_mix_book006 h","�󻹵��ϳ�")
end
if (e>=1) then
	AddMenuItem("@25����ɺϳɴ󻹵�("..(e*9)..")��","nc_combine o_mix_book006 e","�󻹵��ϳ�")
	else
	AddMenuItem("5����ɺϳɴ󻹵�(0)��","nc_combine o_mix_book006 h","�󻹵��ϳ�")
end
--if (d>=1 or e>=1) then
--	AddMenuItem("@2ȫ����ϳɴ󻹵�("..gn..")��","nc_combine o_mix_book006 f","�󻹵��ϳ�")
--	else
--	AddMenuItem("ȫ����ϳɴ󻹵�(0)��","nc_combine o_mix_book006 h","�󻹵��ϳ�")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 45
local d=floor(LuaItemStatusNormalCount("o_material_32")/2)
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=d+e
coin=LuaItemStatusNormalCount("coin")
if (type=="d")then
	if (d>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp2",1))then
	LuaAddJx("combat_exp",4500,"")
	DelItem("o_material_32",2)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",2) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɴ󻹵�(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(d==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="e")then
	if (e>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp2",1))then
	LuaAddJx("combat_exp",4500,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɴ󻹵�(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(e==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="f")then
local tt=c+d+e
	if (c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_mhp2",gn))then
	LuaAddJx("combat_exp",gn*4500,"")
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",c)
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",d)
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",e) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","��Ʒ","���",gn) 
		LuaLogRecord("�ϳ�","o_drug_mhp2","ͭ��","����",mon*tt) 
	LuaShowNotify("�ϳɴ󻹵�("..gn..")��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(a==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..(mon*tt).."��")
		end
	end
elseif(type=="h")then
	LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
	end
end