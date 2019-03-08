package com.ukefu.webim.web.handler.admin.callcenter;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ukefu.util.Menu;
import com.ukefu.webim.service.repository.ExtentionRepository;
import com.ukefu.webim.service.repository.IvrMenuRepository;
import com.ukefu.webim.service.repository.MediaRepository;
import com.ukefu.webim.service.repository.PbxHostRepository;
import com.ukefu.webim.web.handler.Handler;
import com.ukefu.webim.web.model.Extention;
import com.ukefu.webim.web.model.IvrMenu;
import com.ukefu.webim.web.model.Media;

@Controller
@RequestMapping("/admin/callcenter")
public class CallCenterIvrController extends Handler{
	
	@Autowired
	private PbxHostRepository pbxHostRes ;
	
	@Autowired
	private ExtentionRepository extentionRes ;
	
	@Autowired
	private IvrMenuRepository ivrMenuRes;
	
	@Autowired
	private MediaRepository mediaRes;
	
	@RequestMapping(value = "/ivr")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivr(ModelMap map , HttpServletRequest request , @Valid String hostid) {
		if(!StringUtils.isBlank(hostid)){
			map.addAttribute("pbxHost" , pbxHostRes.findByIdAndOrgi(hostid, super.getOrgi(request)));
			map.addAttribute("ivrList" , extentionRes.findByExtypeAndOrgi("ivr", super.getOrgi(request)));
		}
		return request(super.createRequestPageTempletResponse("/admin/callcenter/ivr/index"));
    }
	
	@RequestMapping(value = "/ivr/edit")
    @Menu(type = "callcenter" , subtype = "extention" , access = false , admin = true)
    public ModelAndView extentionedit(ModelMap map , HttpServletRequest request , @Valid String id , @Valid String hostid) {
		map.addAttribute("extention" , extentionRes.findByIdAndOrgi(id, super.getOrgi(request)));
		map.put("pbxHost", pbxHostRes.findByIdAndOrgi(hostid, super.getOrgi(request))) ;
		List<Media> mediaList= mediaRes.findByHostidAndOrgi(hostid, super.getOrgi(request));
		map.put("mediaList", mediaList) ;
    	return request(super.createRequestPageTempletResponse("/admin/callcenter/ivr/edit"));
    }
	
	@RequestMapping(value = "/ivr/update")
    @Menu(type = "callcenter" , subtype = "extention" , access = false , admin = true)
    public ModelAndView extentionupdate(ModelMap map , HttpServletRequest request , @Valid Extention extention) {
		if(!StringUtils.isBlank(extention.getId())){
			Extention ext = extentionRes.findByIdAndOrgi(extention.getId(), super.getOrgi(request)) ;
			ext.setExtention(extention.getExtention());
			ext.setDescription(extention.getDescription());
			ext.setGreetlong(extention.getGreetlong());
			ext.setGreetshort(extention.getGreetshort());
			ext.setInvalidsound(extention.getInvalidsound());
			ext.setExitsound(extention.getExitsound());
			ext.setConfirmmacro(extention.getConfirmmacro());
			ext.setConfirmkey(extention.getConfirmkey());
			ext.setConfirmattempts(extention.getConfirmattempts());
			ext.setTimeout(extention.getTimeout());
			ext.setInterdigittimeout(extention.getInterdigittimeout());
			ext.setMaxfailures(extention.getMaxfailures());
			ext.setMaxtimeouts(extention.getMaxtimeouts());
			ext.setDigitlen(extention.getDigitlen());
			ext.setAction(extention.getAction());
			ext.setDigits(extention.getDigits());
			ext.setParam(extention.getParam());
			extentionRes.save(ext) ;
		}
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr.html?hostid="+extention.getHostid()));
    }
	

