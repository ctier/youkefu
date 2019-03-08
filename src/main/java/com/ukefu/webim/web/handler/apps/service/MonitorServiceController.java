package com.ukefu.webim.web.handler.apps.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ukefu.core.UKDataContext;
import com.ukefu.util.IP;
import com.ukefu.util.Menu;
import com.ukefu.util.UKTools;
import com.ukefu.util.client.NettyClients;
import com.ukefu.util.task.export.ExcelExporterProcess;
import com.ukefu.webim.service.acd.ServiceQuene;
import com.ukefu.webim.service.cache.CacheHelper;
import com.ukefu.webim.service.repository.AgentServiceRepository;
import com.ukefu.webim.service.repository.AgentStatusRepository;
import com.ukefu.webim.service.repository.AgentUserRepository;
import com.ukefu.webim.service.repository.ChatMessageRepository;
import com.ukefu.webim.service.repository.LeaveMsgRepository;
import com.ukefu.webim.service.repository.MetadataRepository;
import com.ukefu.webim.service.repository.OrganRepository;
import com.ukefu.webim.service.repository.OrgiSkillRelRepository;
import com.ukefu.webim.service.repository.UserRepository;
import com.ukefu.webim.util.OnlineUserUtils;
import com.ukefu.webim.util.server.message.ChatMessage;
import com.ukefu.webim.web.handler.Handler;
import com.ukefu.webim.web.model.AgentService;
import com.ukefu.webim.web.model.AgentStatus;
import com.ukefu.webim.web.model.AgentUser;
import com.ukefu.webim.web.model.AiUser;
import com.ukefu.webim.web.model.LeaveMsg;
import com.ukefu.webim.web.model.MetadataTable;
import com.ukefu.webim.web.model.Organ;
import com.ukefu.webim.web.model.OrgiSkillRel;
import com.ukefu.webim.web.model.User;

@Controller
@RequestMapping("/apps/monitor")
public class MonitorServiceController extends Handler{
	
	@Autowired
	private AgentServiceRepository agentServiceRes ;
	
	@Autowired
	private AgentUserRepository agentUserRes ;
	
	@Autowired
	private AgentStatusRepository agentStatusRepository ;
	
	@Autowired
	private OrganRepository organRes ;
	
	@Autowired
	private UserRepository userRes ;
	
	@RequestMapping("/index")
    @Menu(type = "service" , subtype = "history" , admin= true)
    public ModelAndView index(ModelMap map , HttpServletRequest request ,final String username,final String channel ,final String servicetype,final String skill,final String agent,final String servicetimetype,final String begin,final String end , final String sbegin,final String send) {
		final String orgi = super.getOrgi(request);
		Page<AgentService> page = agentServiceRes.findAll(new Specification<AgentService>(){
			@Override
			public Predicate toPredicate(Root<AgentService> root, CriteriaQuery<?> query,CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<Predicate>();  
				if(!StringUtils.isBlank(username)) {
					list.add(cb.equal(root.get("username").as(String.class), username)) ;
				}
				
				list.add(cb.equal(root.get("orgi").as(String.class), orgi)) ;
				
				if(!StringUtils.isBlank(channel)) {
					list.add(cb.equal(root.get("channel").as(String.class), channel)) ;
				}
				if(!StringUtils.isBlank(agent)) {
					list.add(cb.equal(root.get("agentno").as(String.class), agent)) ;
				}
				if(!StringUtils.isBlank(skill)) {
					list.add(cb.equal(root.get("skill").as(String.class), skill)) ;
				}
				try {
					if(!StringUtils.isBlank(begin) && begin.matches("[\\d]{4}-[\\d]{2}-[\\d]{2} [\\d]{2}:[\\d]{2}:[\\d]{2}")){
						list.add(cb.greaterThanOrEqualTo(root.get("logindate").as(Date.class), UKTools.dateFormate.parse(begin))) ;
					}
					if(!StringUtils.isBlank(end) && end.matches("[\\d]{4}-[\\d]{2}-[\\d]{2} [\\d]{2}:[\\d]{2}:[\\d]{2}")){
						list.add(cb.lessThanOrEqualTo(root.get("logindate").as(Date.class), UKTools.dateFormate.parse(end))) ;
					}
					
					if(!StringUtils.isBlank(sbegin) && sbegin.matches("[\\d]{4}-[\\d]{2}-[\\d]{2} [\\d]{2}:[\\d]{2}:[\\d]{2}")){
						list.add(cb.greaterThanOrEqualTo(root.get("servicetime").as(Date.class), UKTools.dateFormate.parse(sbegin))) ;
					}
					if(!StringUtils.isBlank(send) && send.matches("[\\d]{4}-[\\d]{2}-[\\d]{2} [\\d]{2}:[\\d]{2}:[\\d]{2}")){
						list.add(cb.lessThanOrEqualTo(root.get("servicetime").as(Date.class), UKTools.dateFormate.parse(send))) ;
					}
				} catch (ParseException e) {
					e.printStackTrace();
				}
				
				Predicate[] p = new Predicate[list.size()];  
			    return cb.and(list.toArray(p));   
			}
		},new PageRequest(super.getP(request), super.getPs(request), Direction.DESC , "createtime")) ;
		map.put("agentServiceList", page) ;
		map.put("username", username) ;
		map.put("channel", channel) ;
		map.put("servicetype", servicetype) ;
		map.put("servicetimetype", servicetimetype) ;
		map.put("agent", agent);
		map.put("skill", skill);
		map.put("begin", begin) ;
		map.put("end", end) ;
		map.put("sbegin", sbegin) ;
		map.put("send", send) ;
		map.put("organlist",organRes.findByOrgi(super.getOrgi(request)));
		map.put("userlist",userRes.findByOrgiAndDatastatus(super.getOrgi(request), false));
		
        return request(super.createAppsTempletResponse("/apps/service/monitor/index"));
    }
}