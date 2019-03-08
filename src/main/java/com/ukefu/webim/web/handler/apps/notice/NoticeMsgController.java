package com.ukefu.webim.web.handler.apps.notice;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ukefu.core.UKDataContext;
import com.ukefu.util.Menu;
import com.ukefu.webim.config.web.StringToDateConverter;
import com.ukefu.webim.service.cache.CacheHelper;
import com.ukefu.webim.service.repository.NoticeMsgRepository;
import com.ukefu.webim.service.repository.SystemUpdateconRepository;
import com.ukefu.webim.service.task.DownLoadFileTask;
import com.ukefu.webim.web.handler.Handler;
import com.ukefu.webim.web.model.NoticeMsg;
import com.ukefu.webim.web.model.SystemConfig;
import com.ukefu.webim.web.model.SystemUpdatecon;

/**
 * 公告信息-信息列表
 *
 */
@Controller
@RequestMapping("/notice/msg")
public class NoticeMsgController  extends Handler{

	@Autowired
	private NoticeMsgRepository noticeMsgRes ;
	
	@Autowired
	private SystemUpdateconRepository systemUpdateconRes ;
	
	@Autowired
	private TaskExecutor taskExecutor;
	
	@Value("${system.upgrade.filename}")
	private String fileName;
	
	@Value("${system.upgrade.sqlname}")
	private String sqlName;
	
	@Value("${system.upgrade.savepath}")
	private String savePath;
	
	@Value("${system.upgrade.rollbacksqlname}")
	private String rollbacksqlname;
	
	@RequestMapping("/delete")
    @Menu(type = "notice" , subtype = "noticemsg" )
    public ModelAndView delete(ModelMap map , HttpServletRequest request , @Valid String id ,@Valid String type) throws SQLException {
		String msg = "" ;
		ModelAndView view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/business/index.html?msg="+msg+"&p="+super.getP(request))) ;
		if (UKDataContext.NoticeType.SYSTEM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/system/index.html?msg="+msg+"&p="+super.getP(request))) ;
		}else if (UKDataContext.NoticeType.PLATFORM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/index.html?msg="+msg+"&p="+super.getP(request))) ;
		}
		if (!StringUtils.isBlank(id)) {
			NoticeMsg noticemsg =noticeMsgRes.findByIdAndOrgi(id,super.getOrgi(request)) ;
			if (noticemsg != null) {
				//逻辑删除
//				noticemsg.setDatastatus(true);
//				noticeMsgRes.save(noticemsg);
				
				//物理删除
				noticeMsgRes.delete(noticemsg);
			}else {
				msg="delf" ;
			}
		}else {
			msg="delf" ;
		}
		view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/business/index.html?msg="+msg+"&p="+super.getP(request))) ;
		if (UKDataContext.NoticeType.SYSTEM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/system/index.html?msg="+msg+"&p="+super.getP(request))) ;
		}else if (UKDataContext.NoticeType.PLATFORM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/index.html?msg="+msg+"&p="+super.getP(request))) ;
		}
    	return view;
    }
	
	@RequestMapping("/batdelete")
    @Menu(type = "notice" , subtype = "noticemsg" )
    public ModelAndView batdelete(ModelMap map , HttpServletRequest request , @Valid String[] ids ,@Valid String type) throws SQLException {
    	String msg = "bat_delete_success";
    	ModelAndView view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/business/index.html?msg="+msg)) ;
		if (UKDataContext.NoticeType.SYSTEM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/system/index.html?msg="+msg)) ;
		}else if (UKDataContext.NoticeType.PLATFORM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/index.html?msg="+msg)) ;
		}
    	if(ids!=null && ids.length>0){
    		//逻辑删除
//    		List<NoticeMsg> noticeMsgList = noticeMsgRes.findAll(Arrays.asList(ids) );
//    		if (noticeMsgList != null & noticeMsgList.size()>0) {
//    			List<NoticeMsg> nMsgs = new ArrayList<NoticeMsg>() ;
//				for(NoticeMsg nMsg : nMsgs) {
//					nMsg.setDatastatus(true);
//					nMsgs.add(nMsg) ;
//				}
//				if (nMsgs != null && nMsgs.size() > 0) {
//					noticeMsgRes.save(nMsgs) ;
//				}
//			}
    		//物理删除
    		noticeMsgRes.delete(noticeMsgRes.findAll(Arrays.asList(ids)) );
    	}else {
    		msg = "bat_delete_faild";
    	}
    	view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/business/index.html?msg="+msg)) ;
		if (UKDataContext.NoticeType.SYSTEM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/system/index.html?msg="+msg)) ;
		}else if (UKDataContext.NoticeType.PLATFORM.toString().equals(type)) {
			view = request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/index.html?msg="+msg)) ;
		}
    	return view;
    }
	
	@RequestMapping("/upgrade")
    @Menu(type = "notice" , subtype = "noticemsg" )
    public ModelAndView upgrade(ModelMap map , HttpServletRequest request , @Valid String id) throws SQLException {
		map.addAttribute("id",id);
		return request(super.createRequestPageTempletResponse("/apps/notice/msg/upgrade")) ;
    }
	
