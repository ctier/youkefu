package com.ukefu.webim.web.handler;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.support.json.JSONUtils;
import com.ukefu.core.UKDataContext;
import com.ukefu.util.Menu;
import com.ukefu.util.UKTools;
import com.ukefu.util.asr.AsrResult;
import com.ukefu.webim.service.acd.ServiceQuene;
import com.ukefu.webim.service.cache.CacheHelper;
import com.ukefu.webim.service.repository.EkmKnowbaseConfigRepository;
import com.ukefu.webim.service.repository.EkmKnowbaseRepository;
import com.ukefu.webim.service.repository.StatusEventRepository;
import com.ukefu.webim.util.server.message.ChatMessage;
import com.ukefu.webim.web.model.EkmKnowbase;
import com.ukefu.webim.web.model.EkmKnowbaseConfig;
import com.ukefu.webim.web.model.StatusEvent;
import com.ukefu.webim.web.model.User;

@Controller
public class ApplicationController extends Handler{
	
	@Autowired
	private EkmKnowbaseRepository ekmKnowbaseRes;
	
	@Autowired
	private EkmKnowbaseConfigRepository ekmKnowbaseConfigRes;
	
	@RequestMapping("/")
	@Menu(type = "apps" , subtype = "root" , access=true)
    public ModelAndView root(HttpServletRequest request) {
		ModelAndView view = console(request);
		if(!StringUtils.isBlank(request.getServerName())) {
			EkmKnowbaseConfig kbconfig = ekmKnowbaseConfigRes.findByBasehost(request.getServerName()) ;
			if(kbconfig != null) {
				EkmKnowbase base = ekmKnowbaseRes.findOne(kbconfig.getKnowbaseid()) ;
				view = request(super.createRequestPageTempletResponse("redirect:/helpdesk/"+base.getKbviewid()+".html"));
			}
		}
		return view ;
	}
	
	
	@RequestMapping("/console")
    public ModelAndView console(HttpServletRequest request) {
		ModelAndView view = request(super.createRequestPageTempletResponse("/apps/index"));
		User user = super.getUser(request) ;
        view.addObject("agentStatusReport",ServiceQuene.getAgentReport(user.getOrgi())) ;
        view.addObject("tenant",super.getTenant(request));
        view.addObject("istenantshare",super.isEnabletneant());
        if(super.isEnabletneant()) {
        	//多租户启用 非超级管理员 一定要选择租户才能进入界面
        	if(!user.isSuperuser() && !StringUtils.isBlank(user.getOrgid()) && super.isTenantconsole() &&UKDataContext.SYSTEM_ORGI.equals(user.getOrgi())) {
        		view = request(super.createRequestPageTempletResponse("redirect:/apps/tenant/index"));
        	}
        	if(StringUtils.isBlank(user.getOrgid())) {
        		view = request(super.createRequestPageTempletResponse("redirect:/apps/organization/add.html"));
        	}
        }
		view.addObject("agentStatus",CacheHelper.getAgentStatusCacheBean().getCacheObject(user.getId(), user.getOrgi())) ;
        return view;
    }
	
	@RequestMapping("/menu")
    public ModelAndView menu(HttpServletRequest request) {
        return request(super.createRequestPageTempletResponse("/apps/include/menu"));
    }
	
	
	@RequestMapping("/im/ai/test")
	@ResponseBody
    public String aitest(HttpServletRequest request,@RequestBody String data) {
		System.out.println(data);  
		Map m = (Map)JSONUtils.parse(data);
		String str = "";
		if(StringUtils.isNotBlank((String)m.get("bustype")) && ((String)m.get("bustype")).equals("hungup")){
			System.out.println("6666");
			return "";
		}
		if(StringUtils.isNotBlank((String)m.get("query")) && ((String)m.get("query")).startsWith("滚")){
			str = "{\"msg\": \"好的 再见\",\"data_type\": \"text\",\"status\": \"ok\",\"code\": 200,\"type\": \"hungup\"}";
		}else if(StringUtils.isNotBlank((String)m.get("query")) && ((String)m.get("query")).startsWith("你好")){
			str = "{\"msg\": \"shout://121.201.14.252/res/voice.html?id=media/b849001a9eaa4147bc95d33e2a750bba.mp3\",\"data_type\": \"voice\",\"status\": \"ok\",\"code\": \"1012\",\"type\": \"trans\"}";
		}else{
			str = "{\"msg\": \"哈哈"+(String)m.get("query")+"\",\"data_type\": \"text\",\"status\": \"ok\",\"code\": 200}";
		}
		return str ;
	}
	
