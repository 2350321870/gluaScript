function do_use()
local b=floor(LuaItemStatusNormalCount("o_material_30")/2)
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=b+c+d*3+e*9
if (b>=1) then
	AddMenuItem("@22����ɺϳɻ���¶("..b..")��","nc_combine o_mix_book004 b","����¶�ϳ�")
	else
	AddMenuItem("2����ɺϳɻ���¶(0)��","nc_combine o_mix_book004 h","����¶�ϳ�")
end
if (c>=1) then
	AddMenuItem("@23����ɺϳɻ���¶("..c..")��","nc_combine o_mix_book004 c","����¶�ϳ�")
	else
	AddMenuItem("3����ɺϳɻ���¶(0)��","nc_combine o_mix_book004 h","����¶�ϳ�")
end
if (d>=1) then
	AddMenuItem("@24����ɺϳɻ���¶("..(d*3)..")��","nc_combine o_mix_book004 d","����¶�ϳ�")
	else
	AddMenuItem("4����ɺϳɻ���¶(0)��","nc_combine o_mix_book004 h","����¶�ϳ�")
end
if (e>=1) then
	AddMenuItem("@25����ɺϳɻ���¶("..(e*9)..")��","nc_combine o_mix_book004 e","����¶�ϳ�")
	else
	AddMenuItem("5����ɺϳɻ���¶(0)��","nc_combine o_mix_book004 h","����¶�ϳ�")
end
--if (b>=1 or c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2ȫ����ϳɻ���¶("..gn..")��","nc_combine o_mix_book004 f","����¶�ϳ�")
--	else
--	AddMenuItem("ȫ����ϳɻ���¶(0)��","nc_combine o_mix_book004 h","����¶�ϳ�")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 30
local b=floor(LuaItemStatusNormalCount("o_material_30")/2)
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=b+c+d*3+e*9
coin=LuaItemStatusNormalCount("coin")
if (type=="b")then
	if (b>=1 and coin >= mon) then
	if(LuaGive("o_drug_mp2",1))then
	LuaAddJx("combat_exp",2000,"")
	DelItem("o_material_30",2)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_30","��Ʒ","����",2) 
		LuaLogRecord("�ϳ�","o_drug_mp2","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɻ���¶(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(b==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="c")then
	if (c>=1 and coin >= mon) then
	if(LuaGive("o_drug_mp2",1))then
	LuaAddJx("combat_exp",2000,"")
	DelItem("o_material_31",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp2","��Ʒ","���",1) 
		LuaLogRecord("�ϳ�","o_drug_mp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɻ���¶(1)��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(c==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..mon.."��")
		end
	end
end
if (type=="d")then
	if (d>=1 and coin >= mon) then
	if(LuaGive("o_drug_mp2",3))then
	LuaAddJx("combat_exp",6000,"")
	DelItem("o_material_32",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp2","��Ʒ","���",3) 
		LuaLogRecord("�ϳ�","o_drug_mp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɻ���¶(3)��")
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
	if(LuaGive("o_drug_mp2",9))then
	LuaAddJx("combat_exp",18000,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",1) 
		LuaLogRecord("�ϳ�","o_drug_mp2","��Ʒ","���",9) 
		LuaLogRecord("�ϳ�","o_drug_mp2","ͭ��","����",mon) 
	LuaShowNotify("�ϳɻ���¶(9)��")
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
local tt=b+c+d+e
	if (b>=1 or c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_mp2",gn))then
	DelItem("o_material_30",b)
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaAddJx("combat_exp",gn*2000,"")
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("�ϳ�","o_material_30","��Ʒ","����",b) 
		LuaLogRecord("�ϳ�","o_material_31","��Ʒ","����",c) 
		LuaLogRecord("�ϳ�","o_material_32","��Ʒ","����",d) 
		LuaLogRecord("�ϳ�","o_material_33","��Ʒ","����",e) 
		LuaLogRecord("�ϳ�","o_drug_mp2","��Ʒ","���",gn) 
		LuaLogRecord("�ϳ�","o_drug_mp2","ͭ��","����",mon*tt)
	LuaShowNotify("�ϳɻ���¶("..gn..")��")
	return 0
	else
	LuaShowNotify("�ϳ�ʧ�ܣ����鱳���ռ䣡")
	end
		else
		if(f==0) then
		LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
		else
		LuaShowNotify("ͭǮ����"..(mon*tt).."��")
		end
	end
elseif(type=="h")then
	LuaShowNotify("���Ĳ���(��)����ϳ�֮��")
	end
end