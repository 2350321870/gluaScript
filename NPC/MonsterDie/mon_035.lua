T635_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 21
T216_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
function OnDie()
----------------------  ������
local num1=LuaQueryTask("T635")
----------------------------------------
--[[if(LuaQuery("T653")==1)then
	local r = LuaRandom(5)
	if(r<4)then
	if(LuaItemCount("o_material_39")<5 and LuaItemCount("o_material_48")<5)then
	LuaGive("o_material_39",1)
	LuaGive("o_material_48",1)
		if(LuaItemCount("o_material_39")>=5 and LuaItemCount("o_material_48")>=5)then
		LuaSay("���Ѿ��ռ�����@25��2��ľ��2����@0,��ȥ�ظ�@4̫��ɽ��@0��@3ʯԽ@0��")
		LuaOtherSendMenu()
		end
	end
	end
	end]]

if(num1==1) then
 if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
 CheckNpcStatusByMonItemID("T635","mon_035")
LuaSay("���Ѿ��ɹ�������30ֻ������")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_035/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220��������@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_035/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2������@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T216")==7)then
	if(LuaQueryTask("task_kill/mon_035/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2������@0����˹���ն��[�]��ץ��ʱ��ظ������ǵĽ��幫���ɡ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_035/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻҹ�棬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon29")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------------
return 1
end
