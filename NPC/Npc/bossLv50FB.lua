NPCINFO = {
serial="307" ,
base_name="bossLv50FB",
icon=2993,
NpcMove=2993,
name="宗矢王",
iconaddr=1 ,
butt="10|10|82" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 95000,
addmp = 2500000,
addjz=9000,
addfy=220,
addgj=550,
isboss = 1,
level = 55,
ca = 1,
sp=1,   
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 8,
skill_list="162:4 122:4 129:4 221:2 221:5 220:4 222:2 223:9",----162:落雷  122：半月斩  129：爆裂之剑 专属技能： 221：五雷轰顶    220：三分归元气 222：倾国银弹波  223：强力弱甲
win_exp = 150000,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--60级套装--
other = "e_falchion017:10|e_sword019:20|e_fan009:30|e_shield007:40|e_knife009:50|e_falchion156:53|e_shield156:56|e_sword156:60|e_knife156:63|e_pen156:66|e_book156:70|e_head156:75|e_clothes156:80|e_pants156:85|e_shoes156:90|e_earring156:95|e_necklace156:100"
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
 --[[       BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"hp").."HP！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"mp").."MP！")
        BossLocalMsg("你lv为"..LuaQueryEnemy(EnemyID,"level").."！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"att").."攻击！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"def").."防御！")
        BossLocalMsg("你是"..LuaQueryStrEnemy(EnemyID,"name").."！")
        BossLocalMsg("你是"..LuaQueryStrEnemy(EnemyID,"class").."！")          ]]
 -----------------------第一阶段
         if(bhp>=80)then
            if(LuaQueryVar("ref1") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",1)
            elseif(LuaQueryVar("ref1") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref1",2)
            elseif(LuaQueryVar("ref1") ==2) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",3)
            elseif(LuaQueryVar("ref1") ==3) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",4)
            elseif(LuaQueryVar("ref1") ==4) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",5)
            elseif(LuaQueryVar("ref1") ==5) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",6)
            elseif(LuaQueryVar("ref1") ==6) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",7)
            elseif(LuaQueryVar("ref1") ==7) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",0)
			end


			if(bhp<85 and LuaQueryVar("flag1")==0)then
			BossLocalMsg("混蛋！打得我好痛啊！看来我得使出点本事了！") ------提示玩家boss进入第二阶段
			LuaSetVar("flag1",1)
			end
  --------------------------第二阶段
         elseif(bhp>=30 and bhp<80) then
            if(LuaQueryVar("ref2") ==0) then
                    if(LuaQueryStrEnemy(EnemyID,"class")=="shen") then   --目标为战士，低伤五雷轰顶
                        if(LuaQueryVar("ref2") ==0) then
                        BossLocalMsg("可恶，普天之下就战士最难缠了！")
                        end
               			Attack(EnemyID,4,0)
               			LuaSetVar("ref2",1)
               		else
               		    if(LuaQueryVar("ref2") ==0) then
               		    BossLocalMsg("哈哈哈哈！普天之下只有战士才能抗住我的攻击！看我送你们上西天！")
               		    end
               		    Attack(EnemyID,5,0)                        --目标不为战士，高伤五雷轰顶
               		    LuaSetVar("ref2",1)
					end
            elseif(LuaQueryVar("ref2") ==1) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",2)
            elseif(LuaQueryVar("ref2") ==2) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref2",3)
            elseif(LuaQueryVar("ref2") ==3) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref2",4)

            elseif(LuaQueryVar("ref2") ==4) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref2",5)
            elseif(LuaQueryVar("ref2") ==5) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",6)
            elseif(LuaQueryVar("ref2") ==6) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",0)
			end

			if(bhp<35 and LuaQueryVar("flag2")==0)then
			BossLocalMsg("人多欺负人少，呃啊！我快不行了，跟你们拼了！") ------提示玩家boss进入第三阶段
			LuaSetVar("flag2",1)
			end
  -------------------------------------第三阶段
          elseif(bhp<30 ) then
              if(LuaQueryVar("ref3") ==0) then
                BossLocalMsg("可恶！"..LuaQueryStrEnemy(EnemyID,"name")..",看我如何削减你的防御！")
               	Attack(EnemyID,8,0)                        --丢出减防buff，发动必杀技前兆
                LuaSetVar("ref3",1)
           	  elseif(LuaQueryVar("ref3") ==1) then
             		 Attack(EnemyID,0,0)
             		 LuaSetVar("ref3",2)
              elseif(LuaQueryVar("ref3") ==2) then
                     Attack(EnemyID,0,0)
                     LuaSetVar("ref3",3)
              elseif(LuaQueryVar("ref3") ==3) then
                    Attack(EnemyID,0,0)
                    LuaSetVar("ref3",4)
           	  elseif(LuaQueryVar("ref3")==4) then
                	if(LuaQueryEnemy(EnemyID,"def")<=50) then
                    BossLocalMsg("没人解除"..LuaQueryStrEnemy(EnemyID,"name").."减防的负面状态！哈哈哈哈，机会来了！死！！！")
                    Attack(EnemyID,6,0)                   --减防buff没被驱散，群秒
                    LuaSetVar("ref3",5)
					else
				    BossLocalMsg("接招吧！")
				    Attack(EnemyID,7,0)
				    LuaSetVar("ref3",5)
               		end
              elseif(LuaQueryVar("ref3") ==5) then
             		 Attack(EnemyID,0,0)
             		 LuaSetVar("ref3",6)
              elseif(LuaQueryVar("ref3") ==6) then
                     Attack(EnemyID,1,0)
                     LuaSetVar("ref3",7)
              elseif(LuaQueryVar("ref3") ==7) then
                    Attack(EnemyID,2,0)
                    LuaSetVar("ref3",8)
              elseif(LuaQueryVar("ref3") ==8) then
             		 Attack(EnemyID,3,0)
             		 LuaSetVar("ref3",9)
              elseif(LuaQueryVar("ref3") ==9) then
                     Attack(EnemyID,0,0)
                     LuaSetVar("ref3",10)
              elseif(LuaQueryVar("ref3") ==10) then
                    Attack(EnemyID,0,0)
                    LuaSetVar("ref3",0)
			  end

            if(bhp<5 and LuaQueryVar("flag3")==0)then
			BossLocalMsg("惨了，我要被爆装备了...")
			LuaSetVar("flag3",1)
			end
	     end

return 1
end