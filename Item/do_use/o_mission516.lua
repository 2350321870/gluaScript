function do_use()
	LuaDelTask("Tlx_coin")
	LuaDelTask("Tlx_jy")
	if(LuaQueryTask("Tlx_max")~=0) then
		local d=floor(LuaQueryTask("Tlx_max")/86400)  --��        Tlx_max--Ϊ�������ʱ��
		local h=floor((LuaQueryTask("Tlx_max")-d*86400)/3600)  --Сʱ
		local f=floor((LuaQueryTask("Tlx_max")-d*86400-h*3600)/60)  --����
		local tS_lx="��@2�������ʱ��@0Ϊ��"
		if(d~=0) then  --����ʱ��>=1��
			if(h~=0) then  
				if(f~=0) then
					tS_lx=tS_lx.."@3"..d.."����"..h.."Сʱ"..f.."��@0"
				else  --f==0
					tS_lx=tS_lx.."@3"..d.."����"..h.."Сʱ@0"
				end
			else --h==0
				if(f~=0) then
					tS_lx=tS_lx.."@3"..d.."����"..f.."����@0"
				else  --f==0
					tS_lx=tS_lx.."@3"..d.."����@0"
				end
			end
		else  --d==0
			if(h~=0) then  
				if(f~=0) then
					tS_lx=tS_lx.."@3"..h.."Сʱ��"..f.."��@0"
				else --f==0
					tS_lx=tS_lx.."@3"..h.."Сʱ��@0"
				end
			else  --h==0
				if(f~=0) then
					tS_lx=tS_lx..""..f.."����@0"
				else  --f==0  ��ֹ���߲���1����   d h f��Ϊ0
					tS_lx=tS_lx.."@3����1����..@0"
				end
			end
		end
		--[[�趨��  1-10��   ���߾���Ϊ1-10�������������+���߾���  	ֻҪ���߾�����ȡ
					10-20��  ���߾���Ϊ10-14�������������+���߾���  	20������ȡһ��
					�������߾��飺1Сʱһ�²�����ȡ  1-6Сʱ��Ǯ����6Сʱ��ȡ6Сʱ���飬6Сʱ���Ͽ��Ի�˫����Ǯ��ȡ˫�������˫�����ѳ���150000����ֻ���20ͨ����ȡ˫��]]
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(level<10) then--С��10��
			LuaSay(""..tS_lx.."�������ڵĵȼ�Ϊ@2"..level.."��@0���������ȡ���߾���")
			local jy=floor(90424+LuaQueryTask("Tlx_max")/3600*7000)  --����   --90424Ϊ1������10�ľ���   LuaQueryTask("Tlx_max")/3600*7000Ϊ5��Сʱ����11��
			LuaSetTask("Tlx_jy",jy)
		elseif(level<20) then--С��20��
			if(floor(LuaQueryTask("Tlx_max")/60)<20) then --����С��20���� -->������ȡ
				LuaSay(""..tS_lx.."��@5����20����@0��������ȡ���߾���")
			else
				LuaSay(""..tS_lx.."�������ڵĵȼ�Ϊ@2"..level.."��@0���������ȡ���߾���")
				local jy=floor(249617+LuaQueryTask("Tlx_max")/3600*15000)  --����   --249617Ϊ11������14������	LuaQueryTask("Tlx_max")/3600*15000Ϊ8��Сʱ����15��
				LuaSetTask("Tlx_jy",jy)
			end
		else  -->=20��  ��ȡ�������߾���
			if(floor(LuaQueryTask("Tlx_max")/3600)>=6) then  --���߳���6Сʱ
				LuaSay(""..tS_lx.."")
				local coin=floor(level^2*LuaQueryTask("Tlx_max")/3600*2) --����ͭ��
				local jy=floor(level^2*(LuaQueryTask("Tlx_max")-6*3600)/3600*300/24+level^2*2000/24)  --����
				--level*(LuaQueryTask("Tlx_max")-6*3600)/3600*300   ΪÿСʱ�������飨6Сʱ���»�ͭ��������Tlx_max=6*3600��  
				--level*2000 Ϊ���׾��飨6Сʱ���²�ͭ��6Сʱ��
				if(jy>100000000) then --����Ϊ1�ھ��� 
					LuaSay("������߾���@2����1��@0��@5ֻ����ȡһ�ھ��飨˫�����ڣ�@0")
					jy=100000000
				end
				LuaSetTask("Tlx_coin",coin)
				LuaSetTask("Tlx_jy",jy)
			elseif(floor(LuaQueryTask("Tlx_max")/3600)>=1) then  --����1-6Сʱ��
				LuaSay(""..tS_lx.."��@5����6��Сʱ@0������@7����ͭ�Ҳ�������ʱ��6Сʱ@0����ȡ���߾��飡")
				local coin=floor(level^2*(6*3600-LuaQueryTask("Tlx_max"))/3600*3+level^2*LuaQueryTask("Tlx_max")/3600*2) --����ͭ��
				local jy=floor(level^2*2000/24)  --����
				LuaSetTask("Tlx_coin",coin)
				LuaSetTask("Tlx_jy",jy)
			else  --���߲���һСʱ
				LuaSay(""..tS_lx.."��@5����1��Сʱ@0��������ȡ���߾���")
			end
		end
		if(LuaQueryTask("Tlx_jy")~=0) then
			if(level<20) then
				AddMenuItem("@2���@0��ȡ@3"..LuaQueryTask("Tlx_jy").."����@0","sysinfo o_mission516 m","���߾���")
				AddMenuItem("������ȡ���߾���","none","���߾���")
			else
				if(floor(LuaQueryTask("Tlx_max")/3600)>=6) then --���ߴ���6Сʱ
					if(floor(LuaQueryTask("Tlx_coin")*1.9)>=150000) then  --��ͨ���쾭���ѡ��
						AddMenuItem("����@2"..LuaQueryTask("Tlx_coin").."ͭ��@0��ȡ@3"..LuaQueryTask("Tlx_jy").."����@0","sysinfo o_mission516 x","���߾���")
						AddMenuItem("����@2"..floor(LuaQueryTask("Tlx_coin")*1.9).."ͭ��@0��ȡ@3˫������@0��@2"..2*LuaQueryTask("Tlx_jy").."@0���飩","sysinfo o_mission516 y","���߾���")
						AddMenuItem("����@220ͨ��@0��ȡ@3˫������@0��@2"..2*LuaQueryTask("Tlx_jy").."@0���飩","sysinfo o_mission516 v","���߾���")
						AddMenuItem("������ȡ���߾���","none","���߾���")
					else --˫������ͭ��û��15w���� -->û��ͨ���쾭���ѡ��
						AddMenuItem("����@2"..LuaQueryTask("Tlx_coin").."ͭ��@0��ȡ@3"..LuaQueryTask("Tlx_jy").."����@0","sysinfo o_mission516 x","���߾���")
						AddMenuItem("����@2"..floor(LuaQueryTask("Tlx_coin")*1.9).."ͭ��@0��ȡ@3˫������@0��@2"..2*LuaQueryTask("Tlx_jy").."@0���飩","sysinfo o_mission516 y","���߾���")
						AddMenuItem("������ȡ���߾���","none","���߾���")
					end
				else--����ʱ��<6Сʱ >=1Сʱ
					AddMenuItem("����@2"..LuaQueryTask("Tlx_coin").."ͭ��@0��������6Сʱ���� ��ȡ@3"..LuaQueryTask("Tlx_jy").."����@0","sysinfo o_mission516 z","���߾���")
					AddMenuItem("������ȡ���߾���","none","���߾���")
				end
			end
		end
	elseif(LuaQueryTask("Tlx_max")==0) then
		LuaSay("@2������߾����Ѿ���ȡ@0����������ȡ��")
	end		
	LuaOtherSendMenu()
	return 0 
