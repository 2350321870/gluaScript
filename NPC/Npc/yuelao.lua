NPCINFO = { 
serial="170" ,
base_name="yuelao",
icon=2556,
NpcMove=2556,
name="����",
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="��������Ϊ����,ֱ������������" ,
LuaType=1,
} 
function do_talk(answer) 
if(answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7��������","")
	AddTopSayMenuItem("���","jiehun")
	AddTopSayMenuItem("�������","buban")
	if(LuaQueryTask("Thunyinsq")==0) then
		AddTopSayMenuItem("ף������","zhufu")
	end
	AddTopSayMenuItem("���","lihun")
	AddTopSayMenuItem("����","liaotian")
	return 1 
		
elseif(answer=="liaotian") then 
	LuaSay("���ϣ���������Ц�����ž��˿�")

elseif(answer=="jiehun") then	---��� 
	local level= LuaQuery("level")
	if(TeamCount()== 2 and level>=30 and TeamQuery("level")>=30) then
		if(LuaQueryStr("lassie")=="" and  TeamQueryStr("lassie")=="") then  --������ż
			if(LuaQueryStr("master") == TeamQueryStr("name") and LuaQuery("master_reward") == 1)then   --��ʦ����飬�Լ�δ��ʦ
				LuaSay("��δ��ʦ�����ܸ�ʦ����飡")
			else
				if(TeamQueryStr("master") == LuaQueryStr("name") and TeamQuery("master_reward") == 1)then --��ͽ�ܽ�飬ͽ��Ϊ��ʦ
					LuaSay("��ͽ��δ��ʦ�����ܸ�ͽ�ܽ�飡")
				else
					if(LuaQueryTask("Thunyinsq")==1 and TeamQueryTask("Thunyinsq")==1) then
						LuaSay("���ϣ����Խ��ķ�@320Wͭ��@0��ͬ�Խ��ķ�@3100W@0ͭ��")
						LuaSay("���ϣ�����Է��ܾ���飬ͭ�Ҳ��᷵��Ŷ@!")
						AddMenuItem("@7�������","","")
						AddMenuItem("ͬ�Խ��","txjh","")
						AddMenuItem("���Խ��","yxjh","") 
					else
						LuaSay("���ϣ�ֻ��2�˶��ڽ��幫���������˽�����ң���������������")
					end
				end
			end          
		else
			LuaSay("���ϣ�����2���Ѿ��ɻ飬��������@3�������@0Ŷ@!")
		end    
	else
		LuaSay("��ʾ��2��@330��@0��@3û����ż@0�������ӣ����ɽ��")
	end
    
elseif(answer=="txjh") then                 --ͬ�Խ��100W
	if(LuaItemCount("coin")>=1000000) then
		if(LuaQueryStr("gender")==TeamQueryStr("gender"))  then
			LuaNotice("@3"..LuaQueryStr("name").."@0��@3"..TeamQueryStr("name").."@0�İ���ɸ��������Ϊͬ־�����ǣ������˻����ĵ���")
			LuaGive("coin",-1000000,"Ttxjh")
			GetMarry()
		else
			LuaSay("���ϣ�������Խ��Ĳ˵�@!")
		end
	else
		LuaSay("���ϣ�ͬ�Խ����Ҫ�ķ�@3100W@0ͭ��Ŷ@!")
	end
     
elseif(answer=="yxjh") then                 --���Խ��20W
	if(LuaItemCount("coin")>=200000) then
		if(LuaQueryStr("gender")~=TeamQueryStr("gender"))  then        
			if(LuaQueryStr("gender")=="����")  then 
				LuaGive("coin",-200000,"Tyxjh")
				GetMarry()
			else
				LuaSay("���ϣ���������������@!")
			end 
		else
			LuaSay("���ϣ����ͬ�Խ��Ĳ˵�@!")
		end
	else
		LuaSay("���ϣ���Ҫ@320W@0ͭ�Ҳ��ܽ��@!")
	end
    

elseif(answer=="buban") then                    --�������20W
	if(TeamCount()== 2 and IsLassie()==1) then 
		if(LuaQueryTask("Thunyinsq")==2 and TeamQueryTask("Thunyinsq")==2) then
			if(LuaItemCount("coin")>=200000) then
				if(LuaQueryStr("gender")=="����") then
					LuaGive("coin",-200000,"Tbuban")
					LuaNotice("@3"..LuaQueryStr("name").."@0��@3"..TeamQueryStr("name").."@0�����˻���Ը����@7����ͬ�ģ���ͷ����")
					LuaSetTask("Thunyinsq",3)
				else

					LuaSay("���ϣ�ֻ�����з�����������Ŷ@!")
				end
			else
				LuaSay("���ϣ�����ӵ��@320Wͭ��@0���ܲ������")
			end
		elseif(LuaQueryTask("Thunyinsq")==3 or TeamQueryTask("Thunyinsq")==3)then
			LuaSay("���ϣ������Ѿ�����������ˡ�һ�Է���ֻ�ܲ���һ�Σ�ף��������Զ�Ҹ�@!")
		else
			LuaSay("���ϣ���������2���ڽ��幫����������@3�������@0�������������ﲹ�����Ŷ@!")
			if(LuaQueryTask("Thunyinsq")~=2)then
				LuaSay("���ϣ��㻹δ���벹��Ŷ����ô�ܲ����أ��Ͽ�ȥ��@!")
			else
				if(TeamQueryTask("Thunyinsq")~=2)then
					LuaSay("���ϣ������һ�뻹δ���벹��Ŷ���Ͽ�����ȥΪ�������@!")
				end
			end
			
		end
	else
		LuaSay("���ϣ�ֻ�з���2����Ӳſ����������ﲹ�����Ŷ@!")
	end



elseif(answer=="zhufu") then                   --�Լ��˵�ף�� 
	if(TeamCount()== 2) then
		if(TeamQueryTask("Thunyinsq")>0)then
			local a=LuaItemCount("e_state088y")
			local b=LuaItemCount("e_state088j")
			if(a==0 and b==0) then
			LuaSay("���ϣ�û�к���ǲ��ܶ��������ɽ���ף����Ŷ@!")
			else
				LuaSay("���ϣ�ף���ɹ�@!")
				LuaSay("���ϣ���������ף�������ǻ���ĸ��ӵ��Ҹ�@!")
				if(a>0) then  --�жϺ��
					DelItem("e_state088y",1)
				else
					DelItem("e_state088j",1)
				end
				r= LuaRandom(10)
				if(r==0) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7ף���ǰ�ͷ���ϣ�����ͬ��@0.---@3"..LuaQueryStr("name").."")
				elseif(r==1) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7�����మ�Ҹ�����ͬ��ͬ���Ҹ�����Ը������Ⱥ���@0.---@3"..LuaQueryStr("name").."")
				elseif(r==2) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7ף������Զ�మ��Я�ֹ�����������@0.---@3"..LuaQueryStr("name").."")
				elseif(r==3) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7���Ǳ���������һ�ԣ�����һ˫������������ף�����ǣ�@0.---@3"..LuaQueryStr("name").."")
				elseif(r==4) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7���Ǿ����ɲ�Ůò�������ںϵ�һ�ԣ�ף�����ǣ�@0.---@3"..LuaQueryStr("name").."")
				elseif(r==5) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7ǰ��ע��������ϲ����Ե��ף�����»��ϲ������ú�@0.---@3"..LuaQueryStr("name").."")
				elseif(r==6) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7��ϰ���Ľ����һ�н�������ģ�ף������@0.---@3"..LuaQueryStr("name").."")
				elseif(r==7) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7�������ȥ���ĵ�ף���������Ʒ�����ֿ������@0.---@3"..LuaQueryStr("name").."")
				elseif(r==8) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7ף������Ͷ��ϣ���������@0.---@3"..LuaQueryStr("name").."")
				elseif(r==9) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7���ǳ�˵�����ɾ��¾��������ˣ�ף�మ�������꣬��֪�������꣡@0.---@3"..LuaQueryStr("name").."")
				end
			end
		else
			LuaSay("���ϣ����ף����������Щ�������ڽ���ĵ�һ������ǰ�����ǽ���ף��Ŷ@!")
		end
	else
		LuaSay("���ϣ�����������������2����ӣ�������ɶ����ǵ�ף��@!")
	end

elseif(answer=="lihun") then          -------��� 
	if(TeamCount()== 2) then 
		if(IsLassie()==1) then
			if(LuaItemCount("coin")>200000) then 
				LuaSay("���ϣ���鲻���������ǵķ��޹�ϵ�������ķ�ͭ��@320W")
				LuaSay("���ϣ���ȷ��Ҫ���������")
				AddMenuItem("@7�Ƿ�������","","")
				AddMenuItem("�������","jchy","")
				AddMenuItem("�����","nojchy","")
			else
				LuaSay("��ʾ�����ϱ�����@320Wͭ��@0�������")
			end
		else
			LuaSay("��ʾ������2�˲��Ƿ��޹�ϵ�������飿") 
		end
	elseif(TeamCount()<2) then          --��������£���ż���ߣ��ܷ���飿 
		if(LuaQueryStr("lassie")~="") then 
			LuaSay("���ϣ�����û������ż��ͬ�⣬������ǿ����飬��Ҫͭ��@350W")
			LuaSay("���ϣ�����Ҫ���������")
			AddMenuItem("@7�Ƿ�������","","")
			AddMenuItem("�������","jchy","")
			AddMenuItem("�����","nojchy","")
		else
			LuaSay("��ʾ��������ż��û�У�̸������أ�")
		end
	else 
		LuaSay("��ʾ��������ӵ�����£��������")
	end
	  
	elseif(answer=="jchy") then
	if(TeamCount()== 2) then -- DisMarry() 1 �ۣ�0����
		if(DisMarry()==1)then
			LuaGive("coin",-200000,"Tjchy1") 
		end
	else
		if(LuaItemCount("coin")>500000) then
			if(DisMarry()==1)then
				LuaGive("coin",-500000,"Tjchy2") 
			end
		else
			LuaSay("��ʾ��������ͭ�Ҳ���@350W@0,���ܽ������")
		end
	end 
      elseif(answer=="nojchy") then
         LuaSay("���ϣ��׻�˵һ�շ��ް��ն����������Ҳ��@!")
      
      
end
LuaSendMenu()
return 1
end 