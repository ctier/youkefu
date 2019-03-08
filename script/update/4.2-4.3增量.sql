CREATE TABLE `uk_crm_datamodel` (
  `ID` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `NAME` varchar(255) DEFAULT NULL COMMENT '名称',
  `REPORTTYPE` varchar(32) DEFAULT NULL COMMENT '类型',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `OBJECTCOUNT` int(11) DEFAULT NULL COMMENT '对象数量',
  `DICID` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `CREATETIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `DESCRIPTION` longtext COMMENT '描述',
  `HTML` longtext COMMENT '代码',
  `REPORTPACKAGE` varchar(255) DEFAULT NULL COMMENT '目录名称',
  `USEACL` varchar(32) DEFAULT NULL COMMENT '授权信息',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `rolename` text COMMENT '角色名称',
  `userid` text COMMENT '创建用户ID',
  `blacklist` text COMMENT '黑名单',
  `REPORTCONTENT` longtext COMMENT '对象内容',
  `reportmodel` varchar(32) DEFAULT NULL COMMENT '模型',
  `updatetime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `creater` varchar(255) DEFAULT NULL COMMENT '创建人',
  `reportversion` int(11) DEFAULT NULL COMMENT '版本号',
  `publishedtype` varchar(32) DEFAULT NULL COMMENT '发布状态',
  `tabtype` varchar(32) DEFAULT NULL COMMENT '元素类型',
  `USERNAME` varchar(32) DEFAULT NULL COMMENT '用户名',
  `USEREMAIL` varchar(255) DEFAULT NULL COMMENT '用户邮件信息',
  `CACHE` smallint(6) DEFAULT NULL COMMENT '是否启用数据缓存',
  `EXTPARAM` varchar(255) DEFAULT NULL COMMENT '扩展数据',
  `TARGETREPORT` varchar(32) DEFAULT NULL COMMENT '模板对象',
  `VIEWTYPE` varchar(32) DEFAULT NULL COMMENT '对象类型',
  `ACTIONTYPE` varchar(32) DEFAULT NULL COMMENT '操作类型',
  `STYLE` varchar(32) DEFAULT NULL COMMENT '样式信息',
  `ICON` varchar(32) DEFAULT NULL COMMENT '图标',
  `TBID` varchar(32) DEFAULT NULL COMMENT '元数据ID',
  `TBNAME` varchar(255) DEFAULT NULL COMMENT '元数据名称',
  `ACTION` varchar(32) DEFAULT NULL COMMENT '动作',
  `BTNTYPE` varchar(32) DEFAULT NULL COMMENT '按钮类型',
  `DESIGN` varchar(32) DEFAULT NULL COMMENT '显示值',
  `SORTINDEX` int(11) DEFAULT NULL COMMENT '排序序号',
  `PROID` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `AUTHCODE` varchar(50) DEFAULT NULL COMMENT '权限代码',
  `AUTHITEM` varchar(50) DEFAULT NULL COMMENT '授权时间',
  `DSTYPE` varchar(32) DEFAULT NULL COMMENT '数据源类型',
  `RTFEDIT` tinyint(4) DEFAULT NULL COMMENT '是否允许编辑文本',
  `CODEEDIT` tinyint(4) DEFAULT NULL COMMENT '是否允许编辑代码',
  `LINKTYPE` varchar(32) DEFAULT NULL COMMENT '链接类型',
  `LINKURL` varchar(255) DEFAULT NULL COMMENT '链接跳转URL',
  `PARAMS` varchar(255) DEFAULT NULL COMMENT '扩展参数',
  `LAYOUTTYPE` varchar(32) DEFAULT NULL COMMENT '布局类型',
  `upload` tinyint(4) DEFAULT NULL COMMENT '是否启用上传',
  `hasform` tinyint(4) DEFAULT NULL COMMENT '是否有表单',
  `formtype` varchar(32) DEFAULT NULL COMMENT '表单类型',
  `submiturl` varchar(255) DEFAULT NULL COMMENT '提交跳转的URL',
  `submitpage` varchar(255) DEFAULT NULL COMMENT '跳转页面',
  `submitlink` varchar(255) DEFAULT NULL COMMENT '提交URL',
  `reseturl` varchar(255) DEFAULT NULL COMMENT '重置后跳转URL',
  `resetpage` varchar(255) DEFAULT NULL COMMENT '重置后跳转地址',
  `resetlink` varchar(255) DEFAULT NULL COMMENT '重置链接',
  `resetbtn` tinyint(4) DEFAULT NULL COMMENT '是否启用重置按钮',
  `submitbtn` tinyint(4) DEFAULT NULL COMMENT '是否启用提交按钮',
  `resetpagerpt` varchar(32) DEFAULT NULL COMMENT '重置页面',
  `submitpagerpt` varchar(255) DEFAULT NULL COMMENT '提交页面',
  `layoutleft` tinyint(4) DEFAULT NULL COMMENT '启用左侧分栏',
  `layoutright` tinyint(4) DEFAULT NULL COMMENT '启用右侧分栏',
  `layoutcenter` tinyint(4) DEFAULT NULL COMMENT '启用中间分栏',
  `leftscroll` tinyint(4) DEFAULT NULL COMMENT '启用左侧滚动',
  `rightscroll` tinyint(4) DEFAULT NULL COMMENT '启用右侧滚动',
  `centerscroll` tinyint(4) DEFAULT NULL COMMENT '启用中间滚动',
  `leftwidth` varchar(32) DEFAULT NULL COMMENT '左侧间隔',
  `rightwidth` varchar(32) DEFAULT NULL COMMENT '右侧间隔',
  `centerheight` varchar(32) DEFAULT NULL COMMENT '中间间隔',
  `mediaagent` tinyint(4) DEFAULT NULL COMMENT '坐席',
  `hisnav` tinyint(4) DEFAULT NULL COMMENT '是否有导航',
  `submittype` varchar(32) DEFAULT NULL COMMENT '提交类型',
  `submitpos` varchar(32) DEFAULT NULL COMMENT '表单提交后更新页面位置',
  `MGROUP` tinyint(4) DEFAULT '0' COMMENT '是否启用分组',
  `groupname` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `groupicon` varchar(100) DEFAULT NULL COMMENT '分组图标',
  `groupcolor` varchar(100) DEFAULT NULL COMMENT '分组颜色',
  `workflow` tinyint(4) DEFAULT NULL COMMENT '启用流程',
  `flowtype` varchar(50) DEFAULT NULL COMMENT '流程类型',
  `successtip` varchar(255) DEFAULT NULL COMMENT '成功提示',
  `errortip` varchar(255) DEFAULT NULL COMMENT '失败提示',
  `fullscreen` tinyint(4) DEFAULT NULL COMMENT '全屏',
  `autorefresh` tinyint(4) DEFAULT NULL COMMENT '自动刷新',
  `refreshtime` int(11) DEFAULT NULL COMMENT '刷新间隔',
  `autoscroll` tinyint(4) DEFAULT NULL COMMENT '自动滚动',
  `scrollspeed` varchar(32) DEFAULT NULL COMMENT '滚动速度',
  `onlytab` tinyint(4) DEFAULT NULL COMMENT '大屏显示的时候是否只显示 页签',
  `rotationspeed` int(11) DEFAULT NULL COMMENT '大屏显示的时候轮播速度',
  `accesshis` tinyint(4) DEFAULT NULL COMMENT '是否记录 访问历史',
  `searchhis` tinyint(4) DEFAULT NULL COMMENT '是否记录搜索历史',
  `CODE` varchar(100) DEFAULT NULL COMMENT '代码',
  `duplicate` tinyint(4) DEFAULT NULL COMMENT '是否允许重复数据',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `uk_crm_dataproduct` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(32) DEFAULT NULL COMMENT '名称',
  `TITLE` varchar(32) DEFAULT NULL COMMENT '标题',
  `CODE` varchar(32) DEFAULT NULL COMMENT ' 代码',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `TYPE` varchar(32) DEFAULT NULL COMMENT '类型',
  `MEMO` varchar(255) DEFAULT NULL COMMENT '备注',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '状态',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CREATER` varchar(255) DEFAULT NULL COMMENT '创建人',
  `PUBLISHEDTYPE` varchar(32) DEFAULT NULL COMMENT '发布类型',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `TABTYPE` varchar(32) DEFAULT NULL COMMENT '产品类型',
  `DSTYPE` varchar(32) DEFAULT NULL COMMENT '显示类型',
  `DSTEMPLET` varchar(255) DEFAULT NULL COMMENT '显示模板',
  `SORTINDEX` int(11) DEFAULT NULL COMMENT '排序序号',
  `DICTYPE` varchar(32) DEFAULT NULL COMMENT '目录类型',
  `ICONCLASS` varchar(100) DEFAULT NULL COMMENT '图标样式',
  `CSSSTYLE` varchar(255) DEFAULT NULL COMMENT '显示样式',
  `AUTHCODE` varchar(100) DEFAULT NULL COMMENT '授权代码',
  `DEFAULTMENU` tinyint(4) DEFAULT NULL COMMENT '默认产品',
  `DATAID` varchar(32) DEFAULT NULL COMMENT '外部数据ID',
  `DICICON` varchar(32) DEFAULT NULL COMMENT ' 目录图标',
  `CURICON` varchar(32) DEFAULT NULL COMMENT '选中图标',
  `BGCOLOR` varchar(32) DEFAULT NULL COMMENT '背景颜色',
  `CURBGCOLOR` varchar(32) DEFAULT NULL COMMENT '选中的背景颜色',
  `MENUPOS` varchar(32) DEFAULT NULL COMMENT '菜单位置',
  `DISTITLE` varchar(100) DEFAULT NULL COMMENT '显示标题',
  `NAVMENU` tinyint(4) DEFAULT '0' COMMENT '显示菜单',
  `QUICKMENU` tinyint(4) DEFAULT '0' COMMENT '是否显示在快捷菜单',
  UNIQUE KEY `SQL121227155530400` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



ALTER TABLE uk_noticemsg ADD invalidtime datetime DEFAULT NULL COMMENT '失效时间';

ALTER TABLE uk_consult_invite ADD lvtipmsg text DEFAULT NULL COMMENT '无坐席在线的提示消息';
ALTER TABLE uk_crm_dataproduct ADD duplicate tinyint(4) DEFAULT 0 COMMENT '是否允许重复数据';
ALTER TABLE uk_crm_dataproduct ADD design tinyint(4) DEFAULT 0 COMMENT '布局';

DROP INDEX index_1 ON uk_callcenter_event;
CREATE INDEX index_1 ON uk_callcenter_event  (`ORGI`,`DISCALLER`,`DISCALLED`,`MISSCALL`,`DURATION`,`RINGDURATION`,`calltype`,`servicestatus`,`direction`,`userid`,`organ`,`createtime`,`starttime`,`nameid`) USING BTREE;




ALTER TABLE uk_consult_invite ADD filterscript tinyint(4) DEFAULT 0 COMMENT '禁止访客端发送HTML内容';
ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '禁止坐席端发送HTML内容';

ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '禁止坐席端发送HTML内容';

ALTER TABLE uk_consult_invite ADD filteragentscript tinyint(4) DEFAULT 0 COMMENT '禁止坐席端发送HTML内容';

ALTER TABLE uk_agentuser ADD filterscript int DEFAULT 0 COMMENT '访客段脚本过滤次数';
ALTER TABLE uk_agentuser ADD filteragentscript int DEFAULT 0 COMMENT '座席端脚本过滤次数';

ALTER TABLE uk_agentuser ADD sensitiveword int DEFAULT 0 COMMENT '访客端敏感词触发次数';
ALTER TABLE uk_agentuser ADD sensitivewordagent int DEFAULT 0 COMMENT '坐席端敏感词触发次数';

ALTER TABLE uk_agentuser ADD msgtimeout int DEFAULT 0 COMMENT '访客端消息超时次数';
ALTER TABLE uk_agentuser ADD msgtimeoutagent int DEFAULT 0 COMMENT '坐席端消息敏感词触发次数';

ALTER TABLE uk_agentuser ADD sessiontimeout int DEFAULT 0 COMMENT '会话超时次数';


ALTER TABLE uk_agentservice ADD filterscript int DEFAULT 0 COMMENT '访客段脚本过滤次数';
ALTER TABLE uk_agentservice ADD filteragentscript int DEFAULT 0 COMMENT '座席端脚本过滤次数';

ALTER TABLE uk_agentservice ADD sensitiveword int DEFAULT 0 COMMENT '访客端敏感词触发次数';
ALTER TABLE uk_agentservice ADD sensitivewordagent int DEFAULT 0 COMMENT '坐席端敏感词触发次数';

ALTER TABLE uk_agentservice ADD msgtimeout int DEFAULT 0 COMMENT '访客端消息超时次数';
ALTER TABLE uk_agentservice ADD msgtimeoutagent int DEFAULT 0 COMMENT '坐席端消息敏感词触发次数';

ALTER TABLE uk_agentservice ADD sessiontimeout int DEFAULT 0 COMMENT '会话超时次数';


ALTER TABLE uk_chat_message ADD filterscript tinyint(4) DEFAULT 0 COMMENT '触发了HTML代码过滤';


ALTER TABLE uk_callcenter_extention ADD greetlong VARCHAR(100) DEFAULT NULL COMMENT '欢迎提示语音';
ALTER TABLE uk_callcenter_extention ADD greetshort VARCHAR(100) DEFAULT NULL COMMENT '欢迎提示短语音';
ALTER TABLE uk_callcenter_extention ADD invalidsound VARCHAR(100) DEFAULT NULL COMMENT '无效输入提示语音';
ALTER TABLE uk_callcenter_extention ADD exitsound VARCHAR(100) DEFAULT NULL COMMENT '离开语音';
ALTER TABLE uk_callcenter_extention ADD confirmmacro VARCHAR(50) DEFAULT NULL COMMENT '确认宏指令';
ALTER TABLE uk_callcenter_extention ADD confirmkey VARCHAR(50) DEFAULT NULL COMMENT '确认按键';
ALTER TABLE uk_callcenter_extention ADD ttsengine VARCHAR(20) DEFAULT NULL COMMENT 'TTS引擎';
ALTER TABLE uk_callcenter_extention ADD ttsvoice VARCHAR(50) DEFAULT NULL COMMENT 'TTS语音';
ALTER TABLE uk_callcenter_extention ADD confirmattempts VARCHAR(50) DEFAULT NULL COMMENT '确认提示消息';
ALTER TABLE uk_callcenter_extention ADD timeout int DEFAULT 0 COMMENT '超时时间';

ALTER TABLE uk_callcenter_extention ADD interdigittimeout int DEFAULT 0 COMMENT '呼叫等待超时';
ALTER TABLE uk_callcenter_extention ADD maxfailures int DEFAULT 0 COMMENT '最大失败次数';

ALTER TABLE uk_callcenter_extention ADD maxtimeouts int DEFAULT 0 COMMENT '最大超时次数';

ALTER TABLE uk_callcenter_extention ADD digitlen int DEFAULT 0 COMMENT '数字按键长度';
ALTER TABLE uk_callcenter_extention ADD action VARCHAR(50) DEFAULT NULL COMMENT '指令';
ALTER TABLE uk_callcenter_extention ADD digits VARCHAR(50) DEFAULT NULL COMMENT '拨号键';
ALTER TABLE uk_callcenter_extention ADD param VARCHAR(255) DEFAULT NULL COMMENT '参数';


ALTER TABLE uk_consult_invite ADD enableinvite int DEFAULT 0 COMMENT '显示默认咨询快捷提示';
ALTER TABLE uk_consult_invite ADD invitetiptitle varchar(50) DEFAULT NULL COMMENT '邀请咨询组件提示标题' ;
ALTER TABLE uk_consult_invite ADD invitetip text DEFAULT NULL COMMENT '邀请咨询提示HTML' ;
ALTER TABLE uk_consult_invite ADD invitetipdelay int DEFAULT 0 COMMENT '延时显示' ;

ALTER TABLE uk_consult_invite ADD enablecallback int DEFAULT 0 COMMENT '显示回呼组件';
ALTER TABLE uk_consult_invite ADD callbacknum  VARCHAR(50) DEFAULT NULL COMMENT '回呼号码' ;	
ALTER TABLE uk_consult_invite ADD callbacktxt  VARCHAR(50) DEFAULT NULL COMMENT '回呼提示文字' ;	
ALTER TABLE uk_consult_invite ADD callbackquicktiptitle varchar(50) DEFAULT NULL COMMENT '回呼提示标题' ;
ALTER TABLE uk_consult_invite ADD callbackquicktip text DEFAULT NULL COMMENT '回呼提示HTML' ;
ALTER TABLE uk_consult_invite ADD callbackurl  VARCHAR(255) DEFAULT NULL COMMENT '回呼点击后跳转' ;
ALTER TABLE uk_consult_invite ADD callbackicon  VARCHAR(50) DEFAULT NULL COMMENT '回呼图标' ;	
ALTER TABLE uk_consult_invite ADD callbackcolor  VARCHAR(50) DEFAULT NULL COMMENT '回呼背景颜色' ;	

ALTER TABLE uk_consult_invite ADD enabledemo int DEFAULT 0 COMMENT '显示预约演示组件';
ALTER TABLE uk_consult_invite ADD demourl  VARCHAR(255) DEFAULT NULL COMMENT '预约演示URL' ;	
ALTER TABLE uk_consult_invite ADD demotxt  VARCHAR(50) DEFAULT NULL COMMENT '预约演示文字' ;	
ALTER TABLE uk_consult_invite ADD demoquicktiptitle varchar(50) DEFAULT NULL COMMENT '预约演示提示标题' ; 	
ALTER TABLE uk_consult_invite ADD demoquicktip text DEFAULT NULL COMMENT '预约演示提示HTML' ; 	
ALTER TABLE uk_consult_invite ADD demoicon  VARCHAR(50) DEFAULT NULL COMMENT '预约演示图标' ;	
ALTER TABLE uk_consult_invite ADD democolor  VARCHAR(50) DEFAULT NULL COMMENT '预约演示背景颜色' ;	


ALTER TABLE uk_consult_invite ADD enablesns int DEFAULT 0 COMMENT '显示微信公众号组件';
ALTER TABLE uk_consult_invite ADD snsurl  VARCHAR(255) DEFAULT NULL COMMENT '公众号跳转URL' ;		
ALTER TABLE uk_consult_invite ADD snstxt  VARCHAR(50) DEFAULT NULL COMMENT '公众号提示文字' ;		
ALTER TABLE uk_consult_invite ADD snstiptitle varchar(50) DEFAULT NULL COMMENT '公众号提示标题' ; 	
ALTER TABLE uk_consult_invite ADD snstip text DEFAULT NULL COMMENT '公众号提示HTML' ; 	
ALTER TABLE uk_consult_invite ADD snsicon  VARCHAR(50) DEFAULT NULL COMMENT '公众号图标' ;	
ALTER TABLE uk_consult_invite ADD snsqrcode  VARCHAR(50) DEFAULT NULL COMMENT '公众号二维码' ;	
ALTER TABLE uk_consult_invite ADD snscolor  VARCHAR(50) DEFAULT NULL COMMENT '公众号背景颜色' ;	


ALTER TABLE uk_consult_invite ADD enableothermodel int DEFAULT 0 COMMENT '显示其他组件';
ALTER TABLE uk_consult_invite ADD othermodelurl  VARCHAR(255) DEFAULT NULL COMMENT '其他组件URL' ;	
ALTER TABLE uk_consult_invite ADD othermodeltxt  VARCHAR(50) DEFAULT NULL COMMENT '其他组件文本' ;	
ALTER TABLE uk_consult_invite ADD othermodeltiptitle varchar(50) DEFAULT NULL COMMENT '其他组件提示标题' ;	
ALTER TABLE uk_consult_invite ADD othermodeltip text DEFAULT NULL COMMENT '其他组件提示HTML' ;	
ALTER TABLE uk_consult_invite ADD othermodelicon  VARCHAR(50) DEFAULT NULL COMMENT '其他组件图标' ;	
ALTER TABLE uk_consult_invite ADD othermodelcolor  VARCHAR(50) DEFAULT NULL COMMENT '其他组件背景颜色' ;

ALTER TABLE uk_crm_datamodel ADD targetid varchar(32) DEFAULT NULL COMMENT '目标id';
ALTER TABLE uk_crm_dataproduct ADD TBID varchar(32) DEFAULT NULL COMMENT '元数据ID';
ALTER TABLE uk_crm_dataproduct ADD menuid varchar(32) DEFAULT NULL COMMENT '菜单ID';
ALTER TABLE uk_crm_dataproduct ADD scheme varchar(255) DEFAULT NULL COMMENT '方案';

INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('40281381692dde0901692de349610012', '链接', 'pub', 'com.dic.href', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2019-2-27 15:37:44', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('40281381692dde0901692de2f45b000b', '按钮', 'pub', 'com.dic.button', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2019-2-27 15:37:22', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

ALTER TABLE uk_tableproperties ADD freesearch tinyint(4) DEFAULT 0 COMMENT '搜索方式（0:不支持，1：快速搜索，2：高级搜索）';

ALTER TABLE uk_crm_datamodel ADD targetid varchar(32) DEFAULT NULL COMMENT '目标id';
ALTER TABLE uk_crm_dataproduct ADD TBID varchar(32) DEFAULT NULL COMMENT '元数据ID';
ALTER TABLE uk_crm_dataproduct ADD menuid varchar(32) DEFAULT NULL COMMENT '菜单ID';
ALTER TABLE uk_crm_dataproduct ADD scheme varchar(255) DEFAULT NULL COMMENT '方案';

CREATE TABLE `uk_crm_scheme` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `code` varchar(255) DEFAULT NULL COMMENT '代码',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `updatetime` date DEFAULT NULL COMMENT '更新时间',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='crm-方案表';

ALTER TABLE uk_crm_dataproduct ADD datamodelid varchar(32) DEFAULT NULL COMMENT '默认页面布局id';
ALTER TABLE uk_crm_dataproduct ADD skiptype varchar(32) DEFAULT NULL COMMENT '跳转方式';
ALTER TABLE uk_crm_dataproduct ADD skipurl varchar(32) DEFAULT NULL COMMENT '跳转url';
ALTER TABLE uk_crm_dataproduct ADD defaulshow tinyint(4) DEFAULT '0' COMMENT '是否默认显示';
ALTER TABLE uk_crm_dataproduct ADD iconcolor varchar(100) DEFAULT NULL COMMENT '图标颜色';

ALTER TABLE uk_crm_dataproduct ADD allowfilter tinyint(4) DEFAULT '0' COMMENT '是否允许筛选列';
ALTER TABLE uk_crm_dataproduct ADD allowprint tinyint(4) DEFAULT '0' COMMENT '是否允许打印';
ALTER TABLE uk_crm_dataproduct ADD allowexports tinyint(4) DEFAULT '0' COMMENT '是否允许导出';

ALTER TABLE uk_callcenter_ivr ADD playsound VARCHAR(100) DEFAULT NULL COMMENT '播放语音';

ALTER TABLE uk_agentservice ADD queuetime datetime DEFAULT NULL COMMENT '进入队列时间';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '进入队列时间';


ALTER TABLE uk_callcenter_extention ADD autoanswer varchar(20) DEFAULT NULL COMMENT '来电自动接听';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '进入队列时间';
ALTER TABLE uk_agentuser ADD queuetime datetime DEFAULT NULL COMMENT '进入队列时间';

ALTER TABLE uk_que_result ADD answerlevel VARCHAR(50) DEFAULT NULL COMMENT '评级 a b c d';

ALTER TABLE uk_crm_datamodel ADD parentid varchar(32) DEFAULT NULL COMMENT '父级id';


ALTER TABLE uk_callcenter_event ADD autoanswer tinyint DEFAULT 0 COMMENT '是否自动接听';

ALTER TABLE uk_agentuser ADD endby varchar(20) DEFAULT NULL COMMENT '挂断方';
ALTER TABLE uk_callcenter_event ADD autoanswer tinyint DEFAULT 0 COMMENT '是否自动接听';


ALTER TABLE uk_noticemsg ADD sqlurl varchar(255) DEFAULT NULL COMMENT '下载sql地址';
ALTER TABLE uk_noticemsg ADD version varchar(255) DEFAULT NULL COMMENT '版本号';
ALTER TABLE uk_systemconfig ADD version varchar(255) DEFAULT NULL COMMENT '版本号';

ALTER TABLE uk_noticemsg ADD jarurldownload TINYINT(4) DEFAULT 0 COMMENT 'jar包是否下载成功';
ALTER TABLE uk_noticemsg ADD sqlurldownload TINYINT(4) DEFAULT 0 COMMENT 'sql是否下载成功';
ALTER TABLE uk_noticemsg ADD udpatestatus TINYINT(4) DEFAULT 0 COMMENT '更新状态 0未更新 1已执行更新';

ALTER TABLE uk_noticemsg ADD rollbacksqlurl varchar(255) DEFAULT NULL COMMENT '下载回滚sql地址';

ALTER TABLE uk_noticemsg ADD rollbacksqlurldownload TINYINT(4) DEFAULT 0 COMMENT '回滚sql是否下载成功';

ALTER TABLE uk_system_updatecon ADD confirm TINYINT(4) DEFAULT NULL COMMENT '是否确认更新';
ALTER TABLE uk_system_updatecon ADD jarurl varchar(255) DEFAULT NULL COMMENT '下载sql地址';
ALTER TABLE uk_system_updatecon ADD sqlurl varchar(255) DEFAULT NULL COMMENT '下载sql地址';
ALTER TABLE uk_system_updatecon ADD oldversion varchar(255) DEFAULT NULL COMMENT '版本号';
ALTER TABLE uk_system_updatecon ADD version varchar(255) DEFAULT NULL COMMENT '版本号';
ALTER TABLE uk_system_updatecon ADD versiondesc varchar(500) DEFAULT NULL COMMENT '版本更新说明';
ALTER TABLE uk_system_updatecon ADD jarurldownload TINYINT(4) DEFAULT 0 COMMENT 'jar包是否下载成功';
ALTER TABLE uk_system_updatecon ADD sqlurldownload TINYINT(4) DEFAULT 0 COMMENT 'sql是否下载成功';
ALTER TABLE uk_system_updatecon ADD udpatestatus TINYINT(4) DEFAULT 0 COMMENT '更新状态 0未更新 1已执行更新';

ALTER TABLE uk_system_updatecon ADD rollbacksqlurl varchar(255) DEFAULT NULL COMMENT '下载回滚sql地址';

ALTER TABLE uk_system_updatecon ADD rollbacksqlurldownload TINYINT(4) DEFAULT 0 COMMENT '回滚sql是否下载成功';

ALTER TABLE uk_systemconfig ADD appid varchar(255) DEFAULT NULL COMMENT '客户端id';



ALTER TABLE uk_callcenter_event ADD answersip text DEFAULT NULL COMMENT '应答事件SIP';
ALTER TABLE uk_callcenter_event ADD hangupsip text DEFAULT NULL COMMENT '挂断事件SIP';