	@RequestMapping("/upgrade/download")
    @Menu(type = "notice" , subtype = "noticemsg" )
    public ModelAndView upgradedownload(ModelMap map , HttpServletRequest request , @Valid String id) throws SQLException, IOException {
		String msg = "" ;
		if (!StringUtils.isBlank(id)) {
			NoticeMsg noticeMsg = noticeMsgRes.findByIdAndOrgi(id, super.getOrgi(request)) ;
			if (noticeMsg != null && !StringUtils.isBlank(noticeMsg.getJarurl())) {
				
				if (!StringUtils.isBlank(fileName) && !StringUtils.isBlank(savePath)) {
					String path = savePath + File.separator + noticeMsg.getVersion();
					if(StringUtils.isNotBlank(noticeMsg.getJarurl())) {
						//下载jar包
						taskExecutor.execute(new DownLoadFileTask(noticeMsg.getId(),noticeMsg.getJarurl(), fileName, path,"jar"));
						noticeMsg.setJarurldownload("1");
					}else {
						noticeMsg.setJarurldownload("3");
					}
					if(StringUtils.isNotBlank(noticeMsg.getSqlurl())) {
						//下载sql更新
						taskExecutor.execute(new DownLoadFileTask(noticeMsg.getId(),noticeMsg.getSqlurl(), sqlName, path,"sql"));
						noticeMsg.setSqlurldownload("1");
					}else {
						noticeMsg.setSqlurldownload("3");
					}
					if(StringUtils.isNotBlank(noticeMsg.getRollbacksqlurl())) {
						//下载sql更新
						taskExecutor.execute(new DownLoadFileTask(noticeMsg.getId(),noticeMsg.getRollbacksqlurl(), rollbacksqlname, path,"rollbacksql"));
						noticeMsg.setRollbacksqlurldownload("1");
					}else {
						noticeMsg.setRollbacksqlurldownload("3");
					}
					noticeMsgRes.save(noticeMsg) ;
				}else {
					msg = "download_failure" ;
				}
			}
		}
		return request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/detail.html?id="+id+"&msg="+msg)) ;
    }
	
	@RequestMapping("/upgrade/save")
    @Menu(type = "notice" , subtype = "noticemsg" )
    public ModelAndView upgradesave(ModelMap map , HttpServletRequest request , @Valid String id, @Valid String upgradedate ,@Valid String upgradetime) throws SQLException, IOException {
		String msg = "" ;
		List<SystemUpdatecon> systemUpdateconList = systemUpdateconRes.findByOrgi(super.getOrgi(request)) ;
		SystemUpdatecon systemUpdatecon = null ;
		if (systemUpdateconList == null || systemUpdateconList.size()==0) {
			systemUpdatecon = new SystemUpdatecon();
			systemUpdatecon.setOrgi(super.getOrgi(request));
		}else {
			systemUpdatecon = systemUpdateconList.get(0) ;
		}
		if (systemUpdatecon != null && !StringUtils.isBlank(upgradedate) && !StringUtils.isBlank(upgradetime) && !StringUtils.isBlank(id)) {
			NoticeMsg noticeMsg = noticeMsgRes.findByIdAndOrgi(id, super.getOrgi(request)) ;
			if (noticeMsg != null && !StringUtils.isBlank(noticeMsg.getJarurl())) {
				Date strtodate = new StringToDateConverter().convert(upgradedate+" "+upgradetime);
				Date now = new Date();
				SystemConfig systemConfig = (SystemConfig) CacheHelper.getSystemCacheBean().getCacheObject("systemConfig", UKDataContext.SYSTEM_ORGI) ;
				if(StringUtils.isNotBlank(systemConfig.getVersion()) &&StringUtils.isNotBlank(noticeMsg.getVersion()) && systemConfig.getVersion().compareTo(noticeMsg.getVersion()) < 0) {
					if("2".equals(noticeMsg.getJarurldownload()) && ("2".equals(noticeMsg.getSqlurldownload()) || "3".equals(noticeMsg.getSqlurldownload()))) {
						if(strtodate.compareTo(now) > 0) {
							systemUpdatecon.setUpgradetime(strtodate);
							systemUpdatecon.setUpdatetime(new Date());
							systemUpdateconRes.save(systemUpdatecon) ;
							
							noticeMsg.setConfirm(true);
							noticeMsgRes.save(noticeMsg);
						}else {
							msg = "time_failure" ;
						}
					}else {
						msg = "update_failure" ;
					}
				}else {
					msg = "version_failure" ;
				}
				
					
				
			}
		}
		return request(super.createRequestPageTempletResponse("redirect:/notice/msg/platform/detail.html?id="+id+"&msg="+msg)) ;
    }
	
	@RequestMapping("/count")
	@ResponseBody
    public int res(ModelMap map , HttpServletRequest request) {
		int count = 0 ;
		count = noticeMsgRes.countByTargetAndStatusAndDatastatusAndOrgi(super.getUser(request).getId(),false,false,super.getOrgi(request)) ;
        return count;
    }
	
}
