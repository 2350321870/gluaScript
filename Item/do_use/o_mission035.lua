function do_use()
local szMapId=MapName()
if(szMapId=="lu_jkcn" or szMapId=="lu_jkdj" or szMapId=="lu_wds" or szMapId=="lu_bfjy"
	or szMapId=="lu_wszb" or szMapId=="lu_chp")then--���żǵļӰ�
	if(IsMapHost(szMapId)=="true")then	
		AddMenuItem("��˰200[��10000�������]","nc_combine o_mission035 a","��˰��")--[��10000�������]
		AddMenuItem("��˰500[��25000�������]","nc_combine o_mission035 b","��˰��")
		AddMenuItem("��˰1000[��50000�������]","nc_combine o_mission035 c","��˰��")
	else	LuaSay("�Ǳ��������ڴ���˰,ֻ����������˰��һ��")
		AddMenuItem("��˰100[��10000�������]","nc_combine o_mission035 a","��˰��")--[��10000�������]
		AddMenuItem("��˰250[��25000�������]","nc_combine o_mission035 b","��˰��")
		AddMenuItem("��˰500[��50000�������]","nc_combine o_mission035 c","��˰��")
	end
else	LuaShowNotify("��ʾ������ͼδ������˰�����ڿ��ŵĵ�ͼ�н������ϡ������������嶷ɽ��ɽկ��������Ӫ��μˮ֮�����κ���")
end
	AddMenuItem("@9��˰��ʹ��˵����","nc_combine o_mission035 t","��˰��")
LuaOtherSendMenu()
return 0
end
function nc_combine(type)
if(type=="t")then
	LuaSay("ʹ����˰���,������ڵ�ͼ��������ҽ�����˰,��˰�����ո�������,��ѡ����200ʱ,�����ǰ��ͼ��10����ҿ�����,�򹲿��յ�2000ͭ")
	LuaSay("��˰�����ո�������,��ѡ����200ʱ,�����ǰ��ͼ��10���������5�����ϲ���10000ͭ,��ֻ���յ�1000ͭ")
	LuaSay("��ǰ��ͼ������˰��ȷ������յ������˰��")
else
	if(GetCurrentTime()-LuaPublicQuery("taxtime")>600)then--��˰��Ǯ���ù���CD10min,������ҹ���,A��Ҹ�����˰,10min���κ��˲����ٴ���˰
		if(LuaQueryPersonInMap(MapName())>1)then
			if(IsMapHost(MapName())=="true")then	taxper=1
			else	taxper=0.5
			end
			if(type=="a")then	taxmorethen=10000	taxmoney=200*taxper
			elseif(type=="b")then	taxmorethen=25000	taxmoney=500*taxper
			elseif(type=="c")then	taxmorethen=50000	taxmoney=1000*taxper
			end
			--taxmsg={
			--""..LuaQueryStr("name").."��:��˰����˰��,Ǯ����"..taxmorethen.."��,ÿ�˽�˰"..taxmoney.."ͭ,˭��͵˰©˰��˰��˰,�гǹܶ������ǵ�̯��",
			--}
			--local r=LuaRandom(1)+1
			LocalMsg(LuaQueryStr("name").."��:��˰����˰��,Ǯ����"..taxmorethen.."��,ÿ�˽�˰"..taxmoney.."ͭ,˭��͵˰©˰��˰��˰,�гǹܶ������ǵ�̯��")
			GetRevenue(taxmorethen,taxmoney)--GetRevenue(N,M)NΪ��˰��׼��MΪ��˰��
			LuaPublicSet("taxtime",GetCurrentTime())
			DelItem("o_mission035",1)--��ɾһ��
		else	LuaSay("���ڱ���ͼ����֮��û�б���,���Ǳ�ʹ����")
		end
	else	LuaSay("�ո�������ʹ��Ȩ����,���Ժ����ð�.��˰����Ǯ���ڹ�����10����ʹ�ü��.")
	end
end
LuaOtherSendMenu()
--return 1
end