	@Autowired
	private StatusEventRepository statusEventRepository;
	
	@RequestMapping("/insertData")
	@ResponseBody
    public String insertData(HttpServletRequest request) {
		for(int j=0;j<50;j++) {
			List<StatusEvent> list = new ArrayList<>();
			for(int i=0;i<2000;i++) {
				Date now = new Date();
				StatusEvent event = new StatusEvent();
				event.setId(UKTools.getUUID());
				event.setCode(event.getId());
				event.setName("CHANNEL_ANSWER");
				event.setCreatetime(now);
				event.setCreater("hangup");
				event.setUpdatetime(now);
				event.setOrgi("ukewo");
				event.setSource("mod_sofia");
				event.setAnswer("answered");
				event.setInit(false);
				event.setCaller("1011");
				event.setCalling("1011");
				event.setCalled("913516565389");
				event.setAni("913516565389");
				event.setDirection("out");
				event.setAgent("1011");
				event.setHost("DESKTOP-4KV5RGB");
				event.setIpaddr("192.168.0.111");
				event.setLocaldatetime(now+"");
				event.setTime(now.getTime());
				event.setStarttime(now);
				event.setEndtime(now);
				event.setDuration(1200);
				event.setInside(true);
				event.setMisscall(false);
				event.setRecordtime(1200);
				event.setStartrecord(now);
				event.setEndrecord(now);
				event.setAnswertime(now);
				event.setRingduration(1300);
				event.setRecordfile("C:/kashing/tools/FreeSWITCH/FreeSWITCH/recordings/archive/2019-01-21-14-20-41_1011_9018259703139.wav");
				event.setCallback(false);
				event.setServicestatus("hangup");
				event.setChannelstatus("RINGING");
				event.setExtention("1011");
				event.setHostid("402880ef67a157380167a161e3170036");
				event.setCalltype("orgcallout");
				event.setCalldir("outbound");
				event.setRecordfilename("2019-01-21-12-52-58_1011_913516565389.wav");
				event.setDiscalled("913516565389");
				event.setDiscaller("1011");
				event.setDatestr("2019-01-21");
				event.setHourstr("12");
				event.setTaskid("4028811a686eba9201686ec058240063");
				event.setActid("4028811a686e924a01686e9581820092");
				event.setBatid("4028811a686e924a01686e946b440043");
				event.setDataid("4ddc0a35014e504ba68a8ced3d5fa9af");
				event.setStatustype("outbound");
				event.setNameid("0a85039554914ef2bc7899f75b7ef7e7");
				event.setUserid("4028cac3614cd2f901614cf8be1f0324");
				event.setTracesip("{=, variable_nameid=0a85039554914ef2bc7899f75b7ef7e7, variable_metaname=uk_0p0xuf, variable_local_media_port=25712, variable_gateway=uckef, Core-UUID=42c95c0d-2e02-4dce-a6da-47cdf3213a8c, variable_sip_to_host=192.168.1.106:9060, variable_skill=队列1, Event-Calling-Line-Number=629, variable_audio_media_flow=sendrecv, FreeSWITCH-Hostname=DESKTOP-4KV5RGB, Caller-Unique-ID=f5bc932f-9d7b-49a5-82f0-eaff3b2f9368, Caller-Channel-Progress-Media-Time=0, FreeSWITCH-IPv6=2001:0:9d38:6abd:416:3bb:3f57:fe65, Caller-Caller-ID-Number=913516565389, FreeSWITCH-IPv4=192.168.1.154, Caller-Caller-ID-Name=913516565389, Caller-Destination-Number=913516565389, variable_dataid=4ddc0a35014e504ba68a8ced3d5fa9af, Caller-Channel-Answered-Time=0, variable_rtp_local_sdp_str=v=0\r\n" + 
						"o=FreeSWITCH 1548020646 1548020647 IN IP4 192.168.1.154\r\n" + 
						"s=FreeSWITCH\r\n" + 
						"c=IN IP4 192.168.1.154\r\n" + 
						"t=0 0\r\n" + 
						"m=audio 25712 RTP/AVP 8 101\r\n" + 
						"a=rtpmap:8 PCMA/8000\r\n" + 
						"a=rtpmap:101 telephone-event/8000\r\n" + 
						"a=fmtp:101 0-16\r\n" + 
						"a=ptime:20\r\n" + 
						"a=sendrecv\r\n" + 
						", Channel-State=CS_INIT, Channel-HIT-Dialplan=false, Caller-Channel-Last-Hold=0, variable_session_id=34, Caller-Callee-ID-Name=Outbound Call, Event-Date-Timestamp=1548046358885476, Channel-State-Number=2, Caller-Callee-ID-Number=913516565389, variable_local_media_ip=192.168.1.154, Caller-Channel-Name=sofia/external/913516565389, variable_uuid=f5bc932f-9d7b-49a5-82f0-eaff3b2f9368, variable_recovery_profile_name=external, variable_statustype=outbound, Presence-Call-Direction=outbound, Unique-ID=f5bc932f-9d7b-49a5-82f0-eaff3b2f9368, Caller-Direction=outbound, variable_call_uuid=f5bc932f-9d7b-49a5-82f0-eaff3b2f9368, variable_direction=outbound, Event-Name=CHANNEL_CREATE, variable_sip_local_network_addr=192.168.0.123, Caller-Profile-Created-Time=1548046358885476, Channel-Call-State=DOWN, Caller-Screen-Bit=true, Caller-Logical-Direction=outbound, Event-Calling-File=switch_core_state_machine.c, variable_channel_name=sofia/external/913516565389, variable_batid=4028811a686e924a01686e946b440043, variable_sip_profile_name=gateway, Caller-Orig-Caller-ID-Name=913516565389, variable_sip_destination_url=sip:913516565389@192.168.1.106:9060, variable_absolute_codec_string=PCMA, variable_ignore_early_media=true, variable_sofia_profile_url=sip:mod_sofia@192.168.0.123:5080, Caller-Channel-Hold-Accum=0, variable_taskid=4028811a686eba9201686ec058240063, Call-Direction=outbound, FreeSWITCH-Switchname=DESKTOP-4KV5RGB, Caller-Channel-Progress-Time=0, Caller-Privacy-Hide-Name=false, variable_forecast=true, Caller-Privacy-Hide-Number=false, Event-Date-Local=2019-01-21 12:52:38, variable_advertised_media_ip=192.168.1.154, Caller-Channel-Bridged-Time=0, Caller-Source=..\\..\\src\\switch_ivr_originate.c, variable_sofia_profile_name=external, variable_rtp_use_codec_string=PCMA, Event-Date-GMT=Mon, 21 Jan 2019 04:52:38 GMT, variable_sip_gateway_name=uckef, Answer-State=ringing, variable_orgi=ukewo, variable_text_media_flow=disabled, Caller-ANI=913516565389, variable_sip_from_host=192.168.1.154, Caller-Channel-Hangup-Time=0, Caller-Channel-Resurrect-Time=0, variable_origination_caller_id_number=913516565389, variable_video_media_flow=disabled, variable_originate_early_media=false, Caller-Orig-Caller-ID-Number=913516565389, variable_actid=4028811a686e924a01686e9581820092, variable_forecastid=402880ef67ca45770167ca64b4b50048, variable_uk_forecast=队列1, Event-Calling-Function=switch_core_session_run, variable_sip_outgoing_contact_uri=<sip:gw+uckef@192.168.0.123:5080;transport=udp;gw=uckef>, Caller-Channel-Transfer-Time=0, variable_origination_caller_id_name=913516565389, Caller-Profile-Index=1, Caller-Channel-Created-Time=1548046358885476, Event-Sequence=3458, Channel-Name=sofia/external/913516565389, variable_is_outbound=true, Channel-Call-UUID=f5bc932f-9d7b-49a5-82f0-eaff3b2f9368, Caller-Context=default, variable_sip_req_uri=913516565389@192.168.1.106:9060}");
				event.setMetaname("uk_0p0xuf");
				event.setHangupcase("USER_BUSY");
				event.setHangupinitiator("system");
				list.add(event);
			}
			statusEventRepository.save(list);
		}
		return "nice" ;
	}
		

}