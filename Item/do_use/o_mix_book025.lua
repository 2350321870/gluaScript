function do_use()--6�����Ϻϳ���
LuaSay("@26������@9����@25������13��@9��@350ͭ��@9,һ�����ϳ�20��")
AddMenuItem("@7�����ϳ�","nc_combine o_mix_book025 i","6�����Ϻϳ�")
AddMenuItem("@2����ϳ�","nc_combine o_mix_book025 j","6�����Ϻϳ�")
LuaOtherSendMenu()
return 0 
end
--==================================================================
function nc_combine(type)
	if(LuaFreeBag()<1 and type=="i")then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end--�����ϳ�������1����λ
	if(LuaFreeBag()<2 and type=="j")then	LuaShowNotify("�����ٱ���@22@0�񱳰��ռ�")	return 0 end--����ϳ�������2����λ
-----------------
local smtlv=5--Դ���ϼ���
local mon=50--�ϳɺ�ͭ
local coin=LuaItemStatusNormalCount("coin")
local a=floor(LuaItemStatusNormalCount("o_material_15")/13)
local b=floor(LuaItemStatusNormalCount("o_material_24")/13)
local c=floor(LuaItemStatusNormalCount("o_material_33")/13)
local d=floor(LuaItemStatusNormalCount("o_material_42")/13)
local e=floor(LuaItemStatusNormalCount("o_material_51")/13)
local f=floor(LuaItemStatusNormalCount("o_material_60")/13)
------------------
if(type=="i")then
	if (a >= 1) then
		AddMenuItem("@7�ϳ�6��ë1��@9-[�ɺϳ�"..a.."]","nc_combine o_mix_book025 a","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6��ë@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (b >= 1) then
		AddMenuItem("@7�ϳ�6��Ƥ1��@9-[�ɺϳ�"..b.."]","nc_combine o_mix_book025 b","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6��Ƥ@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (c >= 1) then
		AddMenuItem("@7�ϳ�6����1��@9-[�ɺϳ�"..c.."]","nc_combine o_mix_book025 c","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (d >= 1) then
		AddMenuItem("@7�ϳ�6��ľ1��@9-[�ɺϳ�"..d.."]","nc_combine o_mix_book025 d","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6��ľ@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (e >= 1) then
		AddMenuItem("@7�ϳ�6����1��@9-[�ɺϳ�"..e.."]","nc_combine o_mix_book025 e","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (f >= 1) then
		AddMenuItem("@7�ϳ�6����1��@9-[�ɺϳ�"..f.."]","nc_combine o_mix_book025 f","6�����Ϻϳ�")
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	LuaOtherSendMenu()
	return 0 
elseif(type=="j")then
	if (a >= 1) then
		if(a>20)then
		AddMenuItem("@2�ϳ�6��ë20��@9-[�ɺϳ�"..a.."]","nc_combine o_mix_book025 o","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6��ë"..a.."��@9-[�ɺϳ�"..a.."]","nc_combine o_mix_book025 o","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6��ë@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (b >= 1) then
		if(b>20)then
		AddMenuItem("@2�ϳ�6��Ƥ20��@9-[�ɺϳ�"..b.."]","nc_combine o_mix_book025 p","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6��Ƥ"..b.."��@9-[�ɺϳ�"..b.."]","nc_combine o_mix_book025 p","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6��Ƥ@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (c >= 1) then
		if(c>20)then
		AddMenuItem("@2�ϳ�6����20��@9-[�ɺϳ�"..c.."]","nc_combine o_mix_book025 q","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6����"..c.."��@9-[�ɺϳ�"..c.."]","nc_combine o_mix_book025 q","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (d >= 1) then
		if(d>20)then
		AddMenuItem("@2�ϳ�6��ľ20��@9-[�ɺϳ�"..d.."]","nc_combine o_mix_book025 r","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6��ľ"..d.."��@9-[�ɺϳ�"..d.."]","nc_combine o_mix_book025 r","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6��ľ@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (e >= 1) then
		if(e>20)then
		AddMenuItem("@2�ϳ�6����20��@9-[�ɺϳ�"..e.."]","nc_combine o_mix_book025 s","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6����"..e.."��@9-[�ɺϳ�"..e.."]","nc_combine o_mix_book025 s","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	if (f >= 1) then
		if(f>20)then
		AddMenuItem("@2�ϳ�6����20��@9-[�ɺϳ�"..f.."]","nc_combine o_mix_book025 t","6�����Ϻϳ�")
		else
		AddMenuItem("@2�ϳ�6����"..f.."��@9-[�ɺϳ�"..f.."]","nc_combine o_mix_book025 t","6�����Ϻϳ�")
		end
		else
		AddMenuItem("�ϳ�6����@9-[���ϲ���]","nc_combine o_mix_book025 h","6�����Ϻϳ�")
		end
	LuaOtherSendMenu()
	return 0
elseif(type=="h")then
	LuaShowNotify("���ϲ���18��")
else----------------------------------
	if    (type=="a")then mt=0 am=1 tp="i"
	elseif(type=="b")then mt=1 am=1 tp="i"
	elseif(type=="c")then mt=2 am=1 tp="i"
	elseif(type=="d")then mt=3 am=1 tp="i"
	elseif(type=="e")then mt=4 am=1 tp="i"
	elseif(type=="f")then mt=5 am=1 tp="i"
	elseif(type=="o")then mt=0 am=20 tp="j"
	elseif(type=="p")then mt=1 am=20 tp="j"
	elseif(type=="q")then mt=2 am=20 tp="j"
	elseif(type=="r")then mt=3 am=20 tp="j"
	elseif(type=="s")then mt=4 am=20 tp="j"
	elseif(type=="t")then mt=5 am=20 tp="j"
	else	return 0
	end
	-----------
	local canmixnum=floor(LuaItemStatusNormalCount("o_material_"..(smtlv+10+9*mt).."")/13)--���ϳ�
	if(canmixnum<am)then	am=canmixnum	end--ѡÿ20���ϳɵ�,����20���ܺ϶��ٺ϶���
	if(am>=1)then
		if(coin>=mon*am)then
			DelItem("o_material_"..(smtlv+10+9*mt).."",13*am)--��Դ
			LuaGive("o_material_"..(smtlv+11+9*mt).."",am)--��Ʒ
			LuaGive("coin",-mon*am,"Tmixbook")--ͭ��
			LuaLogRecord("�ϳ�","o_material_"..(smtlv+10+9*mt).."","��Ʒ","����",13*am) 
			LuaLogRecord("�ϳ�","o_material_"..(smtlv+11+9*mt).."","��Ʒ","���",am) 
			LuaLogRecord("�ϳ�","o_material_"..(smtlv+11+9*mt).."","ͭ��","����",mon*am)
			LuaShowNotify("�ϳɳɹ�")
			nc_combine(tp)--�ؿ��˵������Ͽ��������Ͽ���
			return 0
		else
		LuaShowNotify("ͭǮ����"..mon*am.."��")
		end
	else	LuaShowNotify("���ϲ���")
	end
end
--------------
return 0
end--endfunction