	@RequestMapping(value = "/ivr/delete")
    @Menu(type = "callcenter" , subtype = "ivr" , access = false , admin = true)
    public ModelAndView extentiondelete(ModelMap map , HttpServletRequest request , @Valid String id , @Valid String hostid) {
		if(!StringUtils.isBlank(id)){
			List<IvrMenu> ivrMenuList = ivrMenuRes.findByExtentionidAndHostidAndOrgi(id, hostid, super.getOrgi(request)) ;
			if (ivrMenuList != null && ivrMenuList.size() > 0) {
				ivrMenuRes.delete(ivrMenuList);
			}
			extentionRes.delete(id);
		}
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr.html?hostid="+hostid));
    }
	
	@RequestMapping(value = "/ivr/design")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView design(ModelMap map , HttpServletRequest request , @Valid String hostid , @Valid String id) {
		if(!StringUtils.isBlank(hostid)){
			map.addAttribute("extention" , extentionRes.findByIdAndOrgi(id, super.getOrgi(request)));
			map.addAttribute("ivrMenuList" , ivrMenuRes.findByExtentionidAndHostidAndOrgi(id, hostid, super.getOrgi(request)));
			map.addAttribute("pbxHost" , pbxHostRes.findByIdAndOrgi(hostid, super.getOrgi(request)));
			List<Media> mediaList = mediaRes.findByHostidAndOrgi(hostid, super.getOrgi(request)) ;
			if (mediaList != null && mediaList.size() > 0) {
				Map<String, String> mediaMap = new HashedMap<String, String>() ;
				for(Media media : mediaList) {
					mediaMap.put(media.getId(), media.getName()) ;
				}
				map.addAttribute("mediaMap" , mediaMap);
			}
		}
		return request(super.createRequestPageTempletResponse("/admin/callcenter/ivr/design"));
    }
	
	@RequestMapping(value = "/ivr/menu/delete")
    @Menu(type = "callcenter" , subtype = "ivr" , access = false , admin = true)
    public ModelAndView menudelete(ModelMap map , HttpServletRequest request , @Valid String id , @Valid String hostid, @Valid String extentionid) {
		if(!StringUtils.isBlank(id)){
			IvrMenu ivrMenu = ivrMenuRes.findByIdAndOrgi(id, super.getOrgi(request)) ;
			List<IvrMenu> ivrMenuList = new ArrayList<IvrMenu>() ;
			if (ivrMenu != null) {
				ivrMenuList = getDelIvrMenu(ivrMenu,super.getOrgi(request));
			}
			if (ivrMenuList != null) {
				ivrMenuRes.delete(ivrMenuList);
			}
		}
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr/design.html?hostid="+hostid+"&id="+extentionid));
    }
	
	/**
	 * 递归查找所有子级
	 * @param ivr
	 * @param allIvrMenus
	 * @param orgi
	 * @return
	 */
	public List<IvrMenu> getDelIvrMenu(IvrMenu ivr ,String orgi) {
		List<IvrMenu> ivrMenuList = new ArrayList<IvrMenu>();
		ivrMenuList.add(ivr) ;
		List<IvrMenu> parentIvrMenus = ivrMenuRes.findByParentidAndOrgi(ivr.getId(), orgi) ;
		if (parentIvrMenus != null && parentIvrMenus.size() > 0) {
			for(IvrMenu temp : parentIvrMenus) {
				ivrMenuList.addAll(getDelIvrMenu(temp,orgi)) ;
			}
		}
		return ivrMenuList ;
	}
	
	@RequestMapping(value = "/ivr/menu/add")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivrmenuadd(ModelMap map , HttpServletRequest request , @Valid String ivrid , @Valid String hostid , @Valid String extentionid) {
		if (!StringUtils.isBlank(extentionid)) {
			map.addAttribute("extention" , extentionRes.findByIdAndOrgi(extentionid, super.getOrgi(request)));
		}
		if (!StringUtils.isBlank(ivrid)) {
			map.addAttribute("ivrMenu" , ivrMenuRes.findByIdAndOrgi(ivrid, super.getOrgi(request)));
		}
		map.put("mediaList", mediaRes.findByHostidAndOrgi(hostid, super.getOrgi(request))) ;
		map.put("pbxHost", pbxHostRes.findByIdAndOrgi(hostid, super.getOrgi(request))) ;
    	return request(super.createRequestPageTempletResponse("/admin/callcenter/ivr/menuadd"));
    }
	
