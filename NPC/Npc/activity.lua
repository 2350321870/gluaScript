function do_activity(id, answer)

local level = LuaQuery("level")

if (answer == "0") then
		LuaSay("ͳһOL���������Ũ�����")
		AddMenuItem("@1[��]@0@5�׳����", "sysinfo Activity part7", "����")
		AddMenuItem("@1[��]@0@5ǩ���쳬��״̬", "sysinfo Activity part1", "����")
		AddMenuItem("@1[��]@0@5�̳ǵ��߲��ϴ��ۿ�", "sysinfo Activity part2", "����")
		
		

		--AddMenuItem("@1[��]@0@5��ţ����װ�����Ϯ", "sysinfo Activity part1", "����")
		--AddMenuItem("@1[��]@0@5BossЯ����װ��ʱ������������ս", "sysinfo Activity part2", "����")
		--AddMenuItem("@1[��]@0@5��ֵ�����", "sysinfo Activity part3", "����")
		--AddMenuItem("@1[��]@0@5ȫ��˫������", "sysinfo Activity part4", "����")
		--AddMenuItem("@1[��]@0@5ǿ��ʯ��ȡ�߽�װ��", "sysinfo Activity part2", "����")
		--AddMenuItem("@1[��]@0@5ÿ���ʹ�", "sysinfo Activity part4", "����")
		--AddMenuItem("@1[��]@0@5ʵ���ļ�֤", "sysinfo Activity part6", "����")
		--AddMenuItem("�ڲ��û��ͺ���", "sysinfo Activity part7", "����")
		--AddMenuItem("ͳһOL���ִ����", "sysinfo Activity part8", "����")		
elseif (answer == "part1") then
		LuaSay("�ʱ�䣺7��17����7��22��*����ݣ���ڼ䣬ÿ�쵽�����ǻʹ�ߴ�ǩ�����������ȡ���ͬ��״̬��ÿ����ҽ�ɫֻ��ÿ����ȡ1�λ״̬��ÿ���������4����ȡ�Ϳɻ�á�ǩ���Ǿ����ĳƺš����ƺ���Чʱ��48Сʱ��ÿ����ҽ�ɫֻ��ÿ����ȡ1�Σ�ÿ���������7����ȡ�Ϳɻ��10��ͨ���Լ���ǩ��֮�����ĳƺš����ƺ���Чʱ��120Сʱ���磺˫����˫�������鷭��������֮ѪЧ������ʦˮ��Ч����ħ��Ч����Ѫ��Ч�����ز�ūЧ����")
		AddMenuItem("���ع���", "sysinfo Activity 0", "ǩ���쳬��״̬")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part2") then
		LuaSay("�ʱ�䣺7��17����7��22��*����ݣ���ڼ䣬�̳Ǿֲ���������7��5�ۣ���û�п��������Żݵ�����Ŷ�����۵��߻����϶���ǿ��װ���ĵ��������װ���Ĳ��ϡ�")
		AddMenuItem("���ع���", "sysinfo Activity 0", "�̳ǵ��߲��ϴ��ۿ�")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part3") then
		LuaSay("�ʱ�䣺7��10����7��17��*����ݣ��ڻ�ڼ䷲�����ۼƳ�ֵ��ֵÿ���ۼƴﵽ300Ԫ����2����ڽ����ǻ��ʹ��ȡ100��ҡ���ֵÿ���ۼƴﵽ500Ԫ����2����ڽ����ǻ��ʹ��ȡ200��ҡ���ֵÿ���ۼƴﵽ1000Ԫ����2����ڽ����ǻ��ʹ��ȡ800��ҡ���ֵÿ���ۼƴﵽ2000Ԫ����2����ڽ����ǻ��ʹ��ȡ2000���")
		AddMenuItem("���ع���", "sysinfo Activity 0", "��ֵ�����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part4") then
		LuaSay("�ʱ�䣺7��10����7��17��*����ݣ���ڼ�ȫ�����д�־�����˫�����齱��")
		AddMenuItem("���ع���", "sysinfo Activity 0", "ȫ��˫������")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part5") then
		LuaSay("2012��6��14����2012��6��20��*����ݣ��ڻ�ڼ䷲�����ۼƳ�ֵ����2���ڽ����ǻʹ�ߴ���ȡ��*��ֵÿ���ۼƴﵽ100Ԫ�����ϵ�2����ڽ����ǻ��ʹ��ȡ100��ҡ�*��ֵÿ���ۼƴﵽ500Ԫ�����ϵ�2����ڽ����ǻ��ʹ��ȡȫ��Ľ�ҷ���������ҵ�����Ϸ���͵İ�Ԫ����@!")
		AddMenuItem("���ع���", "sysinfo Activity 0", "��ֵȫ��󷵻�")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part6") then
		LuaSay("�ʱ�䣺2012��5��25������9:00��2012��5��31��*����ݣ���ڼ��ȥ����������ȡ����������ǽ�ǿɻ����ʯש����ש����ש������������ש�߱�ɱ����˽�����������ϵ�ש����ʯש����ש����ש���ڽ�����NPC�ʹ�߻�ȡ����������ʹ�ð��ɿ��ٳɳ����԰�ȡ�����滻֮�Ƽ������١����ڵ�ʲô��������Ѫ�ɣ�")
		AddMenuItem("���ع���", "sysinfo Activity 0", "ʵ���ļ�֤")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part7") then
		LuaSay("5��8�չ��⿪ʼ*����ݣ�ֻҪһ��Ǯ����û������ֻ��Ҫ��ֵһ��Ǯ�����ܵõ����50����������һ�ţ�ʹ�ú��ܻ�ô������飩��ͭ��188888������288888��ÿ���˺�ֻ��һ�λ����Ŷ������������ǻרԱ")
		AddMenuItem("���ع���", "sysinfo Activity 0", "�׳����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
elseif (answer == "part8") then
		LuaSay("5��8�չ��⿪ʼ*����ݣ���ҽ�����Ϸ�󶼿ɻ�ü�ֵ1000Ԫ������������������������װ������ҩ����ȯ���ߣ��ð���10��������Կ������ߣ��Ժ�ÿ��5�����ܵ����õ��ߣ�60��֮ǰ������ʹ��")
		AddMenuItem("���ع���", "sysinfo Activity 0", "ͳһOL���ִ����")
		AddMenuItem("���ع���", "sysinfo BACK", "")
end
LuaOtherSendMenu()
return 1
end