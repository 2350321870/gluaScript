NPCINFO = {
serial= "518" ,
base_name="fbbox02",
icon= 2581,
NpcMove=2581,
--name= "����" ,
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="",
}
function do_talk(answer)
equipinfo={}
equipinfo[1]={"e_pants018",2,"@5[��ʦ�ּ�]@1[ʰȡ��]@052������:36@5[�����������]"}
equipinfo[2]={"e_pants019",2,"@5[�����ּ�]@1[ʰȡ��]@055������:39@5[�����������]"}
equipinfo[3]={"e_pants020",2,"@5[�����ּ�]@1[ʰȡ��]@058������:43@5[�����������]"}
equipinfo[4]={"e_shoes009",2,"@5[����ѥ]@1[ʰȡ��]@049������:27@5[�����������]"}
equipinfo[5]={"e_shoes010",2,"@5[��ͭ��]@1[ʰȡ��]@055������:30@5[�����������]"}
account=5
if (answer=="ask")then
	AddTopSayMenuItem("ľ��:","")
	AddTopSayMenuItem("�򿪲鿴","open")
	if(LuaPublicQuery("fbdata/fb01/e2")~=0)then
		AddTopSayMenuItem("ʰȡ","get")
	end
	--AddTopSayMenuItem("����","test")
return 1
elseif(answer=="test") then
	LuaSay("��ǰ��������"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb2=LuaPublicQuery("fbdata/fb01/kb2")
	if(kb2==1 )  then
		if(LuaPublicQuery("fbdata/fb01/e2")==0)then
			local account=5
			local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e2",re)
			LuaPublicSet("fbdata/fb01/rt2",GetCurrentTime()+5)--�ſ�5���ӳ�
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("����������60���ڽ�������")--ShowRoll
		end
		AddMenuItem("�Ƿ���Ҫ?","")
		AddMenuItem("�鿴","look")
		AddMenuItem("Ͷ����","roll")
		AddMenuItem("����","giveup")
	elseif(kb2==2)then
		LuaSay("�����ѽ���,��������߿�ʰȡ")
	elseif(kb2==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţC���ܿ���!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e2")][3])
	--AddMenuItem("�Ƿ���Ҫ?","")
	--AddMenuItem("�鿴","look")
	--AddMenuItem("Ͷ����","roll")
	--AddMenuItem("����","giveup")
elseif(answer=="roll")then
	--roll�㷽��:����ÿ��rollһ��,��roll�����ǰ�������ͬ���ڲ��Զ���roll,�����������Ϣ�ų�,���ݿ�ֻ�������ROLLֵ�����id��name
	local r21=LuaPublicQuery("fbdata/fb01/r21")--����ID��ROLL�㣬��2λ�������λ���ɫIDxx--����ID���ַ�û���ã��������ı���ڽ�ɫ����
	local r22=LuaPublicQuery("fbdata/fb01/r22")
	local r23=LuaPublicQuery("fbdata/fb01/r23")
	local r24=LuaPublicQuery("fbdata/fb01/r24")
	local r25=LuaPublicQuery("fbdata/fb01/r25")
	if(LuaQueryTask("fb01r2")==0)then--δ��
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt2")<60)then
			local roll=LuaRandom(99)+1
			while
				(roll==r21 or roll==r22 or roll==r23 or roll==r24 or roll==r25)
			do
				roll=LuaRandom(99)+1
			end
			if(r21==0)then	LuaPublicSet("fbdata/fb01/r21",roll)
			else
				if(r22==0)then	LuaPublicSet("fbdata/fb01/r22",roll)
				else
					if(r23==0)then	LuaPublicSet("fbdata/fb01/r23",roll)
					else
						if(r24==0)then	LuaPublicSet("fbdata/fb01/r24",roll)
						else
							if(r25==0)then	LuaPublicSet("fbdata/fb01/r25",roll)
							else
							--LocalMsg("߾!�󵨰��쾹������,��!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax2")
			if(rm<roll)then
			LuaPublicSet("fbdata/fb01/rollmax2",roll)
			LuaSetTask("fb01r2",roll)
			end
			LocalMsg(LuaQueryStr("name").."����@2"..roll.."@0��")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p2")+1--����������
			LuaPublicAdd("fbdata/fb01/p2",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
				LuaPublicSet("fbdata/fb01/kb2",2)--��������˿���ʰȡ��
			end
		else
			LuaSay("60������ʱ���ѹ�,����ȫ�ӷ���,������û��Ȩ�޻��װ��")
		end
	else
		LuaSay("���Ѿ�������")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb2")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax2")==LuaQueryTask("fb01r22") or LuaPublicQuery("fbdata/fb01/rollmax2")==0)then--��ɫ�������ʰ��ȫ�ӷ�����һ��ʰ
			LuaSay("��Ҫ��,��Ҫ���˵��,��˵����֪������Ҫ��?����Ҫ�Ҹ����,����Ҫ�Ҳ��᲻�����,�㲻���Ҳ���ӲҪ�����.��������һ����,����Ҫ��")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e2")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e2")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."���װ��")
			LuaPublicSet("fbdata/fb01/kb2",3)
		else
			LuaSay("������㲻������")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb2")==1)then
		AddMenuItem("�Ƿ���Ҫ?","")
		AddMenuItem("Ͷ����","roll")
		AddMenuItem("����","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţC���ܿ���!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--����������0����������
	local p=LuaPublicQuery("fbdata/fb01/p2")+1--����������
	LuaPublicAdd("fbdata/fb01/p2",1)
	LuaSetTask("fb01r22",-1)--����
	LocalMsg(LuaQueryStr("name").."����")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
		LuaPublicSet("fbdata/fb01/kb2",2)--��������˿���ʰȡ��
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end