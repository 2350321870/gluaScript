NPCINFO = {
serial= "517" ,
base_name="fbbox01",
icon= 2581,
NpcMove=2581,
--name= "ľ��" ,
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="ľ��",
}
function do_talk(answer)
equipinfo={}
equipinfo[1]={"e_falchion016",2,"@5[���Ƶ�]@1[ʰȡ��]@053��@3սʿ����@0����:251@5[�����������]"}
equipinfo[2]={"e_sword018",2,"@5[Ѫħ��]@1[ʰȡ��]@054��@3��������@0����:202@5[�����������]"}
equipinfo[3]={"e_staff017",2,"@5[�ƿ���]@1[ʰȡ��]@053��@3��������@0����:202@5[�����������]"}
equipinfo[4]={"e_falchion015",2,"@5[��ɽ��]@1[ʰȡ��]@050��@3սʿ����@0����:238@5[�����������]"}
equipinfo[5]={"e_sword017",2,"@5[��Ȫ��]@1[ʰȡ��]@051��@3��������@0����:192@5[�����������]"}
equipinfo[6]={"e_staff016",2,"@5[������]@1[ʰȡ��]@050��@3��������@0����:192@5[�����������]"}
account=6
if (answer=="ask")then
	AddTopSayMenuItem("ľ��:","")
	AddTopSayMenuItem("�򿪲鿴","open")
	if(LuaPublicQuery("fbdata/fb01/e1")~=0)then
	AddTopSayMenuItem("ʰȡ","get")
	end
	--AddTopSayMenuItem("����","test")
	return 1
elseif(answer=="test") then
	LuaSay("��ǰ��������"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb1=LuaPublicQuery("fbdata/fb01/kb1")
	if(kb1==1)  then
		if(LuaPublicQuery("fbdata/fb01/e1")==0)then
		local account=6
		local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e1",re)
			LuaPublicSet("fbdata/fb01/rt1",GetCurrentTime()+5)--�ſ�5���ӳ�
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("����������60���ڽ�������")--ShowRoll
		end
			AddMenuItem("�Ƿ���Ҫ?","")
			AddMenuItem("�鿴","look")
			AddMenuItem("Ͷ����","roll")
			AddMenuItem("����","giveup")
	elseif(kb1==2)then
		LuaSay("�����ѽ���,��������߿�ʰȡ")
	elseif(kb1==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţA���ܿ���!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e1")][3])
	--AddMenuItem("�Ƿ���Ҫ?","")
	--AddMenuItem("�鿴","look")
	--AddMenuItem("Ͷ����","roll")
	--AddMenuItem("����","giveup")
elseif(answer=="roll")then
	--roll�㷽��:����ÿ��rollһ��,��roll�����ǰ�������ͬ���ڲ��Զ���roll,�����������Ϣ�ų�,���ݿ�ֻ�������ROLLֵ�����id��name
	local r1=LuaPublicQuery("fbdata/fb01/r1")--����ID��ROLL�㣬��2λ�������λ���ɫIDxx--����ID���ַ�û���ã��������ı���ڽ�ɫ����
	local r2=LuaPublicQuery("fbdata/fb01/r2")
	local r3=LuaPublicQuery("fbdata/fb01/r3")
	local r4=LuaPublicQuery("fbdata/fb01/r4")
	local r5=LuaPublicQuery("fbdata/fb01/r5")
	if(LuaQueryTask("fb01r1")==0)then--δ��
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt1")<60)then
			local roll=LuaRandom(99)+1
			while
			(roll==r1 or roll==r2 or roll==r3 or roll==r4 or roll==r5)
			do
			local roll=LuaRandom(99)+1
			end
			if(r1==0)then	LuaPublicSet("fbdata/fb01/r1",roll)
			else
				if(r2==0)then	LuaPublicSet("fbdata/fb01/r2",roll)
				else
					if(r3==0)then	LuaPublicSet("fbdata/fb01/r3",roll)
					else
						if(r4==0)then	LuaPublicSet("fbdata/fb01/r4",roll)
						else
							if(r5==0)then	LuaPublicSet("fbdata/fb01/r5",roll)
							else
							--LocalMsg("߾!�󵨰��쾹������,��!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax1")--���roller&roll
			if(rm<roll)then
				LuaPublicSet("fbdata/fb01/rollmax1",roll)
				LuaSetTask("fb01r1",roll)
			end
			LocalMsg(LuaQueryStr("name").."����@2"..roll.."@0��")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p1")+1--����������
			LuaPublicAdd("fbdata/fb01/p1",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
				LuaPublicSet("fbdata/fb01/kb1",2)--��������˿���ʰȡ��
			end
		else
		LuaSay("60������ʱ���ѹ�,����ȫ�ӷ���,������û��Ȩ�޻��װ��")
		end
	else
		LuaSay("���Ѿ�������")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb1")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax1")==LuaQueryTask("fb01r1") or LuaPublicQuery("fbdata/fb01/rollmax1")==0)then--��ɫ�������ʰ��ȫ�ӷ�����һ��ʰ
			LuaSay("��Ҫ��,��Ҫ���˵��,��˵����֪������Ҫ��?����Ҫ�Ҹ����,����Ҫ�Ҳ��᲻�����,�㲻���Ҳ���ӲҪ�����.��������һ����,����Ҫ��")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e1")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e1")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."���װ��")
			LuaPublicSet("fbdata/fb01/kb1",3)--3װ����ȡ
		else
		LuaSay("������㲻������")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==1)then
		AddMenuItem("�Ƿ���Ҫ?","")
		AddMenuItem("Ͷ����","roll")
		AddMenuItem("����","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţA���ܿ���!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--����������0����������
	local p=LuaPublicQuery("fbdata/fb01/p1")+1--����������
	LuaPublicAdd("fbdata/fb01/p1",1)
	LuaSetTask("fb01r1",-1)--����
	LocalMsg(LuaQueryStr("name").."����")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
		LuaPublicSet("fbdata/fb01/kb1",2)--���������3װ����ȡ
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end    	