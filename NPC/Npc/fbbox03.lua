NPCINFO = {
serial= "519" ,
base_name="fbbox03",
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
equipinfo[1]={"e_clothes018",2,"@5[�������]@1[ʰȡ��]@052��@3սʿ����@0����:49@5[�����������]"}
equipinfo[2]={"e_clothes019",2,"@5[��ʦ����]@1[ʰȡ��]@055��@3��������@0����:55@5[�����������]"}
equipinfo[3]={"e_clothes020",2,"@5[��������]@1[ʰȡ��]@058��@3��������@0����:60@5[�����������]"}
equipinfo[4]={"e_head018",2,"@5[������]@1[ʰȡ��]@052������MP����:275@5[�����������]"}
equipinfo[5]={"e_head019",2,"@5[������]@1[ʰȡ��]@055������MP����:290@5[�����������]"}
equipinfo[6]={"e_head020",2,"@5[����ñ]@1[ʰȡ��]@058������MP����:305@5[�����������]"}
account=6
if (answer=="ask")then
	AddTopSayMenuItem("ľ��:","")
	AddTopSayMenuItem("�򿪲鿴","open")
	if(LuaPublicQuery("fbdata/fb01/e3")~=0)then
	AddTopSayMenuItem("ʰȡ","get")
	end
	--AddTopSayMenuItem("����","test")
return 1
elseif(answer=="test") then
	LuaSay("��ǰ��������"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb3=LuaPublicQuery("fbdata/fb01/kb3")
	if(kb3==1 )  then
		if(LuaPublicQuery("fbdata/fb01/e3")==0)then
		local account=6
		local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e3",re)
			LuaPublicSet("fbdata/fb01/rt3",GetCurrentTime()+5)--�ſ�5���ӳ�
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("����������60���ڽ�������")--ShowRoll
		end
			AddMenuItem("�Ƿ���Ҫ?","")
			AddMenuItem("�鿴","look")
			AddMenuItem("Ͷ����","roll")
			AddMenuItem("����","giveup")
	elseif(kb3==2)then
		LuaSay("�����ѽ���,��������߿�ʰȡ")
	elseif(kb3==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţ�����ܿ���!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e3")][3])
	--AddMenuItem("�Ƿ���Ҫ?","")
	--AddMenuItem("�鿴","look")
	--AddMenuItem("Ͷ����","roll")
	--AddMenuItem("����","giveup")
elseif(answer=="roll")then
	--roll�㷽��:����ÿ��rollһ��,��roll�����ǰ�������ͬ���ڲ��Զ���roll,�����������Ϣ�ų�,���ݿ�ֻ�������ROLLֵ�����id��name
	local r31=LuaPublicQuery("fbdata/fb01/r31")--����ID��ROLL�㣬��2λ�������λ���ɫIDxx--����ID���ַ�û���ã��������ı���ڽ�ɫ����
	local r32=LuaPublicQuery("fbdata/fb01/r32")
	local r33=LuaPublicQuery("fbdata/fb01/r33")
	local r34=LuaPublicQuery("fbdata/fb01/r34")
	local r35=LuaPublicQuery("fbdata/fb01/r35")
	if(LuaQueryTask("fb01r3")==0)then--δ��
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt3")<60)then
			local roll=LuaRandom(99)+1
			while
			(roll==r31 or roll==r32 or roll==r33 or roll==r34 or roll==r35)
			do
			local roll=LuaRandom(99)+1
			end
			if(r31==0)then	LuaPublicSet("fbdata/fb01/r31",roll)
			else
				if(r32==0)then	LuaPublicSet("fbdata/fb01/r32",roll)
				else
					if(r33==0)then	LuaPublicSet("fbdata/fb01/r33",roll)
					else
						if(r34==0)then	LuaPublicSet("fbdata/fb01/r34",roll)
						else
							if(r35==0)then	LuaPublicSet("fbdata/fb01/r35",roll)
							else
							--LocalMsg("߾!�󵨰��쾹������,��!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax3")
			if(rm<roll)then
				LuaPublicSet("fbdata/fb01/rollmax3",roll)
				LuaSetTask("fb01r3",roll)
			end
			LocalMsg(LuaQueryStr("name").."����@2"..roll.."@0��")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p3")+1--����������
			LuaPublicAdd("fbdata/fb01/p3",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
				LuaPublicSet("fbdata/fb01/kb3",2)--��������˿���ʰȡ��
			end
		else
			LuaSay("60������ʱ���ѹ�,����ȫ�ӷ���,������û��Ȩ�޻��װ��")
		end
	else
		LuaSay("���Ѿ�������")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb3")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax3")==LuaQueryTask("fb01r33") or LuaPublicQuery("fbdata/fb01/rollmax3")==0)then--��ɫ�������ʰ��ȫ�ӷ�����һ��ʰ
			LuaSay("��Ҫ��,��Ҫ���˵��,��˵����֪������Ҫ��?����Ҫ�Ҹ����,����Ҫ�Ҳ��᲻�����,�㲻���Ҳ���ӲҪ�����.��������һ����,����Ҫ��")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e3")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e3")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."���װ��")
			LuaPublicSet("fbdata/fb01/kb3",3)
		else
			LuaSay("������㲻������")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb3")==1)then
		AddMenuItem("�Ƿ���Ҫ?","")
		AddMenuItem("Ͷ����","roll")
		AddMenuItem("����","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("װ���ѱ�ʰȡ")
	else
		LuaSay("������ţ�����ܿ���!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--����������0����������
	local p=LuaPublicQuery("fbdata/fb01/p3")+1--����������
	LuaPublicAdd("fbdata/fb01/p3",1)
	LuaSetTask("fb01r3",-1)--����
	LocalMsg(LuaQueryStr("name").."����")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--��ͼ����Ѳ�����ROLL��,if��ͼ����ԱȫROLL��ɼ�ȡ,��Χ�жϾ�����
		LuaPublicSet("fbdata/fb01/kb3",2)--��������˿���ʰȡ��
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end  		