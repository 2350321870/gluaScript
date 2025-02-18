NPCINFO = { 
serial="170" ,
base_name="yuelao",
icon=2556,
NpcMove=2556,
name="月老",
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="问世间情为何物,直教人生死相许" ,
LuaType=1,
} 
function do_talk(answer) 
if(answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7婚姻管理","")
	AddTopSayMenuItem("结婚","jiehun")
	AddTopSayMenuItem("补办婚礼","buban")
	if(LuaQueryTask("Thunyinsq")==0) then
		AddTopSayMenuItem("祝福佳人","zhufu")
	end
	AddTopSayMenuItem("离婚","lihun")
	AddTopSayMenuItem("聊天","liaotian")
	return 1 
		
elseif(answer=="liaotian") then 
	LuaSay("月老：但见新人笑，哪闻旧人哭")

elseif(answer=="jiehun") then	---结婚 
	local level= LuaQuery("level")
	if(TeamCount()== 2 and level>=30 and TeamQuery("level")>=30) then
		if(LuaQueryStr("lassie")=="" and  TeamQueryStr("lassie")=="") then  --均无配偶
			if(LuaQueryStr("master") == TeamQueryStr("name") and LuaQuery("master_reward") == 1)then   --跟师父结婚，自己未出师
				LuaSay("你未出师，不能跟师父结婚！")
			else
				if(TeamQueryStr("master") == LuaQueryStr("name") and TeamQuery("master_reward") == 1)then --跟徒弟结婚，徒弟为出师
					LuaSay("你徒弟未出师，不能跟徒弟结婚！")
				else
					if(LuaQueryTask("Thunyinsq")==1 and TeamQueryTask("Thunyinsq")==1) then
						LuaSay("月老：异性结婚耗费@320W铜币@0，同性结婚耗费@3100W@0铜币")
						LuaSay("月老：如果对方拒绝求婚，铜币不会返还哦@!")
						AddMenuItem("@7结婚类型","","")
						AddMenuItem("同性结婚","txjh","")
						AddMenuItem("异性结婚","yxjh","") 
					else
						LuaSay("月老：只有2人都在晋清公主处申请了结婚的玩家，才能在我这里结婚")
					end
				end
			end          
		else
			LuaSay("月老：你们2人已经成婚，不过可以@3补办婚礼@0哦@!")
		end    
	else
		LuaSay("提示：2个@330级@0的@3没有配偶@0的玩家组队，方可结婚")
	end
    
elseif(answer=="txjh") then                 --同性结婚100W
	if(LuaItemCount("coin")>=1000000) then
		if(LuaQueryStr("gender")==TeamQueryStr("gender"))  then
			LuaNotice("@3"..LuaQueryStr("name").."@0和@3"..TeamQueryStr("name").."@0的爱情可歌可泣，身为同志的他们，迈进了婚姻的殿堂")
			LuaGive("coin",-1000000,"Ttxjh")
			GetMarry()
		else
			LuaSay("月老：请点异性结婚的菜单@!")
		end
	else
		LuaSay("月老：同性结婚需要耗费@3100W@0铜币哦@!")
	end
     
elseif(answer=="yxjh") then                 --异性结婚20W
	if(LuaItemCount("coin")>=200000) then
		if(LuaQueryStr("gender")~=TeamQueryStr("gender"))  then        
			if(LuaQueryStr("gender")=="男性")  then 
				LuaGive("coin",-200000,"Tyxjh")
				GetMarry()
			else
				LuaSay("月老：必需男性提出结婚@!")
			end 
		else
			LuaSay("月老：请点同性结婚的菜单@!")
		end
	else
		LuaSay("月老：需要@320W@0铜币才能结婚@!")
	end
    

elseif(answer=="buban") then                    --补办婚礼：20W
	if(TeamCount()== 2 and IsLassie()==1) then 
		if(LuaQueryTask("Thunyinsq")==2 and TeamQueryTask("Thunyinsq")==2) then
			if(LuaItemCount("coin")>=200000) then
				if(LuaQueryStr("gender")=="男性") then
					LuaGive("coin",-200000,"Tbuban")
					LuaNotice("@3"..LuaQueryStr("name").."@0和@3"..TeamQueryStr("name").."@0补办了婚礼，愿他们@7永结同心，白头到老")
					LuaSetTask("Thunyinsq",3)
				else

					LuaSay("月老：只能由男方提出补办婚礼哦@!")
				end
			else
				LuaSay("月老：必须拥有@320W铜币@0才能补办婚礼")
			end
		elseif(LuaQueryTask("Thunyinsq")==3 or TeamQueryTask("Thunyinsq")==3)then
			LuaSay("月老：您们已经补办过婚礼了。一对夫妻只能补办一次，祝福您们永远幸福@!")
		else
			LuaSay("月老：必需你们2人在晋清公主处申请了@3补办婚礼@0，才能在我这里补办婚礼哦@!")
			if(LuaQueryTask("Thunyinsq")~=2)then
				LuaSay("月老：你还未申请补办哦，怎么能补办呢，赶快去吧@!")
			else
				if(TeamQueryTask("Thunyinsq")~=2)then
					LuaSay("月老：你的另一半还未申请补办哦，赶快让他去为你申请吧@!")
				end
			end
			
		end
	else
		LuaSay("月老：只有夫妻2人组队才可以在我这里补办婚礼哦@!")
	end



elseif(answer=="zhufu") then                   --对佳人的祝福 
	if(TeamCount()== 2) then
		if(TeamQueryTask("Thunyinsq")>0)then
			local a=LuaItemCount("e_state088y")
			local b=LuaItemCount("e_state088j")
			if(a==0 and b==0) then
			LuaSay("月老：没有红包是不能对新娘新郎进行祝福的哦@!")
			else
				LuaSay("月老：祝福成功@!")
				LuaSay("月老：有了您的祝福，他们会过的更加的幸福@!")
				if(a>0) then  --判断红包
					DelItem("e_state088y",1)
				else
					DelItem("e_state088j",1)
				end
				r= LuaRandom(10)
				if(r==0) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7祝你们白头到老，永结同心@0.---@3"..LuaQueryStr("name").."")
				elseif(r==1) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7相亲相爱幸福永，同德同心幸福长，愿你俩情比海深@0.---@3"..LuaQueryStr("name").."")
				elseif(r==2) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7祝你们永远相爱，携手共渡美丽人生@0.---@3"..LuaQueryStr("name").."")
				elseif(r==3) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7你们本就是天生一对，地造一双，而今共偕连理，祝福你们！@0.---@3"..LuaQueryStr("name").."")
				elseif(r==4) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7你们就是郎才女貌，珠联壁合的一对，祝福你们！@0.---@3"..LuaQueryStr("name").."")
				elseif(r==5) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7前生注定，而今喜结良缘。祝你们新婚大喜！百年好合@0.---@3"..LuaQueryStr("name").."")
				elseif(r==6) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7真诚爱情的结合是一切结合中最纯洁的，祝福你们@0.---@3"..LuaQueryStr("name").."")
				elseif(r==7) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7托清风捎去衷心的祝福，让流云奉上真挚的情意@0.---@3"..LuaQueryStr("name").."")
				elseif(r==8) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7祝你们情投意合，百年偕老@0.---@3"..LuaQueryStr("name").."")
				elseif(r==9) then
					LuaNotice("@3"..TeamQueryStr("name").."@0,@7人们常说的神仙眷侣就是你们了！祝相爱年年岁岁，相知岁岁年年！@0.---@3"..LuaQueryStr("name").."")
				end
			end
		else
			LuaSay("月老：你的祝福来的晚了些，必须在结婚后的第一次下线前对他们进行祝福哦@!")
		end
	else
		LuaSay("月老：必需和新娘或者新郎2人组队，才能完成对他们的祝福@!")
	end

elseif(answer=="lihun") then          -------离婚 
	if(TeamCount()== 2) then 
		if(IsLassie()==1) then
			if(LuaItemCount("coin")>200000) then 
				LuaSay("月老：离婚不仅会解除你们的夫妻关系，还将耗费铜币@320W")
				LuaSay("月老：你确定要解除婚姻吗？")
				AddMenuItem("@7是否解除婚姻","","")
				AddMenuItem("解除婚姻","jchy","")
				AddMenuItem("不解除","nojchy","")
			else
				LuaSay("提示：身上必需有@320W铜币@0才能离婚")
			end
		else
			LuaSay("提示：你们2人不是夫妻关系，如何离婚？") 
		end
	elseif(TeamCount()<2) then          --单人情况下，配偶在线，能否离婚？ 
		if(LuaQueryStr("lassie")~="") then 
			LuaSay("月老：由于没有你配偶的同意，这属于强行离婚，需要铜币@350W")
			LuaSay("月老：你坚持要解除婚姻吗？")
			AddMenuItem("@7是否解除婚姻","","")
			AddMenuItem("解除婚姻","jchy","")
			AddMenuItem("不解除","nojchy","")
		else
			LuaSay("提示：你连配偶都没有，谈何离婚呢？")
		end
	else 
		LuaSay("提示：多人组队的情况下，不可离婚")
	end
	  
	elseif(answer=="jchy") then
	if(TeamCount()== 2) then -- DisMarry() 1 扣，0不扣
		if(DisMarry()==1)then
			LuaGive("coin",-200000,"Tjchy1") 
		end
	else
		if(LuaItemCount("coin")>500000) then
			if(DisMarry()==1)then
				LuaGive("coin",-500000,"Tjchy2") 
			end
		else
			LuaSay("提示：你身上铜币不足@350W@0,不能解除婚姻")
		end
	end 
      elseif(answer=="nojchy") then
         LuaSay("月老：俗话说一日夫妻百日恩，考虑清楚也好@!")
      
      
end
LuaSendMenu()
return 1
end 