NPCINFO = {
serial= "26" ,
base_name="qzhuoji",
icon= 2510, 
NpcMove=2510, 
name= "钱庄老板【仓库】" , 
iconaddr=1, 
butt="20|20|63",
name_color = "CEFFCE" , 
lastsay="存钱不如商城里买国债",
have_storge=1,
have_bank =1,
LuaType=1,
}
function do_talk(answer)
if(answer=="ask") then    
	havetask =0
	local T240=LuaQueryTask("T240")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("Tfkdcg")>=1 and  LuaQueryTask("Tfkdcg")<4 and GetCurrentDay()==LuaQueryStrTask("fkdcgday"))then
		AddTopSayMenuItem("@2疯狂大采购【活动】","Tfkdcg")			--疯狂大采购活动	
		havetask =2
	end
	if(LuaQuery("level")>=30)then
		if(LuaQueryTask("Tcoc")<99 or LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
			AddTopSayMenuItem("@7商贾向背【每日】","Tcoc")
		end
	elseif(LuaQuery("level")>=25)then
		if(LuaQueryTask("Tcoc")<99 or LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
			AddTopSayMenuItem("@2[新]@0@7商贾向背【每日】","Tcoc")
		end
	end
	-------------------------国庆活动--------------- 
	if(LuaQueryTask("Tjianguodaye")>=1 and  LuaQueryTask("Tjianguodaye")<4)then
		AddTopSayMenuItem("@2建国大业【活动】","Tjianguodaye")			--国庆活动	

	end
	--------------------------------------------------- 
 	if(LuaQueryTask("T851")==2 or LuaQueryTask("T851")==3) then     -----冤屈
		AddTopSayMenuItem("@2冤屈【剧情】","T851")
		if(LuaQueryTask("T851") == 2)then
		havetask =2
		end
	end	
	if(LuaQueryTask("T454") == 1 or LuaQueryTask("T454") == 2)then
		AddTopSayMenuItem("@2运送物资【剧情】","T454")
		if(LuaQueryTask("T454") == 1)then
		havetask =2
		end
	end
	if(LuaQueryTask("T150") ==1 or LuaQueryTask("T150")==2) then
		AddTopSayMenuItem("@2建康商盟【剧情】","T150") 
		if(LuaQueryTask("T150")==1) then
		havetask =2
		end
	end	
	if((LuaQueryTask("Tsnpc_12")==1 or LuaQueryTask("Tsnpc_12")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_12")
		if(LuaQueryTask("Tsnpc_12")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_12")==1 or LuaQueryTask("Tenpc_12")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_12")
		if(LuaQueryTask("Tenpc_12")==1)then
			havetask2=1
		end
	end
	AddTopSayMenuItem("@5仓库","list_store")
	AddTopSayMenuItem("@5密码仓库","mimack")
	AddTopSayMenuItem("@5密码银行","mimayh")
	AddTopSayMenuItem("@5存款","deposit")	
	AddTopSayMenuItem("@5取款","withdraw")
	AddTopSayMenuItem("@5无息贷款","credit")
	AddTopSayMenuItem("@5余额查询","balance")
	AddTopSayMenuItem("@5货币兑换","change")
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end 
	return 1
elseif(answer=="mimack") then
	LuaSay("钱庄老板：开通密码仓库，保证你@3财物的绝对安全@0，不再担心账号被盗")	
	AddMenuItem("@7密码仓库","")
	local cknum=LuaHaveSaveStore()
	if(cknum<3) then
		AddMenuItem("@5先想想","nock")
		if(cknum==0) then
			LuaSay("提示：开通@3第1个密码仓库@0只需要花费@3100元宝@0，你确定要开通么？")	
			AddMenuItem("@5开通仓库1","openck")
		elseif(cknum==1) then
			LuaSay("提示：开通@3第2个密码仓库@0只需要花费@3200元宝@0，你确定要开通么？")
			AddMenuItem("@5开通仓库2","openck")
		elseif(cknum==2) then
			LuaSay("提示：开通@3第3个密码仓库@0只需要花费@3500元宝@0，你确定要开通么？")
			AddMenuItem("@5开通仓库3","openck")
		end
	end
         if(cknum>0) then
		AddMenuItem("@5密码仓库1","savestore1")
	 end
	 if(cknum>1) then
		AddMenuItem("@5密码仓库2","savestore2")
	 end
	 if(cknum>2) then
		AddMenuItem("@5密码仓库3","savestore3")
         end

  elseif(answer=="nock") then
	LuaSay("提示：开通了密码仓库，不用再担心贵重物品被盗哦。")

  elseif(answer=="openck") then
       LuaOpenSaveStore()
  




elseif(answer=="mimayh") then
	LuaSay("钱庄老板：开通密码银行，保证你@3铜币的绝对安全@0，不再担心账号被盗。")	
        AddMenuItem("@7密码银行","")
	if(LuaHaveSaveBank()==0) then
	LuaSay("提示：开通@3密码银行@0只需要花费@3100元宝@0，你确定要开通么？")	
	AddMenuItem("@5暂时不开通","noyh")
	AddMenuItem("@5开通","openyh")
	else
        AddMenuItem("@5存款","savebank")
	AddMenuItem("@5取款","openbank")
        AddMenuItem("@5余额查询","querybank")
	end
 
 elseif(answer=="noyh") then
	LuaSay("提示：开通了密码银行，不用再担心铜币被盗哦。")

 elseif(answer=="openyh") then
       LuaOpenBank()


elseif(answer=="liaotian") then
	LuaSay("钱庄老板：问世间钱为何物,只叫人拼死相取！在钱庄界摸爬滚打了半生，现在想来还不如去买国债。")
elseif(answer=="change")then
	local jb2coin=800--兑率
	local yb2coin=1000
	local cj1=LuaItemStatusNormalCount("o_gold1j")
	local cy1=LuaItemStatusNormalCount("o_gold1y")
	local cj2=LuaItemStatusNormalCount("o_gold2j")
	local cy2=LuaItemStatusNormalCount("o_gold2y")
	local cq1=LuaItemStatusNormalCount("o_zhaiquan1y")
	local cq2=LuaItemStatusNormalCount("o_zhaiquan2y")
	local cq3=LuaItemStatusNormalCount("o_zhaiquan3y")
	LuaSay("如果你急需用钱的话可到我这里兑换铜币或贷款,还可以找司马道子签国债，利润比较多。")
	AddMenuItem("@7兑换","")
	AddMenuItem("@9通宝@0[1]兑换铜币[1000]","cc1")
	--AddMenuItem("@9通宝@0[1]兑换铜币[800]","cc11")--金币的
	AddMenuItem("@8银票@0兑换铜币[10000]","cc2")
	--AddMenuItem("@8银票@0[1]兑换@9通宝@0[10]","cc3")
	--AddMenuItem("@7青纱券@0[1]兑换@8银票@0[10]","cc4")
	--AddMenuItem("@5蓝绸券@0[1]兑换@7青纱券@0[10]","cc5")
	--AddMenuItem("@3金帛券@0[1]兑换@5蓝绸券@0[10]","cc6")
	--AddMenuItem("兑率信息","ccinfo")
elseif(answer=="cc1")then
	if(LuaItemStatusNormalCount("o_gold1y")>=1)then
	DelItem("o_gold1y",1)	LuaGive("coin",1000,"Tyb2coin")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc11")then
	if(LuaItemStatusNormalCount("o_gold1j")>=1)then
	DelItem("o_gold1j",1)	LuaGive("coin",800,"Tyb2coin")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc2")then
	if(LuaItemStatusNormalCount("o_gold2y")>=1)then
	DelItem("o_gold2y",1)	LuaGive("coin",10000,"Tyb2coin")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc3")then
	if(LuaItemStatusNormalCount("o_gold2y")>=1)then
	DelItem("o_gold2y",1)	LuaGive("o_gold1y",10,"Tduihuan")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc4")then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
	DelItem("o_zhaiquan1y",1)	LuaGive("o_gold2y",10,"Tduihuan")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc5")then
	if(LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
	DelItem("o_zhaiquan2y",1)	LuaGive("o_zhaiquan1y",10,"Tduihuan")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="cc6")then
	if(LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
	DelItem("o_zhaiquan3y",1)	LuaGive("o_zhaiquan3y",10,"Tduihuan")
	else LuaShowNotify("物品不足")
	end
elseif(answer=="ccinfo")then

elseif(answer=="credit") then	
	LuaSay("钱庄老板：好借好还，再贷不难！")
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")					--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--上次还款期
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	if(lendmoney~=0)then
		LuaSetTemp("delay_day",floor(GetCurrentTime()/86400)-lend_day-loan_day_max)	--迟还期
	else
		LuaSetTemp("delay_day",0)
	end
	local rate=5								--迟还利率%%	
	if(level>=15)then
		AddMenuItem("@7贷款列表","")
		AddMenuItem("@5借贷","lend")
		AddMenuItem("@5还贷","repay")
		AddMenuItem("@5信用信息","credit_info")
	else
		LuaSay("@1提示：你的等级不足15级不能使用贷款功能！")
	end
	
 elseif(answer=="lend")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")				--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")			--上次还款期			
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
		if(LuaQueryTask("credit")==0)then	--新账户初终化
				LuaSay("钱庄老板：为防止无信不良贷款，钱庄贷款业务需要先开户。")
				LuaSay("钱庄老板：只要到元宝商城兑换一个@8银票@2作为开户费,就能开户贷款。")
				LuaSay("钱庄老板：什么？您没有元宝？偷偷的告诉你，@3寄卖店有元宝可买哦，用铜币就能买到@0。@!")
		AddMenuItem("@7贷款列表","")
				AddMenuItem("开户","open")
				AddMenuItem("不开","no")
		else
				LuaSay("钱庄老板：你现在的信誉最多可贷款@3"..loan_max.."@0.还款期限@2"..loan_day_max.."天@0.你要贷款吗？")
                AddMenuItem("@7贷款列表","")
				AddMenuItem("借"..loan_max.."","lend_1")
				AddMenuItem("不借","esc")
		end
	else
		LuaSay("钱庄老板：你还有@2"..lendmoney.."@0的旧账没还呢，先还了旧账才能贷新的。长期不还会冻结账户，需重新开户才能贷款。")
		UpdateTopSay("还了旧账才能再借钱。")
	end
	elseif(answer=="open")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")					--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--上次还款期
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5
	local c1=LuaItemStatusNormalCount("o_gold2j")
	local c2=LuaItemStatusNormalCount("o_gold2y")

	if(c1>0 or c2>0)then
		LuaSetTask("credit",1)
		if(c1>0)then
		DelItem("o_gold2j",1)
		else
		DelItem("o_gold2y",1)
		end
		local loan_max
		if(level<=30)then
			loan_max=(5000+100*level^2)*2/3				--最大借款数
		else
			loan_max=5000+100*level^2
		end
		loan_day_max=7
		LuaSay("你现在的信誉最多可贷款@3"..loan_max.."@0.还款期限@2"..loan_day_max.."@0.你要贷款吗？")
		AddMenuItem("@7贷款列表","")
		AddMenuItem("借"..loan_max.."","lend_1")
		AddMenuItem("不借","no")
	else
	LuaSay("钱庄老板：@2为防止无信不良贷款，钱庄贷款业务需要先开户。只要到商城兑换一个@8银票@2作为开户费,就能开户贷款。")
	end
  elseif(answer=="lend_1")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")					--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--上次还款期
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
	local loan_max
	if(level<=30)then
		loan_max=floor((LuaQueryTask("credit")*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=LuaQueryTask("credit")*5000+100*level^2
	end
	local loan_day_max=floor(LuaQueryTask("credit")/10)*7+7
	LuaSay("钱庄老板：甲方钱庄借给乙方"..LuaQueryStr("name").."@3"..loan_max.."@0铜币，贷期@2"..loan_day_max.."天。")
	LuaSay("钱庄老板：贷期内还款无息，过期还款加利息5厘(千分之五)。")	
	LuaSetTask("lendmoney",loan_max)
	LuaSetTask("lend_day",floor(GetCurrentTime()/86400))
	LuaGive("coin",loan_max,"Tloan")
		if(LuaQueryTask("Thx2")==9) then
		if(LuaQueryTask("Thx2J")==0) then
			LuaSay("提示：你已经完成环形任务第九环，快去回复拓跋圭吧。@!")
			LuaSetTask("Thx2J",99)
		end
		end
	end

	
  elseif(answer=="esc")then
	LuaSay("钱庄老板：能自食其力更好，若是真的资金紧张，只要你有信誉，但借无妨，而且贷期内还款是无息的。")
	LuaSay("钱庄老板：偷偷的告诉你，寄卖店有元宝可买哦，用铜币就能买到。@!")
	
elseif(answer=="repay")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")					--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--上次还款期
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
		LuaSay("钱庄老板：没贷过款怎么还？有钱没地放了吗？放我这可不保证安全。")
	else
		if(lend_day~=floor(GetCurrentTime()/86400))then
			if(delay_day>0)then
				if(LuaItemCount("coin")>=floor(lendmoney*(1+rate/1000)))then
					LuaSay("钱庄老板：人以信为本。你的贷款已经过期了，长期不还会影响你的信誉，还会影响你在游戏中功能的使用。")
					LuaDelTask("lend_day")
					if(credit>delay_day)then
						LuaSetTask("credit",credit-delay_day)
						LuaSay("钱庄老板：你迟还贷款"..delay_day.."天，你的信誉度@2降低了。")
					else
						LuaSetTask("credit",1)
						LuaSay("钱庄老板：你迟还贷款"..delay_day.."天，你的信誉度严重下降。")
					end
					if(LuaQueryTask("Thx2")==9) then
						if(LuaQueryTask("Thx2J")==0) then
							LuaSay("提示：你已经完成环形任务第九环，快去回复拓跋圭吧。@!")
							LuaSetTask("Thx2J",99)
						end
					end
					LuaSetTask("lastrepay_day",floor(GetCurrentTime()/86400))
					LuaSetTask("lendmoney",0)
					LuaGive("coin",-floor(lendmoney*(1+rate/1000)),"Tloan")
				else
					LuaSay("钱庄老板：你带的钱不够还贷的，本息共计@2"..floor((lendmoney*(1+rate/1000))).."。")
				end
			else
				if(LuaItemCount("coin")>=lendmoney)then
					LuaSay("钱庄老板：不错，人以信为本...")
					LuaDelTask("lend_day")
					if((credit<level/2 or level>=40) and credit<100)then	--40级以下信誉上限=级别/2,信誉最大100
						LuaSetTask("credit",credit+1)
						LuaSay("信誉值增加")

					else
						if(level==100)then
						LuaSay("钱庄老板：你的信誉值已达到上限。")
						else
						LuaSay("钱庄老板：你的信誉值已达到上限，提升级别才能增加上限。")
						end
					end
					if(LuaQueryTask("Thx2")==9) then
						if(LuaQueryTask("Thx2J")==0) then
							LuaSay("提示：你已经完成环形任务第九环，快去回复拓跋圭吧。@!")
							LuaSetTask("Thx2J",99)
						end
					end
					LuaSetTask("lendmoney",0)
					LuaGive("coin",-lendmoney,"Tloan")
					LuaSay("信誉值增加")
				else
					LuaSay("钱庄老板：你带的钱不够还贷的，贷款额@2"..lendmoney.."。")
				end
			end
		else
			LuaSay("钱庄老板：今天刚借了就还，你这不折腾我吗，我的管理费用你出啊？")
			if(LuaItemCount("coin")>=lendmoney)then
				LuaSay("钱庄老板：真是折腾人...当日还贷不长信誉值。")
				LuaDelTask("lend_day")
				LuaSetTask("lendmoney",0)
				LuaGive("coin",-lendmoney,"Tloan")
				if(LuaQueryTask("Thx2")==9) then
					if(LuaQueryTask("Thx2J")==0) then
						LuaSay("提示：你已经完成环形任务第九环，快去回复拓跋圭吧。@!")
						LuaSetTask("Thx2J",99)
					end
				end
			else
				LuaSay("钱庄老板：你带的钱根本不够还贷的，凑足了再来吧。")
			end
		end
	end
	UpdateMenu()
	
elseif(answer=="credit_info")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--信用
	local lendmoney= LuaQueryTask("lendmoney")				--贷款数
	local lend_day= LuaQueryTask("lend_day")					--借期
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--上次还款期
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--最大借款数
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--最长期限
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("credit")==0)then
	LuaSay("你还没有开户,需一个@8银票@0才能开户")
	else
	LuaSay("账户信息：最高可贷：@3"..loan_max.."@0。已经贷款：@2"..lendmoney.."@0。最长贷期：@2"..loan_day_max.."。")--xx
	end
	if(lendmoney>0)then
		if(delay_day>0)then
			LuaSay("@2已超过还款期限：@1"..delay_day.."天。")
		else
			LuaSay("距还贷期限：@7"..-delay_day.."天。")
		end
	end
	LuaSay("信誉值的增加可增加贷款上限和最长贷期。级别的提升也可增加贷款上限，信誉是有上限的，40级以下信誉上限很低。")
	UpdateMenu()

elseif(answer=="T150") then              ------------------------建康商盟 
	if(LuaQueryTask("T150")==1) then
		LuaSay("钱庄老板：让我来告诉你一些基本的知识吧。在我这里你可以进行@3仓库、存钱、取钱、贷款@0等操作。")
		LuaSay("钱庄老板：你可以@2存取物品和钱财@0，特别在没钱的时候，我还可以@3贷款@0给你哟，来体验一下吧。@!")
		LuaSay("钱庄老板：还有在这@4建康城@0的@3当铺伙计@0那里可以进行物品的@3寄卖@0哦。学会了这些之后就回去回复@3饰品店伙计@0吧。@!") 
		LuaSetTask("T150",2)
		UpdateTopSay("回复建康城南的饰品店伙计")
		AddLog("建康商盟【剧情】",150)
		UpdateMenu()                
	elseif(LuaQueryTask("T150")==2) then  
		LuaSay("钱庄老板：除了在我这里可以@3存取、贷款@0，还可以去@3当铺伙计@0那进行@3寄卖@0哦。@!")  
		LuaSay("钱庄老板：都学会了就去回复@4建康城南@0的@3饰品店伙计@0吧。@!")
	end
		
elseif(answer=="Tcoc")then---------------------商贾向背dmz
--放钱任务,内容是钱庄老板让玩家听下建康城的各位商人是否有组建商会的意向.因为没有商会,所以没有跑商任务,等大家都同意了,商会出现后再把这个换成跑商任务
	local Tcoc=LuaQueryTask("Tcoc")
	if(LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
		LuaSetTask("Tcocnumber",0)
		LuaDelTask("Tcoc")
		LuaDelTask("T955")
		LuaSetTask("Tcocday",GetCurrentDay())
		LuaSay("钱庄老板:如今天下不太平,商人这行走南闯北不容易,若是成立商会,结成联盟相互帮忙,商务定能更好")
		LuaSay("钱庄老板:"..LuaQueryStr("name")..",你去帮我向各店家捎个话,看看大家的意向如何.")	
		AddMenuItem("接受任务?","")
		AddMenuItem("好,没问题","Tcoc1")
		AddMenuItem("我没时间","no")
	else
		do_talk("Tcoc1")
	end
	--
	elseif(answer=="Tcoc1") then
	local Tcoc=LuaQueryTask("Tcoc")
	if(Tcoc==0)then	
		LuaSetTask("Tcoc",1)
		LuaSetTask("T955",1)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:你先去问下@4建康城南@0的@3饰品商人@0是否愿意组建加入商会。")
		UpdateNPCMenu("spdhuoji")
		elseif(Tcoc==1)then
		LuaSay("钱庄老板:你先去问下@4建康城南@0的@3饰品商人@0是否愿意组建加入商会。")
	elseif(Tcoc==2)then	
		LuaSetTask("Tcoc",3)
		LuaSetTask("T955",3)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:城中的@3驯兽师@0不但技术好,也会做生意,若是他合作组建加入商会定能使建康城更繁荣。")
		LuaSay("钱庄老板:你去问下那边建康城的@3驯兽师@0是否愿意组建加入商会。")
		UpdateNPCMenu("xunshoushi")
		elseif(Tcoc==3)then
		LuaSay("钱庄老板:你去问下城中的@3驯兽师@0是否愿意组建加入商会。")
	elseif(Tcoc==4)then	
		LuaSetTask("Tcoc",5)
		LuaSetTask("T955",5)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:再去问问@4建康城南@0右边的@3防具商人@0是否愿意组建加入商会。")		
		UpdateNPCMenu("fjdhuoji")
		elseif(Tcoc==5)then
		LuaSay("钱庄老板:再去问问@4建康城南@0右边的@3防具商人@0是否愿意组建加入商会。")
	elseif(Tcoc==6)then	
		LuaSetTask("Tcoc",7)
		LuaSetTask("T955",7)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:"..LuaQueryStr("name")..",你去问一下建康城南下边的@3药店商人@0是否愿意组建加入商会。")
		UpdateNPCMenu("ydhuoji")
		elseif(Tcoc==7)then
		LuaSay("钱庄老板:你去问下@4建康城南@0下边的@3药店商人@0是否愿意组建加入商会。")
	elseif(Tcoc==8)then
		if(LuaQuery("level")<25)then
			LuaSay("钱庄老板:看来各家商贾各怀私心,恐怕组建加入商会这事还得从长计议啊！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tcocjl")
		else
			LuaSetTask("Tcoc",9)
			LuaSetTask("T955",9)
			AddLog("商贾向背",955)
			LuaSay("钱庄老板:再去问下@4建康城南@0的@3武器商人@0是否愿意组建加入商会。")		
			UpdateNPCMenu("wqdhuoji")
		end
		elseif(Tcoc==9)then
		LuaSay("钱庄老板:再去问下@4建康城南@0的@3武器商人@0是否愿意组建加入商会。")
	elseif(Tcoc==10)then	
		LuaSetTask("Tcoc",11)
		LuaSetTask("T955",11)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:城中的@3行脚商人@0立志不租门头开市,虽然建康城的城管没为难他,可整天风里来雨里去的也不容易。")
		LuaSay("钱庄老板:虽无定所,但此人做起小商品买卖相当精明,若是拉入商会,也是不错的,你也去问下是否愿意组建加入商会。")
		UpdateNPCMenu("xingjiaoshangren")
		elseif(Tcoc==11)then
		LuaSay("钱庄老板:你去问下城中的@3行脚商人@0是否愿意组建加入商会。")
	--elseif(Tcoc==12)then	
		--LuaSetTask("Tcoc",13)
		--LuaSay("钱庄老板:"..LuaQueryStr("name")..",你去问下那边的@3当铺伙计@0是否愿意组建加入商会。")
		--UpdateNPCMenu("dphuoji")
		--elseif(Tcoc==13)then
		--LuaSay("钱庄老板:你去问下那边的@3当铺伙计@0是否愿意组建加入商会。")
	elseif(Tcoc==14)then	
		LuaSetTask("Tcoc",15)
		LuaSetTask("T955",15)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:当下土地被圈去造房了,百姓少田可耕,种子商的生意都不好做了。")
		LuaSay("你去问下@4建康城南@0那边的@3种子商@0是否愿意组建加入商会,如果他愿意就好了。")
		UpdateNPCMenu("zhongzis")
		elseif(Tcoc==15)then
		LuaSay("钱庄老板:你去问下@4建康城南@0那边的@3种子商@0是否愿意组建加入商会。")
	elseif(Tcoc==16)then
		if(LuaQuery("level")>=25 and LuaQuery("level")<40)then
			LuaSay("钱庄老板:看来各家商贾各怀私心,恐怕组建加入商会这事还得从长计议啊！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","Tcocjl")
		else
			LuaSetTask("Tcoc",17)
			LuaSetTask("T955",17)
			AddLog("商贾向背",955)
			LuaSay("钱庄老板:@4洛阳城@0的@3饰品店@0也是不可缺少的一部分啊，如果能将其拉入商会，势力剧增啊！")
			LuaSay("钱庄老板:你去问下@4洛阳城@0的@3饰品店商人@0，看他愿不愿意加入商会。")
		end
		elseif(Tcoc==17)then
		LuaSay("钱庄老板:你去问下@4洛阳城@0的@3饰品店商人@0，看他愿不愿意加入商会。")
	elseif(Tcoc==18)then
		LuaSetTask("Tcoc",19)
		LuaSetTask("T955",19)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:@4洛阳城@0是一块肥土，@3武器店商人@0每年赚了不知道多少钱，这可是快肥肉。")
		LuaSay("钱庄老板:你去问下@4洛阳城@0的@3武器店商人@0，看他愿不愿意加入商会，如果能拉拢过来就好了。")
		elseif(Tcoc==19)then
			LuaSay("钱庄老板:你去问下@4洛阳城@0的@3武器店商人@0，看他愿不愿意加入商会。")
	elseif(Tcoc==20)then
		LuaSetTask("Tcoc",21)
		LuaSetTask("T955",21)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:@4洛阳城@0盛产药剂靠的就是@3药品商人@0，而且他人也面善，应该是会加入进来的。")
		LuaSay("钱庄老板:你去问下@4洛阳城@0的@3药品商人@0，看他愿不愿意加入商会。")
		elseif(Tcoc==21)then
			LuaSay("钱庄老板:你去问下@4洛阳城@0的@3药品商人@0，看他愿不愿意加入商会。")
	elseif(Tcoc==22)then
		LuaSetTask("Tcoc",23)
		LuaSetTask("T955",23)
		AddLog("商贾向背",955)
		LuaSay("钱庄老板:@4洛阳城@0人丁丰盛，制造业也相当发达，@3防具店老板@0捞了很多，他如果能进商会，商业发展一片光明啊。")
		LuaSay("钱庄老板:你去问下@4洛阳城@0的@3防具商人@0，看他愿不愿意加入商会.")
		elseif(Tcoc==23)then
			LuaSay("钱庄老板:你去问下@4洛阳城@0的@3防具商人@0，看他愿不愿意加入商会。")
	elseif(Tcoc==24)then
		LuaSay("钱庄老板:看来各家商贾各怀私心,恐怕组建加入商会这事还得从长计议啊！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Tcocjl")
		
	else
		LuaSay("钱庄老板:看来各家商贾各怀私心,人心不能向背,恐怕组建商会这事还得从长计议啊！")
	end
	UpdateMenu()
	--
	elseif(answer=="Tcocjl")then--商贾向背最终奖励
		if(LuaQueryTask("Tcoc")==8)then
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",1000,"Tcoc")
			LuaGive("o_drug_hp4",5,"Tcoc")
			LuaGive("o_drug_mp4",5,"Tcoc")
		elseif(LuaQueryTask("Tcoc")==16)then	
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",2000,"Tcoc")
			LuaGive("o_drug_hp4",10,"Tcoc")
			LuaGive("o_drug_mp4",10,"Tcoc")
		elseif(LuaQueryTask("Tcoc")==24)then
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",3000,"Tcoc")
			LuaGive("o_drug_hp4",15,"Tcoc")
			LuaGive("o_drug_mp4",15,"Tcoc")
		end
	UpdateMenu()

elseif(answer=="T851")then         ------冤屈
	if(LuaQueryTask("T851") == 2)then
		LuaSay("钱庄老板：谢大人为国为民，一代忠臣！如果能为他澄清事实，求之不得！")
		LuaSay("钱庄老板：将黄金拿给@2宫殿@0的@3司马道子@0，以证明谢安的清白啊。")
		LuaSetTask("T851",3)
		LuaGive("o_mission362",1)
		UpdateTopSay("将黄金送与宫殿的司马道子")
		AddLog("冤屈【剧情】",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 3)then
		LuaSay("钱庄老板：将黄金拿给@2宫殿@0的@3司马道子@0，以证明谢安的清白啊。")	
	end
elseif(answer=="T454")then         ------运送物资
	 if(LuaQueryTask("T454") == 1)then
   		LuaSay("钱庄老板：是刘牢之将军的士兵吧，物资都在这里！拿好。")
        LuaSetTask("T454",2)
        LuaGive("o_mission367",1)
 		UpdateTopSay("少侠快去找淝水之滨的刘牢之吧。")
 		AddLog("运送物资【剧情】",454)
		UpdateMenu()
	 elseif (LuaQueryTask("T454") == 2)then
	 LuaSay("钱庄老板：@3刘牢之@0将军在淝水之滨，快去吧！")
	 end

elseif(answer=="Tsnpc_12")then
	if(LuaQueryTask("Tsnpc_12")==1)then
		LuaSay(""..LuaQueryStr("name").."：我们大人一早给你写的加急信件，老板你看一下")
		LuaSay("钱庄老板：嗯，好。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_12",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_12")==2)then
		LuaSay("钱庄老板：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_12")then
	if(LuaQueryTask("Tenpc_12")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件容易丢失，让我带话给你，心不要太黑了，少收点玩家的利息，不然他会整死你的")
		LuaSay("钱庄老板：哪里哪里，都是赚口稀饭钱啊")
		LuaSetTask("Tenpc_12",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_12")==2)then
		LuaSay("钱庄老板：大人的话小的时刻不敢忘怀，回去向你大人领取奖励吧@!")
	end
-------------------------	--国庆活动----------------------------- 
elseif(answer=="Tjianguodaye")then		
	if(LuaQueryTask("Tjianguodaye")==1)then
		r=LuaRandom(3)
		if(r==0)then
		LuaSay(""..LuaQueryStr("name")..":听说你这里有财神之宝@3玉如意@0,可否借在下一用呢？")
		LuaSay("钱庄老板：这可是我的命根子，可不随意借人！不过老夫爱赌钱，你要是赌赢了我，我就借给你。敢不敢和我赌一局啊？")
		AddMenuItem("@7请选择","")
		AddMenuItem("@3和你赌","guoqingdqyes")
		AddMenuItem("@3没胆量不敢赌","guoqingdqno")
		LuaSetTask("Tjianguodaye",2)
		LuaSetTask("Tjianguodayedb",99)
		elseif(r==1)then
		LuaSay(""..LuaQueryStr("name")..":听说你这里有财神之宝@3玉如意@0,可否借在下一用呢？")
		LuaSay("钱庄老板：给你了我就要喝西北风了！不过你要是满足了我一个愿望，或许我可以考虑。老夫好久没有吃过鱼了，你到建康城@3渔翁@0那里钓一条@3优质鱼肉@0让我尝尝！")
		LuaSetTask("Tjianguodaye",2)
		LuaSetTask("Tjianguodayedy",99)
		elseif(r==2)then
		LuaSay(""..LuaQueryStr("name")..":听说你这里有财神之宝@3玉如意@0,可否借在下一用呢？")
		LuaSay("钱庄老板：这个可不能随便给你，不过~~你要是为我收集一些皮毛，我兴许会答应！")
			if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
			LuaSay("钱庄老板：去收集@35张貂皮@0给我，我就把玉如意给你。提示：击杀@4建康东郊@0的@3幼貂@0可以得到貂皮。")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			elseif(LuaQuery("level")>15 and LuaQuery("level")<30)then
			LuaSay("钱庄老板：去收集@35张青狼皮@0给我，我就把玉如意给你。提示：击杀@4五斗山@0的@3青狼@0可以得到青狼皮。")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			elseif(LuaQuery("level")>=30)then
			LuaSay("钱庄老板：去收集@35张鳄鱼皮@0给我，我就把玉如意给你。提示：击杀@4淝水之滨@0的@3淝水鳄@0可以得到鳄鱼皮。")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			end
		end
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayedb")==99)then
		AddMenuItem("@7请选择","")
		AddMenuItem("@3和你赌","guoqingdqyes")
		AddMenuItem("@3没胆量不敢赌","guoqingdqno")
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayedy")==99)then
		if(LuaItemStatusNormalCount("o_mission039")>0)then
		LuaSay("钱庄老板：哇！这鱼肉真好！你既然满足了老夫的愿望，那我也绝不失言，@3玉如意@0你拿去吧！")
		LuaGive("o_mission249",1)	--任务道具：玉如意
		LuaSetTask("Tjianguodaye",3)
		LuaSetTask("Tjianguodayedy",0)
		DelItem("o_mission039",1)
		else
		LuaSay("钱庄老板：你还没有钓到我要的@3优质鱼肉@0呢！到@4建康城@0的@3渔翁@0处钓到优质鱼肉再来找我吧！")
		end
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99)then
		if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
			if(LuaItemCount("o_mission521")>=5)then	--貂皮	
			LuaSay("钱庄老板：这么快就得到@35张貂皮@0啦！那我也绝不失言，@3玉如意@0你拿走吧！")
			LuaGive("o_mission249",1)	--任务道具：玉如意
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission521",5)
			else
			LuaSay("钱庄老板：你还没有得到我想要的@35张貂皮@0呢！击杀@4建康东郊@0的@3幼貂@0可以得到貂皮")
			end
		elseif(LuaQuery("level")>15 and LuaQuery("level")<30 )then
			if(LuaItemCount("o_mission522")>=5)then		--青狼皮
			LuaSay("钱庄老板：这么快就得到@35张青狼皮@0啦！那我也绝不失言，@3玉如意@0你拿去吧！")
			LuaGive("o_mission249",1)	--任务道具：玉如意
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission522",5)
			else
			LuaSay("钱庄老板：你还没有得到我想要的@35张青狼皮@0呢！击杀@4五斗山@0的@3青狼@0可以得到青狼皮。")
			end
		elseif(LuaQuery("level")>=30)then
			if(LuaItemCount("o_mission523")>=5)then		--鳄鱼皮
			LuaSay("钱庄老板：这么快就得到@35张鳄鱼皮@0啦！那我也绝不失言，@3玉如意@0你拿去吧！")
			LuaGive("o_mission249",1)	--任务道具：玉如意
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission523",5)
			else
			LuaSay("钱庄老板：你还没有得到我想要的@35张鳄鱼皮@0呢！击杀@4淝水之滨@0的@3淝水鳄@0可以得到鳄鱼皮.")
			end
		end
	elseif(LuaQueryTask("Tjianguodaye")==3)then
		LuaSay("钱庄老板：@3玉如意@0你已经得到了，还在这里做什么？")
	end
elseif(answer=="guoqingdqyes")then
	LuaSay("钱庄老板：少侠真是有胆量啊！老夫佩服！不过要赢我可不容易哦！")
	LuaSay("钱庄老板：来~来~来下注吧！压大机会大，压小机会小哦")
	AddMenuItem("@7请选择","")
	AddMenuItem("@3压小","guoqingdqyesx")
	AddMenuItem("@3压大","guoqingdqyesd")
elseif(answer=="guoqingdqyesx")then
	LuaSay("钱庄老板：你选择了压小，需要拿出@3五百铜币@0作为抵押，系统将自动为你分配一个数字，要是你的数字小于我的数字那你就赢了。")
	if(LuaItemCount("coin")>=500)then
	r=LuaRandom(4)
	if(r==0)then
	LuaSay("钱庄老板：哇！你运气真好竟然抽中了数字0，我认输了！@3玉如意@0你拿去吧！")
	LuaGive("o_mission249",1)	--任务道具：玉如意
	LuaSetTask("Tjianguodaye",3)
	LuaSetTask("Tjianguodayedb",0)
	else
	LuaSay("钱庄老板：哎！你运气差了一点！这五百铜币就归我啦！")
	LuaGive("coin",-500,"Tjianguodayedb")
	end
	else
	LuaSay("钱庄老板：你还没有@3五百铜币@0，选择@3压小@0需要@3五百铜币@0作为抵押！等你赚够了钱在来找我吧！")
	end
elseif(answer=="guoqingdqyesd")then
	LuaSay("钱庄老板：你选择了压大，需要拿出二千铜币作为抵押，系统将自动为你分配一个数字，要是你的数字大于我的数字那你就赢了。")
	if(LuaItemCount("coin")>=2000)then
	ra=LuaRandom(2)
	if(ra==0)then
	LuaSay("钱庄老板：哇！你运气真好，我输了！@3玉如意@0你拿走吧！")
	LuaGive("o_mission249",1)	--任务道具：玉如意
	LuaSetTask("Tjianguodaye",3)
	LuaSetTask("Tjianguodayedb",0)
	else
	LuaSay("钱庄老板：哎！你运气差了一点！这二千铜币就归我啦！")
	LuaGive("coin",-2000,"Tjianguodayedb")
	end
	else
	LuaSay("钱庄老板：你还没有@3二千铜币@0，选择@3压大@0需要@3二千铜币@0作为抵押！等你赚够了钱在来找我吧！")
	end
elseif(answer=="guoqingdqno")then
	LuaSay("钱庄老板：哎！这点胆量都没有！")
-------------------------------------------------------------
elseif(answer=="Tfkdcg")then						--疯狂大采购
	if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
	if(LuaQueryTask("Tfkdcg")==1)then
		local r=LuaRandom(2)
		if(r==0)then
			LuaSay(""..LuaQueryStr("name").."：国库空虚，急需大量钱财，您富甲一方，可否愿意捐助一些钱财，为国出力呢？")
			LuaSay("钱庄老板：看我穿得这么破烂你也该清楚我的处境了。我也想捐助一些钱俩，可惜自身难保，哪有钱财可以捐助！")
			LuaSay(""..LuaQueryStr("name").."：哎！！想当初富甲一方的钱老板如今也一贫如洗了，那你可有什么赚钱之法？")
			LuaSay("钱庄老板：祖训不能外传，除非你和我赌一局，你赢了我就告诉你。")
			AddMenuItem("@7请选择","")
			AddMenuItem("@3和你赌","Tfkdcg_yes")
			AddMenuItem("@3没胆量不敢赌","Tfkdcg_no")
			LuaSetTask("Tfkdcg",2)
			LuaSetTask("Tfkdcgdb",99)
		elseif(r==1)then
			LuaSay(""..LuaQueryStr("name").."：国库空虚，急需大量钱财，您富甲一方，可否愿意捐助一些钱财，为国出力呢？")
			LuaSay("钱庄老板：看我穿得这么破烂你也该清楚我的处境了。我也想捐助一些钱俩，可惜自身难保，哪有钱财可以捐助！")
			LuaSay(""..LuaQueryStr("name").."：哎！！想当初富甲一方的钱老板如今也一贫如洗了，那你可有什么赚钱之法？")
			LuaSay("钱庄老板：好久都没有尝到肉味儿了，你到建康城的@3渔翁@0那里钓一条@3优质鱼肉@0让我尝尝！我就告诉你。")
			LuaSetTask("Tfkdcg",2)
			LuaSetTask("Tfkdcgdy",99)
		end
	elseif(LuaQueryTask("Tfkdcg")==2 and LuaQueryTask("Tfkdcgdb")==99)then
		AddMenuItem("@7请选择","")
		AddMenuItem("@3和你赌","Tfkdcg_yes")
		AddMenuItem("@3没胆量不敢赌","Tfkdcg_no")
	elseif(LuaQueryTask("Tfkdcg")==2 and LuaQueryTask("Tfkdcgdy")==99)then
		if(LuaItemStatusNormalCount("o_mission039")>0)then
			LuaSay("钱庄老板：哇！好香的鱼肉，看得我都流口水了。")
			LuaSay(""..LuaQueryStr("name").."：那赚钱之法是？")
			LuaSay("钱庄老板：赚钱之法就是：勤俭节约。好了，快去找活动使者吧！")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdy",0)
			DelItem("o_mission039",1)
		else
			LuaSay("钱庄老板：你还没有钓到我要的@3优质鱼肉@0呢！到@4建康城@0的@3渔翁@0处钓到优质鱼肉再来找我吧！")
		end
	elseif(LuaQueryTask("Tfkdcg")==3)then
		LuaSay("钱庄老板：还在这里干什么？快去找活动使者吧！")
	end
	else
		LuaSay("钱庄老板：该活动已经结束了！明天再来参与吧！")
		LuaDelTask("Tfkdcg")
		UpdateMenu()
	end
elseif(answer=="Tfkdcg_yes")then
	LuaSay("钱庄老板：你可真有胆量啊！老夫佩服！不过要赢我可不容易哦！")
	LuaSay("钱庄老板：来~来~来下注吧！压大机会大，压小机会小哦")
	AddMenuItem("@7请选择","")
	AddMenuItem("@3压小","Tfkdcg_yesx")
	AddMenuItem("@3压大","Tfkdcg_yesd")
elseif(answer=="Tfkdcg_yesx")then
	LuaSay("钱庄老板：你选择了压小，需要拿出@3五百铜币@0作为抵押，系统将自动为我们分配一个数字，如果你的数字小于我的数字那你就赢了。")
	if(LuaItemCount("coin")>=500)then
		local r=LuaRandom(4)
		if(r==0)then
			LuaSay("钱庄老板：呜呜....我输了，难道这是天意吗？")
			LuaSay(""..LuaQueryStr("name").."：那赚钱之法是？")
			LuaSay("钱庄老板：赚钱之法就是：@1勤俭节约@0。好了，快去找活动使者吧！")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdb",0)
		else
			LuaSay("钱庄老板：哎！你运气差了一点！这五百铜币就归我啦！")
			LuaGive("coin",-500,"Tfkdcgdb")
		end
	else
		LuaSay("钱庄老板：你还没有@3五百铜币@0，选择@3压小@0需要@3五百铜币@0作为抵押！等你赚够了钱在来找我吧！")
	end
elseif(answer=="Tfkdcg_yesd")then
	LuaSay("钱庄老板：你选择了压大，需要拿出二千铜币作为抵押，系统将自动为我们分配一个数字，要是你的数字大于我的数字那你就赢了。")
	if(LuaItemCount("coin")>=2000)then
	local ra=LuaRandom(2)
		if(ra==0)then
			LuaSay("钱庄老板：呜呜....我输了，难道这是天意吗？")
			LuaSay(""..LuaQueryStr("name").."：那赚钱之法是？")
			LuaSay("钱庄老板：赚钱之法就是：@1勤俭节约@0。好了，快去找活动使者吧！")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdb",0)
		else
			LuaSay("钱庄老板：哎！你运气差了一点！这二千铜币就归我啦！")
			LuaGive("coin",-2000,"Tfkdcgdb")
		end
	else
		LuaSay("钱庄老板：你还没有@3二千铜币@0，选择@3压大@0需要@3二千铜币@0作为抵押！等你赚够了钱在来找我吧！")
	end
elseif(answer=="Tfkdcg_no")then
	LuaSay("钱庄老板：哎！这点胆量都没有！")
------------------------
end
LuaSendMenu()
return 1
end