	@RequestMapping(value = "/ivr/menu/save")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivrmenuaddsave(ModelMap map , HttpServletRequest request , @Valid IvrMenu ivrMenu, @Valid String hostid, @Valid String extentionid) {
		ivrMenu.setCreater(super.getUser(request).getId());
		ivrMenu.setCreatetime(new Date());
		ivrMenu.setOrgi(super.getOrgi(request));
		ivrMenuRes.save(ivrMenu) ;
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr/design.html?hostid="+hostid+"&id="+extentionid));
    }
	
	@RequestMapping(value = "/ivr/menu/edit")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivrmenuedit(ModelMap map , HttpServletRequest request , @Valid String id , @Valid String hostid) {
		map.addAttribute("ivrMenu" , ivrMenuRes.findByIdAndOrgi(id, super.getOrgi(request)));
		map.put("pbxHost", pbxHostRes.findByIdAndOrgi(hostid, super.getOrgi(request))) ;
		map.put("mediaList", mediaRes.findByHostidAndOrgi(hostid, super.getOrgi(request))) ;
    	return request(super.createRequestPageTempletResponse("/admin/callcenter/ivr/menuedit"));
    }
	
	@RequestMapping(value = "/ivr/menu/update")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivrmenuupdate(ModelMap map , HttpServletRequest request , @Valid IvrMenu ivrMenu, @Valid String hostid, @Valid String extentionid) {
		IvrMenu ivr = ivrMenuRes.findByIdAndOrgi(ivrMenu.getId(), super.getOrgi(request)) ;
		if (ivr != null) {
			ivr.setName(ivrMenu.getName());
			ivr.setUpdatetime(ivrMenu.getUpdatetime());
			ivr.setGreetlong(ivrMenu.getGreetlong());
			ivr.setGreetshort(ivrMenu.getGreetshort());
			ivr.setInvalidsound(ivrMenu.getInvalidsound());
			ivr.setExitsound(ivrMenu.getExitsound());
			ivr.setConfirmmacro(ivrMenu.getConfirmmacro());
			ivr.setConfirmkey(ivrMenu.getConfirmkey());
			ivr.setConfirmattempts(ivrMenu.getConfirmattempts());
			ivr.setTimeout(ivrMenu.getTimeout());
			ivr.setInterdigittimeout(ivrMenu.getInterdigittimeout());
			ivr.setMaxfailures(ivrMenu.getMaxfailures());
			ivr.setMaxtimeouts(ivrMenu.getMaxtimeouts());
			ivr.setDigitlen(ivrMenu.getDigitlen());
			ivr.setAction(ivrMenu.getAction());
			ivr.setDigits(ivrMenu.getDigits());
			ivr.setParam(ivrMenu.getParam());
			ivr.setType(ivrMenu.getType());
			ivr.setPlaysound(ivr.getPlaysound());
			ivrMenuRes.save(ivr) ;
		}
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr/design.html?hostid="+hostid+"&id="+extentionid));
    }
	
	@RequestMapping(value = "/ivr/menu/drag")
    @Menu(type = "callcenter" , subtype = "callcenterivr" , access = false , admin = true)
    public ModelAndView ivrmenudrag(ModelMap map , HttpServletRequest request , @Valid String draggedNodeId, @Valid String hostid, @Valid String extentionid, @Valid String dropZoneId) {
		if(!StringUtils.isBlank(draggedNodeId)) {
			IvrMenu ivr = ivrMenuRes.findByIdAndOrgi(draggedNodeId, super.getOrgi(request)) ;
			if (ivr != null && !StringUtils.isBlank(dropZoneId)) {
				ivr.setParentid(dropZoneId);
				ivr.setUpdatetime(new Date());
				ivrMenuRes.save(ivr) ;
			}
		}
		return request(super.createRequestPageTempletResponse("redirect:/admin/callcenter/ivr/design.html?hostid="+hostid+"&id="+extentionid));
    }
}
