--���������λ�ö���PROJECT��VERSION����
--PROJECT��ascii string���ͣ�������㶨�壬ֻҪ��ʹ��,����
--VERSION��ascii string���ͣ����ʹ��Luat������ƽ̨�̼������Ĺ��ܣ����밴��"X.X.X"���壬X��ʾ1λ���֣��������㶨��
PROJECT = "SOCKET_SHORT_CONNECTION_FLYMODE"
VERSION = "1.0.0"
require"sys"
--[[
���ʹ��UART���trace��������ע�͵Ĵ���"--sys.opntrace(true,1)"���ɣ���2������1��ʾUART1���trace�������Լ�����Ҫ�޸��������
�����������������trace�ڵĵط�������д��������Ա�֤UART�ھ����ܵ�����������ͳ��ֵĴ�����Ϣ��
���д�ں��������λ�ã����п����޷����������Ϣ���Ӷ����ӵ����Ѷ�
]]
--sys.opntrace(true,1)
--�رսű��е�����trace��ӡ
--sys.opntrace(false)
require"dbg"
dbg.setup("udp","www.test.com",9072)
require"update"
update.setup("udp","www.test.com",2233)
require"test"
--Air201�����壺Ӳ�����Ѿ����˿��Ź����ܣ�ʹ��Air201��������û���Ҫ������ע�͵Ĵ���"require"wdt""������4�������һ�����һ��
require"wdt"

net.setled(true)
sys.init(0,0)
--��Ҫץcore�е�traceʱ������������
--ril.request("AT*TRACE=\"SXS\",1,0")
--ril.request("AT*TRACE=\"DSS\",1,0")
--ril.request("AT*TRACE=\"RDA\",1,0")
--���ù���ģʽΪ��ģʽ
sys.setworkmode(sys.SIMPLE_MODE)
sys.run()