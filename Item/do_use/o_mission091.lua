function do_use()
local szMapId=MapName()
if(szMapId=="lu_jknj" or szMapId=="lu_jkcn" or szMapId=="lu_jkdj" or szMapId=="lu_wds" or szMapId=="lu_sz" or szMapId=="lu_bfjy"
	or szMapId=="lu_jyqs" or szMapId=="lu_fszb" or szMapId=="lu_fsda" or szMapId=="lu_lyjw" or szMapId=="lu_mwzl" or szMapId=="lu_tyc")then--���żǵļӰ�
	if(IsMapHost(szMapId)=="true")then
		AddMenuItem("��Ǯ1��ͭ","nc_combine o_mission091 a","ʩ����")
		AddMenuItem("��Ǯ5��ͭ","nc_combine o_mission091 b","ʩ����")
		AddMenuItem("��Ǯ10��ͭ","nc_combine o_mission091 c","ʩ����")
	else
	LuaSay("�Ǳ���������Ǯ,�������û��������")
		AddMenuItem("��Ǯ1��ͭ","nc_combine o_mission091 a","ʩ����")
		AddMenuItem("��Ǯ5��ͭ","nc_combine o_mission091 b","ʩ����")
		AddMenuItem("��Ǯ10��ͭ","nc_combine o_mission091 c","ʩ����")
	end
else	LuaShowNotify("��ʾ������ͼδ������Ǯ���ݿ���������֮ǰ��BOSS��ͼ�����ǵ�ͼ�����е�ͼ")
end
	AddMenuItem("@9ʩ����ʹ��˵����","nc_combine o_mission091 t","ʩ����")
LuaOtherSendMenu()
return 0
end
--LuaNotice("x���Ӻ�XXX��Ϊ��XX�ص������Ǯ��")������
--SendMoney(m,t,r,str1)����ʱt���Ӹ���ǰ��ͼ������Ҳ�������Ǯ�߷�floor(m/��ͼ����)ͭǮ����ͷϵͳ�Ե�����r������
function nc_combine(type)
if(type=="t")then
	LuaSay("ʹ��ʩ�����,�����Ҫ���͵�Ǯƽ�����͸����ڵ�ͼ���������")
	LuaSay("��Ǯ��õ�һ������,��ǰ��ͼ����ʹ�û�ȷ�������ø��������")
else
	if(GetCurrentTime()-LuaPublicQuery("taxtime")>600)then
		if(IsMapHost(MapName())=="true")then	percent=1
		else	percent=0.6
		end
		if(type=="a")then	sendM=10000	repu=5*percent
		elseif(type=="b")then	sendM=50000	repu=25*percent
		elseif(type=="c")then	sendM=100000	repu=50*percent
		end
		if(sendM<=LuaItemStatusNormalCount("coin"))then
			SendMoney(sendM,5,repu,""..LuaQueryStr("name").."5���Ӻ�Ϊ��"..MapShowName().."�������Ǯ��")--��ʱt���Ӹ���ǰ��ͼ������Ҳ�������Ǯ�߷�floor(m/��ͼ����)ͭǮ����ͷϵͳ�Ե�����r������
			LuaPublicSet("taxtime",GetCurrentTime())--����˰����CD
			DelItem("o_mission091",1)
		else	LuaSay("�����ϵ�Ǯ����"..sendM..".")
		end
	else	LuaSay("�ո�������ʹ��Ȩ����,���Ժ����ð�.��˰����Ǯ���ڹ�����10����ʹ�ü��.")
	end
end
LuaOtherSendMenu()
return 1
end
