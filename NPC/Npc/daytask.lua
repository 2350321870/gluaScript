function do_task(id, answer)

local level = LuaQuery("level")

if (answer == "0") then
		LuaSay("�����ǽ�������")
		if(LuaQueryTask("Tyaopin")==0)then
			AddMenuItem("ÿ��ҩƷ����", "sysinfo DayTask Tyaopin", "ÿ������")
		end
		if(level>=19)then
			if(LuaQueryTask("T101")==0)then
				AddMenuItem("@2[��]@0���������", "sysinfo DayTask T101", "ÿ������")
			end
			if(LuaQueryTask("T103")==0)then
				AddMenuItem("@2[��]@0�����", "sysinfo DayTask T103", "ÿ������")
			end
			if(LuaQueryTask("open") ==0 and LuaQueryTask("T105")==0)then
				AddMenuItem("@2[��]@0���ݰ���", "sysinfo DayTask T105", "ÿ������")
			end
		end
		if(level>=20)then
			if(LuaQueryTask("Teveryday_lx")==0)then
				AddMenuItem("������½����", "sysinfo DayTask Teveryday_lx", "ÿ������")
			end
			if(LuaQueryTask("everyday_GD")==0 or LuaQueryTask("everyday_SJ")==0 or LuaQueryTask("everyday_YB")==0)then
				AddMenuItem("ÿ�յ�½����", "sysinfo DayTask Teveryday", "ÿ������")
			end
			if(LuaQueryTask("T423")==99 and LuaQueryTask("T302") == 0)then
				AddMenuItem("ÿ����ʹ", "sysinfo DayTask T302", "ÿ������")
			end
		end
		if(level>=25)then			--ǧ������δ�����б�ԭ���ǿ��������ƴ�������
			if(LuaQueryTask("Tcoc")==0)then
				AddMenuItem("�̼���", "sysinfo DayTask Tcoc", "ÿ������")
			end
		end
		if(level>=30)then			--�������£��ֻ�����δ���룬ԭ��ͬ��
			if(LuaQueryTask("SPEAK")==0)then
				AddMenuItem("���Ļ���ð��", "sysinfo DayTask SPEAK", "ÿ������")
			end
			if(LuaQueryTask("T270")==0)then
				AddMenuItem("׷ɱ����", "sysinfo DayTask T270", "ÿ������")
			end
			if(GetCurrentHour()>=9 and GetCurrentHour()<10) then
				if(LuaQueryTask("T216") == 0)then
					AddMenuItem("@2[��]@0����ն��", "sysinfo DayTask T216", "ÿ������")
				end
			end
			if(GetCurrentHour()>=10 and GetCurrentHour()<12)then
				if(LuaQueryTask("T_newycb")==0 and LuaQueryTask("xbdotime")==0)then
					AddMenuItem("@2[��]@0Ѱ�����ж�", "sysinfo DayTask T_newycb", "ÿ������")
				end
			end
			if(GetCurrentHour()>=9 and GetCurrentHour()<10)  then
				if(LuaQueryTask("T271")==0)then
					AddMenuItem("@2[��]@0�ͽ�����", "sysinfo DayTask T271", "ÿ������")
				end
			end
			if(GetCurrentHour()>=12 and GetCurrentHour()<14) then
				if(LuaQueryTask("TpotatoScore")==0)then
					AddMenuItem("@2[��]@0����ս��", "sysinfo DayTask TpotatoScore", "ÿ������")
				end
			end
			if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
				if(LuaQueryTask("Tfkdcg")==0)then
					AddMenuItem("@2[��]@0����ɹ�", "sysinfo DayTask Tfkdcg", "ÿ������")
				end
			end
			if(GetCurrentHour()>=20 and GetCurrentHour()<21)then
				if(LuaQueryTask("Tbzyhdotime")<10 and LuaQueryTask("Tbzyh")==0)then
					AddMenuItem("@2[��]@0��׽ԩ��", "sysinfo DayTask Tbzyh", "ÿ������")
				end
			end
			if(LuaQueryTask("T515")==0)then
				AddMenuItem("����Ѱ��", "sysinfo DayTask T515", "ÿ������")
			end
		end
		if(level>=35)then
			if(LuaQueryTask("T272")==0)then
				AddMenuItem("��ս���а�", "sysinfo DayTask T272", "ÿ������")
			end
			if(LuaQueryTask("T932")==0)then
				AddMenuItem("����ʮ��", "sysinfo DayTask T932", "ÿ������")
			end
		end
		if(level>=40)then
			if(LuaQueryTask("T200")==0)then
				AddMenuItem("������С", "sysinfo DayTask T200", "ÿ������")
			end
		end
		if(level>=45)then
			if(LuaQueryTask("Twenda")==0)then
				AddMenuItem("�ʴ���ս", "sysinfo DayTask Twenda", "ÿ������")
			end
		end
		if(level>=55)then
			if(LuaQueryTask("Txhuanxing")==0)then
				AddMenuItem("��������", "sysinfo DayTask Txhuanxing", "ÿ������")
			end
		end
		
elseif (answer == "T101") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC��ѱ��ʦ")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "���������")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T103") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC��ѱ��ʦ")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "�����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T105") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC��ѱ��ʦ")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "���ݰ���")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "Teveryday_lx") then
		LuaSay("@5�ص㣺����@0*@3��ȡNPC��˾�����")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "������½����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "Teveryday") then
		LuaSay("@5�ص㣺����@0*@3��ȡNPC��˾�����")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "ÿ�յ�½����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T302") then
		LuaSay("@5�ص㣺������Ӫ@0*@3��ȡNPC����վС��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "ÿ����ʹ")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "Tcoc") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC��Ǯׯ�ϰ�")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "�̼���")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "SPEAK") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "���Ļ���ð��")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T216") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "����ն��")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T270") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���޼�")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "׷ɱ����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T_newycb") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC�������")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "Ѱ�����ж�")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T271") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "�ͽ�����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "TpotatoScore") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "����ս��")
		AddMenuItem("���ع���", "sysinfo BACK", "")		
elseif (answer == "Tfkdcg") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "����ɹ�")
		AddMenuItem("���ع���", "sysinfo BACK", "")	
elseif (answer == "Tbzyh") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "��׽ԩ��")
		AddMenuItem("���ع���", "sysinfo BACK", "")	
elseif (answer == "T272") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "��ս���а�")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T932") then
		LuaSay("@5�ص㣺����@0*@3��ȡNPC��˾�����")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "����ʮ��")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T200") then
		LuaSay("����������δ��ɣ�")
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���ʹ��")
		AddMenuItem("���ع���", "sysinfo BACK", "")	
elseif (answer == "Twenda") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC���޼�")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "�ʴ���ս")
		AddMenuItem("���ع���", "sysinfo BACK", "")	
elseif (answer == "Txhuanxing") then
		LuaSay("@5�ص㣺���г�@0*@3��ȡNPC���ذϹ�")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "��������")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "T515") then
		LuaSay("@5�ص㣺������@0*@3��ȡNPC�������")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "����Ѱ��")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "Tyaopin") then
		LuaSay("@5�ص㣺��������@0*@3��ȡNPC��ҩƷ����")
		AddMenuItem("����ÿ������", "sysinfo DayTask 0", "ÿ��ҩƷ����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
end
LuaOtherSendMenu()
return 1
end