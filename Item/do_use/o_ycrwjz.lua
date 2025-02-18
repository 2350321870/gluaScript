function do_use()
if(LuaQueryTask("T802")==0)then
	local coldata1={Ycrwjz(1)}
	LuaSetTask("shuzu",coldata1[1])
	LuaSay("卷轴忽然化作一道脑筋急转弯题：@2"..coldata1[2].."@0")
	LuaSay("在公聊里输入正确答案之后，再次点击使用卷轴就可以得到奖励啦！@-")
	LuaSetTask("T802",1)
	AddLog("隐藏任务卷轴",802)
	local a=LuaRandom(3)
	if(a==0)then
		LuaSetTask("T802a",1)	--随机正确答案的npc
	elseif(a==1)then
		LuaSetTask("T802b",1)
	elseif(a==2)then
		LuaSetTask("T802c",1)
	end
	UpdateNPCMenu("pz_yzjw")
	UpdateNPCMenu("pz_qdbl")
	UpdateNPCMenu("pz_gzc")
elseif(LuaQueryTask("T802")==1)then
	local coldata1={Ycrwjz(LuaQueryTask("shuzu"))}
	if(LuaQueryTempStr("last_channel_msg")==""..coldata1[3].."")then
		LuaSay("@.你真聪明，这也被你猜中了！@B")
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		local jingyan=244176+level^2*20
			LuaAddJx("combat_exp",jingyan,"T802")
			LuaSetTask("T802",0)
			LuaSetTask("T802a",0)
			LuaSetTask("T802b",0)
			LuaSetTask("T802c",0)
			LuaDelTask("shuzu")
			DelLog("802")
			UpdateNPCMenu("pz_yzjw")
			UpdateNPCMenu("pz_qdbl")
			UpdateNPCMenu("pz_gzc")
			LuaSay("卷轴忽然化作一道青烟消失了.....")
			LuaOtherSendMenu()
			return 1
	else
		LuaSay("@2"..coldata1[2].."@0你还没有在公聊里输入正确答案或是输入答案错误！")
		LuaSay("如果真的猜不出答案，那我就悄悄的告诉你吧！@!拓跋烈、契丹族长、耶律雄才其中一位知道答案哦，找到一位知道答案的NPC就可以领取奖励啦！")
	end
end
LuaOtherSendMenu()
return 0
end


function Ycrwjz(collection)
array={}
array[1]={1,"人在不饥渴的时候也需要什么水？","薪水"}
array[2]={2,"有种动物，大小像只猫，长相又像虎，这是什么动物呢？","小老虎"}
array[3]={3,"他从早上吃到下午怎么撑不死?","他一直在吃亏"}
array[4]={4,"一个人什么地方能大能小，三个字?","心眼儿"}
array[5]={5,"3个人3天用3桶水，9个人9天用几桶水呢？","9桶水"}
array[6]={6,"永远都没有终结的事是什么呢？","问题"}
array[7]={7,"黑人不必担心什么事儿？","晒黑"}
array[8]={8,"有一种牛皮最容易被戳穿，是什么牛皮呢？","吹牛皮"}
array[9]={9,"什么地方能出生入死？","医院"}
array[10]={10,"世界上任何地方找不到如此便宜的住所是什么地方？","牢房"}
array[11]={11,"什么虎会吓人但不会吃人？","壁虎"}
array[12]={12,"一朵插在牛粪上的鲜花是什么花？","牵牛花"}
array[13]={13,"什么车最不可能发生车祸？","灵车"}
array[14]={14,"除了司机以外，还有谁每天搭公车不必给钱？","售票员"}
array[15]={15,"什么地方物品售价越高，客人越高兴?","当铺"}
array[16]={16,"要形容女孩子好看，说什么话她最高兴?","谎话"}
array[17]={17,"什么门永远关不上?","球门"}
array[18]={18,"什么妖怪，大家都不会害怕?","难怪"}
array[19]={19,"仁慈的皇帝却常常灭人九族来惩罚罪犯，为什么?","怕有人伤心"}
array[20]={20,"男生和女生有什么共同点?","都是人"}
array[21]={21,"有一样东西，你不需要它，却又不能不要它，它到底是什么呢?","大便"}
array[22]={22,"五根手指头会少掉两根会变成什么?","残废"}
array[23]={23,"小明跳进河里为何没死?","河里没水"}
array[24]={24,"睡美人最怕什么?","失眠"}
array[25]={25,"世界上最牢固的琴是什么?","钢琴"}
array[26]={26,"只有头却没有身体的牛，叫什么牛?","一头牛"}
array[27]={27,"什么线看得见，抓不着?","光线"}
array[28]={28,"从没见过的爷爷他是什么爷爷?","老天爷"}
array[29]={29,"黑人吃黑的东西叫什么?","黑吃黑"}
array[30]={30,"什么样的光会给人带来痛苦?","耳光"}
if(collection==1)then
	 collection=LuaRandom(30)+1
end
	 str1=array[collection][2]	--问题
	 str2=array[collection][3]	--答案

return  collection,str1,str2
end