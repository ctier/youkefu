CREATE TABLE `uk_crm_datamodel` (
  `ID` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `NAME` varchar(255) DEFAULT NULL COMMENT '����',
  `REPORTTYPE` varchar(32) DEFAULT NULL COMMENT '����',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '����',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `OBJECTCOUNT` int(11) DEFAULT NULL COMMENT '��������',
  `DICID` varchar(32) DEFAULT NULL COMMENT '�˵�ID',
  `CREATETIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `DESCRIPTION` longtext COMMENT '����',
  `HTML` longtext COMMENT '����',
  `REPORTPACKAGE` varchar(255) DEFAULT NULL COMMENT 'Ŀ¼����',
  `USEACL` varchar(32) DEFAULT NULL COMMENT '��Ȩ��Ϣ',
  `status` varchar(32) DEFAULT NULL COMMENT '״̬',
  `rolename` text COMMENT '��ɫ����',
  `userid` text COMMENT '�����û�ID',
  `blacklist` text COMMENT '������',
  `REPORTCONTENT` longtext COMMENT '��������',
  `reportmodel` varchar(32) DEFAULT NULL COMMENT 'ģ��',
  `updatetime` timestamp NULL DEFAULT NULL COMMENT '����ʱ��',
  `creater` varchar(255) DEFAULT NULL COMMENT '������',
  `reportversion` int(11) DEFAULT NULL COMMENT '�汾��',
  `publishedtype` varchar(32) DEFAULT NULL COMMENT '����״̬',
  `tabtype` varchar(32) DEFAULT NULL COMMENT 'Ԫ������',
  `USERNAME` varchar(32) DEFAULT NULL COMMENT '�û���',
  `USEREMAIL` varchar(255) DEFAULT NULL COMMENT '�û��ʼ���Ϣ',
  `CACHE` smallint(6) DEFAULT NULL COMMENT '�Ƿ��������ݻ���',
  `EXTPARAM` varchar(255) DEFAULT NULL COMMENT '��չ����',
  `TARGETREPORT` varchar(32) DEFAULT NULL COMMENT 'ģ�����',
  `VIEWTYPE` varchar(32) DEFAULT NULL COMMENT '��������',
  `ACTIONTYPE` varchar(32) DEFAULT NULL COMMENT '��������',
  `STYLE` varchar(32) DEFAULT NULL COMMENT '��ʽ��Ϣ',
  `ICON` varchar(32) DEFAULT NULL COMMENT 'ͼ��',
  `TBID` varchar(32) DEFAULT NULL COMMENT 'Ԫ����ID',
  `TBNAME` varchar(255) DEFAULT NULL COMMENT 'Ԫ��������',
  `ACTION` varchar(32) DEFAULT NULL COMMENT '����',
  `BTNTYPE` varchar(32) DEFAULT NULL COMMENT '��ť����',
  `DESIGN` varchar(32) DEFAULT NULL COMMENT '��ʾֵ',
  `SORTINDEX` int(11) DEFAULT NULL COMMENT '�������',
  `PROID` varchar(32) DEFAULT NULL COMMENT '��ƷID',
  `AUTHCODE` varchar(50) DEFAULT NULL COMMENT 'Ȩ�޴���',
  `AUTHITEM` varchar(50) DEFAULT NULL COMMENT '��Ȩʱ��',
  `DSTYPE` varchar(32) DEFAULT NULL COMMENT '����Դ����',
  `RTFEDIT` tinyint(4) DEFAULT NULL COMMENT '�Ƿ�����༭�ı�',
  `CODEEDIT` tinyint(4) DEFAULT NULL COMMENT '�Ƿ�����༭����',
  `LINKTYPE` varchar(32) DEFAULT NULL COMMENT '��������',
  `LINKURL` varchar(255) DEFAULT NULL COMMENT '������תURL',
  `PARAMS` varchar(255) DEFAULT NULL COMMENT '��չ����',
  `LAYOUTTYPE` varchar(32) DEFAULT NULL COMMENT '��������',
  `upload` tinyint(4) DEFAULT NULL COMMENT '�Ƿ������ϴ�',
  `hasform` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��б�',
  `formtype` varchar(32) DEFAULT NULL COMMENT '������',
  `submiturl` varchar(255) DEFAULT NULL COMMENT '�ύ��ת��URL',
  `submitpage` varchar(255) DEFAULT NULL COMMENT '��תҳ��',
  `submitlink` varchar(255) DEFAULT NULL COMMENT '�ύURL',
  `reseturl` varchar(255) DEFAULT NULL COMMENT '���ú���תURL',
  `resetpage` varchar(255) DEFAULT NULL COMMENT '���ú���ת��ַ',
  `resetlink` varchar(255) DEFAULT NULL COMMENT '��������',
  `resetbtn` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��������ð�ť',
  `submitbtn` tinyint(4) DEFAULT NULL COMMENT '�Ƿ������ύ��ť',
  `resetpagerpt` varchar(32) DEFAULT NULL COMMENT '����ҳ��',
  `submitpagerpt` varchar(255) DEFAULT NULL COMMENT '�ύҳ��',
  `layoutleft` tinyint(4) DEFAULT NULL COMMENT '����������',
  `layoutright` tinyint(4) DEFAULT NULL COMMENT '�����Ҳ����',
  `layoutcenter` tinyint(4) DEFAULT NULL COMMENT '�����м����',
  `leftscroll` tinyint(4) DEFAULT NULL COMMENT '����������',
  `rightscroll` tinyint(4) DEFAULT NULL COMMENT '�����Ҳ����',
  `centerscroll` tinyint(4) DEFAULT NULL COMMENT '�����м����',
  `leftwidth` varchar(32) DEFAULT NULL COMMENT '�����',
  `rightwidth` varchar(32) DEFAULT NULL COMMENT '�Ҳ���',
  `centerheight` varchar(32) DEFAULT NULL COMMENT '�м���',
  `mediaagent` tinyint(4) DEFAULT NULL COMMENT '��ϯ',
  `hisnav` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��е���',
  `submittype` varchar(32) DEFAULT NULL COMMENT '�ύ����',
  `submitpos` varchar(32) DEFAULT NULL COMMENT '���ύ�����ҳ��λ��',
  `MGROUP` tinyint(4) DEFAULT '0' COMMENT '�Ƿ����÷���',
  `groupname` varchar(100) DEFAULT NULL COMMENT '��������',
  `groupicon` varchar(100) DEFAULT NULL COMMENT '����ͼ��',
  `groupcolor` varchar(100) DEFAULT NULL COMMENT '������ɫ',
  `workflow` tinyint(4) DEFAULT NULL COMMENT '��������',
  `flowtype` varchar(50) DEFAULT NULL COMMENT '��������',
  `successtip` varchar(255) DEFAULT NULL COMMENT '�ɹ���ʾ',
  `errortip` varchar(255) DEFAULT NULL COMMENT 'ʧ����ʾ',
  `fullscreen` tinyint(4) DEFAULT NULL COMMENT 'ȫ��',
  `autorefresh` tinyint(4) DEFAULT NULL COMMENT '�Զ�ˢ��',
  `refreshtime` int(11) DEFAULT NULL COMMENT 'ˢ�¼��',
  `autoscroll` tinyint(4) DEFAULT NULL COMMENT '�Զ�����',
  `scrollspeed` varchar(32) DEFAULT NULL COMMENT '�����ٶ�',
  `onlytab` tinyint(4) DEFAULT NULL COMMENT '������ʾ��ʱ���Ƿ�ֻ��ʾ ҳǩ',
  `rotationspeed` int(11) DEFAULT NULL COMMENT '������ʾ��ʱ���ֲ��ٶ�',
  `accesshis` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��¼ ������ʷ',
  `searchhis` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��¼������ʷ',
  `CODE` varchar(100) DEFAULT NULL COMMENT '����',
  `duplicate` tinyint(4) DEFAULT NULL COMMENT '�Ƿ������ظ�����',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `uk_crm_dataproduct` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(32) DEFAULT NULL COMMENT '����',
  `TITLE` varchar(32) DEFAULT NULL COMMENT '����',
  `CODE` varchar(32) DEFAULT NULL COMMENT ' ����',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `TYPE` varchar(32) DEFAULT NULL COMMENT '����',
  `MEMO` varchar(255) DEFAULT NULL COMMENT '��ע',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '״̬',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(255) DEFAULT NULL COMMENT '������',
  `PUBLISHEDTYPE` varchar(32) DEFAULT NULL COMMENT '��������',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '������Ϣ',
  `TABTYPE` varchar(32) DEFAULT NULL COMMENT '��Ʒ����',
  `DSTYPE` varchar(32) DEFAULT NULL COMMENT '��ʾ����',
  `DSTEMPLET` varchar(255) DEFAULT NULL COMMENT '��ʾģ��',
  `SORTINDEX` int(11) DEFAULT NULL COMMENT '�������',
  `DICTYPE` varchar(32) DEFAULT NULL COMMENT 'Ŀ¼����',
  `ICONCLASS` varchar(100) DEFAULT NULL COMMENT 'ͼ����ʽ',
  `CSSSTYLE` varchar(255) DEFAULT NULL COMMENT '��ʾ��ʽ',
  `AUTHCODE` varchar(100) DEFAULT NULL COMMENT '��Ȩ����',
  `DEFAULTMENU` tinyint(4) DEFAULT NULL COMMENT 'Ĭ�ϲ�Ʒ',
  `DATAID` varchar(32) DEFAULT NULL COMMENT '�ⲿ����ID',
  `DICICON` varchar(32) DEFAULT NULL COMMENT ' Ŀ¼ͼ��',
  `CURICON` varchar(32) DEFAULT NULL COMMENT 'ѡ��ͼ��',
  `BGCOLOR` varchar(32) DEFAULT NULL COMMENT '������ɫ',
  `CURBGCOLOR` varchar(32) DEFAULT NULL COMMENT 'ѡ�еı�����ɫ',
  `MENUPOS` varchar(32) DEFAULT NULL COMMENT '�˵�λ��',
  `DISTITLE` varchar(100) DEFAULT NULL COMMENT '��ʾ����',
  `NAVMENU` tinyint(4) DEFAULT '0' COMMENT '��ʾ�˵�',
  `QUICKMENU` tinyint(4) DEFAULT '0' COMMENT '�Ƿ���ʾ�ڿ�ݲ˵�',
  UNIQUE KEY `SQL121227155530400` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



ALTER TABLE uk_noticemsg ADD invalidtime datetime DEFAULT NULL COMMENT 'ʧЧʱ��';

ALTER TABLE uk_consult_invite ADD lvtipmsg text DEFAULT NULL COMMENT '����ϯ���ߵ���ʾ��Ϣ';
ALTER TABLE uk_crm_dataproduct ADD duplicate tinyint(4) DEFAULT 0 COMMENT '�Ƿ������ظ�����';
ALTER TABLE uk_crm_dataproduct ADD design tinyint(4) DEFAULT 0 COMMENT '����';

DROP INDEX index_1 ON uk_callcenter_event;
CREATE INDEX index_1 ON uk_callcenter_event  (`ORGI`,`DISCALLER`,`DISCALLED`,`MISSCALL`,`DURATION`,`RINGDURATION`,`calltype`,`servicestatus`,`direction`,`userid`,`organ`,`createtime`,`starttime`,`nameid`) USING BTREE;




ALTER TABLE uk_consult_invite ADD filterscript tinyint(4) DEFAULT 0 COMMENT '��ֹ�ÿͶ˷���HTML����';
ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '��ֹ��ϯ�˷���HTML����';

ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '��ֹ��ϯ�˷���HTML����';

ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '��ֹ��ϯ�˷���HTML����';

ALTER TABLE uk_agentuser ADD filterscript int DEFAULT 0 COMMENT '�ÿͶνű����˴���';
ALTER TABLE uk_agentuser ADD filteragentscript int DEFAULT 0 COMMENT '��ϯ�˽ű����˴���';

ALTER TABLE uk_agentuser ADD sensitiveword int DEFAULT 0 COMMENT '�ÿͶ����дʴ�������';
ALTER TABLE uk_agentuser ADD sensitivewordagent int DEFAULT 0 COMMENT '��ϯ�����дʴ�������';

ALTER TABLE uk_agentuser ADD msgtimeout int DEFAULT 0 COMMENT '�ÿͶ���Ϣ��ʱ����';
ALTER TABLE uk_agentuser ADD msgtimeoutagent int DEFAULT 0 COMMENT '��ϯ����Ϣ���дʴ�������';

ALTER TABLE uk_agentuser ADD sessiontimeout int DEFAULT 0 COMMENT '�Ự��ʱ����';


ALTER TABLE uk_agentservice ADD filterscript int DEFAULT 0 COMMENT '�ÿͶνű����˴���';
ALTER TABLE uk_agentservice ADD filteragentscript int DEFAULT 0 COMMENT '��ϯ�˽ű����˴���';

ALTER TABLE uk_agentservice ADD sensitiveword int DEFAULT 0 COMMENT '�ÿͶ����дʴ�������';
ALTER TABLE uk_agentservice ADD sensitivewordagent int DEFAULT 0 COMMENT '��ϯ�����дʴ�������';

ALTER TABLE uk_agentservice ADD msgtimeout int DEFAULT 0 COMMENT '�ÿͶ���Ϣ��ʱ����';
ALTER TABLE uk_agentservice ADD msgtimeoutagent int DEFAULT 0 COMMENT '��ϯ����Ϣ���дʴ�������';

ALTER TABLE uk_agentservice ADD sessiontimeout int DEFAULT 0 COMMENT '�Ự��ʱ����';


ALTER TABLE uk_chat_message ADD filterscript tinyint(4) DEFAULT 0 COMMENT '������HTML�������';


ALTER TABLE uk_callcenter_extention ADD greetlong VARCHAR(100) DEFAULT NULL COMMENT '��ӭ��ʾ����';
ALTER TABLE uk_callcenter_extention ADD greetshort VARCHAR(100) DEFAULT NULL COMMENT '��ӭ��ʾ������';
ALTER TABLE uk_callcenter_extention ADD invalidsound VARCHAR(100) DEFAULT NULL COMMENT '��Ч������ʾ����';
ALTER TABLE uk_callcenter_extention ADD exitsound VARCHAR(100) DEFAULT NULL COMMENT '�뿪����';
ALTER TABLE uk_callcenter_extention ADD confirmmacro VARCHAR(50) DEFAULT NULL COMMENT 'ȷ�Ϻ�ָ��';
ALTER TABLE uk_callcenter_extention ADD confirmkey VARCHAR(50) DEFAULT NULL COMMENT 'ȷ�ϰ���';
ALTER TABLE uk_callcenter_extention ADD ttsengine VARCHAR(20) DEFAULT NULL COMMENT 'TTS����';
ALTER TABLE uk_callcenter_extention ADD ttsvoice VARCHAR(50) DEFAULT NULL COMMENT 'TTS����';
ALTER TABLE uk_callcenter_extention ADD confirmattempts VARCHAR(50) DEFAULT NULL COMMENT 'ȷ����ʾ��Ϣ';
ALTER TABLE uk_callcenter_extention ADD timeout int DEFAULT 0 COMMENT '��ʱʱ��';

ALTER TABLE uk_callcenter_extention ADD interdigittimeout int DEFAULT 0 COMMENT '���еȴ���ʱ';
ALTER TABLE uk_callcenter_extention ADD maxfailures int DEFAULT 0 COMMENT '���ʧ�ܴ���';

ALTER TABLE uk_callcenter_extention ADD maxtimeouts int DEFAULT 0 COMMENT '���ʱ����';

ALTER TABLE uk_callcenter_extention ADD digitlen int DEFAULT 0 COMMENT '���ְ�������';
ALTER TABLE uk_callcenter_extention ADD action VARCHAR(50) DEFAULT NULL COMMENT 'ָ��';
ALTER TABLE uk_callcenter_extention ADD digits VARCHAR(50) DEFAULT NULL COMMENT '���ż�';
ALTER TABLE uk_callcenter_extention ADD param VARCHAR(255) DEFAULT NULL COMMENT '����';


ALTER TABLE uk_consult_invite ADD enableinvite int DEFAULT 0 COMMENT '��ʾĬ����ѯ�����ʾ';
ALTER TABLE uk_consult_invite ADD invitetiptitle varchar(50) DEFAULT NULL COMMENT '������ѯ�����ʾ����' ;
ALTER TABLE uk_consult_invite ADD invitetip text DEFAULT NULL COMMENT '������ѯ��ʾHTML' ;
ALTER TABLE uk_consult_invite ADD invitetipdelay int DEFAULT 0 COMMENT '��ʱ��ʾ' ;

ALTER TABLE uk_consult_invite ADD enablecallback int DEFAULT 0 COMMENT '��ʾ�غ����';
ALTER TABLE uk_consult_invite ADD callbacknum  VARCHAR(50) DEFAULT NULL COMMENT '�غ�����' ;	
ALTER TABLE uk_consult_invite ADD callbacktxt  VARCHAR(50) DEFAULT NULL COMMENT '�غ���ʾ����' ;	
ALTER TABLE uk_consult_invite ADD callbackquicktiptitle varchar(50) DEFAULT NULL COMMENT '�غ���ʾ����' ;
ALTER TABLE uk_consult_invite ADD callbackquicktip text DEFAULT NULL COMMENT '�غ���ʾHTML' ;
ALTER TABLE uk_consult_invite ADD callbackurl  VARCHAR(255) DEFAULT NULL COMMENT '�غ��������ת' ;
ALTER TABLE uk_consult_invite ADD callbackicon  VARCHAR(50) DEFAULT NULL COMMENT '�غ�ͼ��' ;	
ALTER TABLE uk_consult_invite ADD callbackcolor  VARCHAR(50) DEFAULT NULL COMMENT '�غ�������ɫ' ;	

ALTER TABLE uk_consult_invite ADD enabledemo int DEFAULT 0 COMMENT '��ʾԤԼ��ʾ���';
ALTER TABLE uk_consult_invite ADD demourl  VARCHAR(255) DEFAULT NULL COMMENT 'ԤԼ��ʾURL' ;	
ALTER TABLE uk_consult_invite ADD demotxt  VARCHAR(50) DEFAULT NULL COMMENT 'ԤԼ��ʾ����' ;	
ALTER TABLE uk_consult_invite ADD demoquicktiptitle varchar(50) DEFAULT NULL COMMENT 'ԤԼ��ʾ��ʾ����' ; 	
ALTER TABLE uk_consult_invite ADD demoquicktip text DEFAULT NULL COMMENT 'ԤԼ��ʾ��ʾHTML' ; 	
ALTER TABLE uk_consult_invite ADD demoicon  VARCHAR(50) DEFAULT NULL COMMENT 'ԤԼ��ʾͼ��' ;	
ALTER TABLE uk_consult_invite ADD democolor  VARCHAR(50) DEFAULT NULL COMMENT 'ԤԼ��ʾ������ɫ' ;	


ALTER TABLE uk_consult_invite ADD enablesns int DEFAULT 0 COMMENT '��ʾ΢�Ź��ں����';
ALTER TABLE uk_consult_invite ADD snsurl  VARCHAR(255) DEFAULT NULL COMMENT '���ں���תURL' ;		
ALTER TABLE uk_consult_invite ADD snstxt  VARCHAR(50) DEFAULT NULL COMMENT '���ں���ʾ����' ;		
ALTER TABLE uk_consult_invite ADD snstiptitle varchar(50) DEFAULT NULL COMMENT '���ں���ʾ����' ; 	
ALTER TABLE uk_consult_invite ADD snstip text DEFAULT NULL COMMENT '���ں���ʾHTML' ; 	
ALTER TABLE uk_consult_invite ADD snsicon  VARCHAR(50) DEFAULT NULL COMMENT '���ں�ͼ��' ;	
ALTER TABLE uk_consult_invite ADD snsqrcode  VARCHAR(50) DEFAULT NULL COMMENT '���ںŶ�ά��' ;	
ALTER TABLE uk_consult_invite ADD snscolor  VARCHAR(50) DEFAULT NULL COMMENT '���ںű�����ɫ' ;	


ALTER TABLE uk_consult_invite ADD enableothermodel int DEFAULT 0 COMMENT '��ʾ�������';
ALTER TABLE uk_consult_invite ADD othermodelurl  VARCHAR(255) DEFAULT NULL COMMENT '�������URL' ;	
ALTER TABLE uk_consult_invite ADD othermodeltxt  VARCHAR(50) DEFAULT NULL COMMENT '��������ı�' ;	
ALTER TABLE uk_consult_invite ADD othermodeltiptitle varchar(50) DEFAULT NULL COMMENT '���������ʾ����' ;	
ALTER TABLE uk_consult_invite ADD othermodeltip text DEFAULT NULL COMMENT '���������ʾHTML' ;	
ALTER TABLE uk_consult_invite ADD othermodelicon  VARCHAR(50) DEFAULT NULL COMMENT '�������ͼ��' ;	
ALTER TABLE uk_consult_invite ADD othermodelcolor  VARCHAR(50) DEFAULT NULL COMMENT '�������������ɫ' ;

ALTER TABLE uk_crm_datamodel ADD targetid varchar(32) DEFAULT NULL COMMENT 'Ŀ��id';
ALTER TABLE uk_crm_dataproduct ADD TBID varchar(32) DEFAULT NULL COMMENT 'Ԫ����ID';
ALTER TABLE uk_crm_dataproduct ADD menuid varchar(32) DEFAULT NULL COMMENT '�˵�ID';
ALTER TABLE uk_crm_dataproduct ADD scheme varchar(255) DEFAULT NULL COMMENT '����';

INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('40281381692dde0901692de349610012', '����', 'pub', 'com.dic.href', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2019-2-27 15:37:44', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('40281381692dde0901692de2f45b000b', '��ť', 'pub', 'com.dic.button', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2019-2-27 15:37:22', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

ALTER TABLE uk_tableproperties ADD freesearch tinyint(4) DEFAULT 0 COMMENT '������ʽ��0:��֧�֣�1������������2���߼�������';

ALTER TABLE uk_crm_datamodel ADD targetid varchar(32) DEFAULT NULL COMMENT 'Ŀ��id';
ALTER TABLE uk_crm_dataproduct ADD TBID varchar(32) DEFAULT NULL COMMENT 'Ԫ����ID';
ALTER TABLE uk_crm_dataproduct ADD menuid varchar(32) DEFAULT NULL COMMENT '�˵�ID';
ALTER TABLE uk_crm_dataproduct ADD scheme varchar(255) DEFAULT NULL COMMENT '����';

CREATE TABLE `uk_crm_scheme` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `name` varchar(255) DEFAULT NULL COMMENT '����',
  `code` varchar(255) DEFAULT NULL COMMENT '����',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` date DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` date DEFAULT NULL COMMENT '����ʱ��',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='crm-������';

ALTER TABLE uk_crm_dataproduct ADD datamodelid varchar(32) DEFAULT NULL COMMENT 'Ĭ��ҳ�沼��id';
ALTER TABLE uk_crm_dataproduct ADD skiptype varchar(32) DEFAULT NULL COMMENT '��ת��ʽ';
ALTER TABLE uk_crm_dataproduct ADD skipurl varchar(32) DEFAULT NULL COMMENT '��תurl';
ALTER TABLE uk_crm_dataproduct ADD defaulshow tinyint(4) DEFAULT '0' COMMENT '�Ƿ�Ĭ����ʾ';
ALTER TABLE uk_crm_dataproduct ADD iconcolor varchar(100) DEFAULT NULL COMMENT 'ͼ����ɫ';

ALTER TABLE uk_crm_dataproduct ADD allowfilter tinyint(4) DEFAULT '0' COMMENT '�Ƿ�����ɸѡ��';
ALTER TABLE uk_crm_dataproduct ADD allowprint tinyint(4) DEFAULT '0' COMMENT '�Ƿ������ӡ';
ALTER TABLE uk_crm_dataproduct ADD allowexports tinyint(4) DEFAULT '0' COMMENT '�Ƿ�������';

ALTER TABLE uk_callcenter_ivr ADD playsound VARCHAR(100) DEFAULT NULL COMMENT '��������';

ALTER TABLE uk_agentservice ADD queuetime datetime DEFAULT NULL COMMENT '�������ʱ��';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '�������ʱ��';


ALTER TABLE uk_callcenter_extention ADD autoanswer varchar(20) DEFAULT NULL COMMENT '�����Զ�����';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '�������ʱ��';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '�������ʱ��';

ALTER TABLE uk_que_result ADD answerlevel VARCHAR(50) DEFAULT NULL COMMENT '���� a b c d';

ALTER TABLE uk_crm_datamodel ADD parentid varchar(32) DEFAULT NULL COMMENT '����id';


ALTER TABLE uk_callcenter_event ADD autoanswer tinyint DEFAULT 0 COMMENT '�Ƿ��Զ�����';

ALTER TABLE uk_agentuser ADD endby varchar(20) DEFAULT NULL COMMENT '�ҶϷ�';
ALTER TABLE uk_callcenter_event ADD autoanswer tinyint DEFAULT 0 COMMENT '�Ƿ��Զ�����';


ALTER TABLE uk_noticemsg ADD sqlurl varchar(255) DEFAULT NULL COMMENT '����sql��ַ';
ALTER TABLE uk_noticemsg ADD version varchar(255) DEFAULT NULL COMMENT '�汾��';
ALTER TABLE uk_systemconfig ADD version varchar(255) DEFAULT NULL COMMENT '�汾��';

ALTER TABLE uk_noticemsg ADD jarurldownload TINYINT(4) DEFAULT 0 COMMENT 'jar���Ƿ����سɹ�';
ALTER TABLE uk_noticemsg ADD sqlurldownload TINYINT(4) DEFAULT 0 COMMENT 'sql�Ƿ����سɹ�';
ALTER TABLE uk_noticemsg ADD udpatestatus TINYINT(4) DEFAULT 0 COMMENT '����״̬ 0δ���� 1��ִ�и���';

ALTER TABLE uk_noticemsg ADD rollbacksqlurl varchar(255) DEFAULT NULL COMMENT '���ػع�sql��ַ';

ALTER TABLE uk_noticemsg ADD rollbacksqlurldownload TINYINT(4) DEFAULT 0 COMMENT '�ع�sql�Ƿ����سɹ�';

ALTER TABLE uk_system_updatecon ADD confirm TINYINT(4) DEFAULT NULL COMMENT '�Ƿ�ȷ�ϸ���';
ALTER TABLE uk_system_updatecon ADD jarurl varchar(255) DEFAULT NULL COMMENT '����sql��ַ';
ALTER TABLE uk_system_updatecon ADD sqlurl varchar(255) DEFAULT NULL COMMENT '����sql��ַ';
ALTER TABLE uk_system_updatecon ADD oldversion varchar(255) DEFAULT NULL COMMENT '�汾��';
ALTER TABLE uk_system_updatecon ADD version varchar(255) DEFAULT NULL COMMENT '�汾��';
ALTER TABLE uk_system_updatecon ADD versiondesc varchar(500) DEFAULT NULL COMMENT '�汾����˵��';
ALTER TABLE uk_system_updatecon ADD jarurldownload TINYINT(4) DEFAULT 0 COMMENT 'jar���Ƿ����سɹ�';
ALTER TABLE uk_system_updatecon ADD sqlurldownload TINYINT(4) DEFAULT 0 COMMENT 'sql�Ƿ����سɹ�';
ALTER TABLE uk_system_updatecon ADD udpatestatus TINYINT(4) DEFAULT 0 COMMENT '����״̬ 0δ���� 1��ִ�и���';

ALTER TABLE uk_system_updatecon ADD rollbacksqlurl varchar(255) DEFAULT NULL COMMENT '���ػع�sql��ַ';

ALTER TABLE uk_system_updatecon ADD rollbacksqlurldownload TINYINT(4) DEFAULT 0 COMMENT '�ع�sql�Ƿ����سɹ�';

ALTER TABLE uk_systemconfig ADD appid varchar(255) DEFAULT NULL COMMENT '�ͻ���id';



ALTER TABLE uk_callcenter_event ADD answersip text DEFAULT NULL COMMENT 'Ӧ���¼�SIP';
ALTER TABLE uk_callcenter_event ADD hangupsip text DEFAULT NULL COMMENT '�Ҷ��¼�SIP';