end	
function nc_combine(type)
	if(type=="x") then  --6Сʱ������ȡһ������
		--LuaPrint("Tlx_max��ֵΪ��"..LuaQueryTask("Tlx_max").."")
		if(LuaItemCount("coin")>=LuaQueryTask("Tlx_coin")) then
			LuaSay("��ϲ����ȡ���߾���ɹ������@3"..LuaQueryTask("Tlx_jy").."����@0")
			LuaGive("coin",-LuaQueryTask("Tlx_coin"),"Tlx")
			LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
			LuaOtherSendMenu()
		else
			LuaSay("�����ϵ�ͭ�Ҳ���"..LuaQueryTask("Tlx_coin").."���չ�Ǯ��@2������@0��@7ϵͳ����-���߾���@0��ȡ���߾����")
			LuaOtherSendMenu()
		end
	elseif(type=="y") then  --6Сʱ������ȡ2������
		--LuaPrint("Tlx_max��ֵΪ��"..LuaQueryTask("Tlx_max").."")
		if(LuaItemCount("coin")>=floor(LuaQueryTask("Tlx_coin")*1.9)) then
			LuaSay("��ϲ����ȡ���߾���ɹ������@3"..2*LuaQueryTask("Tlx_jy").."����@0")
			LuaGive("coin",-floor(LuaQueryTask("Tlx_coin")*1.9),"Tlx")
			LuaAddJx("combat_exp",2*LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("�����ϵ�ͭ�Ҳ���"..floor(LuaQueryTask("Tlx_coin")*1.9).."���չ�Ǯ��@2������@0��@3������@0��@7ϵͳ����-���߾���@0��ȡ���߾����")
		end
	elseif(type=="z") then  --����ʱ��<6Сʱ >=1Сʱ
		if(LuaItemCount("coin")>=LuaQueryTask("Tlx_coin")) then
			LuaSay("��ϲ����ȡ���߾���ɹ������@3"..LuaQueryTask("Tlx_jy").."����@0")
			LuaGive("coin",-LuaQueryTask("Tlx_coin"),"Tlx")
			LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("�����ϵ�ͭ�Ҳ���"..LuaQueryTask("Tlx_coin").."���չ�Ǯ��@2������@0��@7ϵͳ����-���߾���@0��ȡ���߾����")
		end
	elseif(type=="v") then  --ͨ����ȡ
		if(LuaItemCount("o_gold1y") >=20) then 
			LuaSay("��ϲ����ȡ���߾���ɹ������@3"..2*LuaQueryTask("Tlx_jy").."����@0")
			DelItem("o_gold1y",20,"Tlx")
			LuaAddJx("combat_exp",2*LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("������û��@220ͨ��@0���ɵ�@5[�̳�-Ԫ��-����]@0�й����@2������@0��@7ϵͳ����-���߾���@0��ȡ���߾����")
		end
	elseif(type=="m") then  --20��һ����ȡ
		LuaSay("��ϲ����ȡ������߾���ɹ������@3"..LuaQueryTask("Tlx_jy").."����@0")
		LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
		LuaDelTask("Tlx_max")
		LuaDelTask("Tlx_now")
		LuaDelTask("Tlx_coin")
		LuaDelTask("Tlx_jy")	
	end
	LuaOtherSendMenu()
	return 0 
end