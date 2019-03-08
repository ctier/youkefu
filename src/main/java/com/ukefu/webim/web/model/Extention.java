package com.ukefu.webim.web.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.ukefu.core.UKDataContext;

@Entity
@Table(name = "uk_callcenter_extention")
@org.hibernate.annotations.Proxy(lazy = false)
public class Extention implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3932323765657445180L;
	private String id;
	private String extention;
	private String hostid ;	//Or IP
	private String agentno;
	private String password ;	//pbx host password
	
	private String extype ;		//分机类型 ： 直线分机 : IVR分机：组分机 ： 队列分机 ：会议分机
	private String subtype = UKDataContext.DTMFTypeEnum.SATISF.toString() ;	//二级类型，如果是 IVR分机，则显示IVR类型：满意度调查，密码，身份证号 ， 银行卡号
	
	private boolean callout;	//是否允许外呼 OutBound
	private boolean playnum ;	//是否播报工号
	
	private boolean record ;	//是否录音
	
	private String description ;	//描述信息·
	private String mediapath ;		//播报工号录音
	
	private String siptrunk ;
	

	private String enableai ;
	private String aiid ;
	private String sceneid ;
	
	private String welcomemsg ;		//欢迎提示语
	private String waitmsg ;		//等待提示语
	private String tipmessage ;		//识别完成提示语
	
	private int waittime = 3000;		//等待提示时长
	private int waittiptimes = 3;		//等待提示次数
	
	private String errormessage ;		//异常完成提示语
	
	private boolean enablewebrtc ;	//启用WEBRTC
	
	private String bustype;//业务类型（电销/问卷）
	private String proid;//（产品ID）
	private String queid;//（问卷ID）
	private String aitype;//机器人类型（smartai/businessai）
	
	private String orgi;
	private String creater ;
	private Date createtime = new Date();
	private Date updatetime = new Date();
	
	
	private String greetlong;
	private String greetshort;
	private String invalidsound;
	private String exitsound;
	private String confirmmacro;
	private String confirmkey;
	private String ttsengine;
	private String ttsvoice;
	private String confirmattempts;
	private int timeout;
	private int interdigittimeout;
	private int maxfailures;
	private int maxtimeouts;
	private int digitlen;
	private String action;
	private String digits;
	private String param;
	private String autoanswer ;	//开启自动接听功能
	
	@Id
	@Column(length = 32)
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getOrgi() {
		return orgi;
	}
	public void setOrgi(String orgi) {
		this.orgi = orgi;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getExtention() {
		return extention;
	}
	public void setExtention(String extention) {
		this.extention = extention;
	}
	public String getHostid() {
		return hostid;
	}
	public void setHostid(String hostid) {
		this.hostid = hostid;
	}
	public String getAgentno() {
		return agentno;
	}
	public void setAgentno(String agentno) {
		this.agentno = agentno;
	}
	public boolean isCallout() {
		return callout;
	}
	public void setCallout(boolean callout) {
		this.callout = callout;
	}
	public boolean isPlaynum() {
		return playnum;
	}
	public void setPlaynum(boolean playnum) {
		this.playnum = playnum;
	}
	@Column(name="srecord")
	public boolean isRecord() {
		return record;
	}
	public void setRecord(boolean record) {
		this.record = record;
	}
	public String getExtype() {
		return extype;
	}
	public void setExtype(String extype) {
		this.extype = extype;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSubtype() {
		return subtype;
	}
	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}
	public String getMediapath() {
		return mediapath;
	}
	public void setMediapath(String mediapath) {
		this.mediapath = mediapath;
	}
	public String getSiptrunk() {
		return siptrunk;
	}
	public void setSiptrunk(String siptrunk) {
		this.siptrunk = siptrunk;
	}
	public String getEnableai() {
		return enableai;
	}
	public void setEnableai(String enableai) {
		this.enableai = enableai;
	}
	public String getAiid() {
		return aiid;
	}
	public void setAiid(String aiid) {
		this.aiid = aiid;
	}
	public String getSceneid() {
		return sceneid;
	}
	public void setSceneid(String sceneid) {
		this.sceneid = sceneid;
	}
	public String getWelcomemsg() {
		return welcomemsg;
	}
	public void setWelcomemsg(String welcomemsg) {
		this.welcomemsg = welcomemsg;
	}
	public String getWaitmsg() {
		return waitmsg;
	}
	public void setWaitmsg(String waitmsg) {
		this.waitmsg = waitmsg;
	}
	public String getTipmessage() {
		return tipmessage;
	}
	public void setTipmessage(String tipmessage) {
		this.tipmessage = tipmessage;
	}
	public String getErrormessage() {
		return errormessage;
	}
	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}
	public String getBustype() {
		return bustype;
	}
	public void setBustype(String bustype) {
		this.bustype = bustype;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	public String getQueid() {
		return queid;
	}
	public void setQueid(String queid) {
		this.queid = queid;
	}
	public String getAitype() {
		return aitype;
	}
	public void setAitype(String aitype) {
		this.aitype = aitype;
	}
	public boolean isEnablewebrtc() {
		return enablewebrtc;
	}
	public void setEnablewebrtc(boolean enablewebrtc) {
		this.enablewebrtc = enablewebrtc;
	}
	public int getWaittime() {
		return waittime;
	}
	public void setWaittime(int waittime) {
		this.waittime = waittime;
	}
	public int getWaittiptimes() {
		return waittiptimes;
	}
	public void setWaittiptimes(int waittiptimes) {
		this.waittiptimes = waittiptimes;
	}
	public String getGreetlong() {
		return greetlong;
	}
	public void setGreetlong(String greetlong) {
		this.greetlong = greetlong;
	}
	public String getGreetshort() {
		return greetshort;
	}
	public void setGreetshort(String greetshort) {
		this.greetshort = greetshort;
	}
	public String getInvalidsound() {
		return invalidsound;
	}
	public void setInvalidsound(String invalidsound) {
		this.invalidsound = invalidsound;
	}
	public String getExitsound() {
		return exitsound;
	}
	public void setExitsound(String exitsound) {
		this.exitsound = exitsound;
	}
	public String getConfirmmacro() {
		return confirmmacro;
	}
	public void setConfirmmacro(String confirmmacro) {
		this.confirmmacro = confirmmacro;
	}
	public String getConfirmkey() {
		return confirmkey;
	}
	public void setConfirmkey(String confirmkey) {
		this.confirmkey = confirmkey;
	}
	public String getTtsengine() {
		return ttsengine;
	}
	public void setTtsengine(String ttsengine) {
		this.ttsengine = ttsengine;
	}
	public String getTtsvoice() {
		return ttsvoice;
	}
	public void setTtsvoice(String ttsvoice) {
		this.ttsvoice = ttsvoice;
	}
	public String getConfirmattempts() {
		return confirmattempts;
	}
	public void setConfirmattempts(String confirmattempts) {
		this.confirmattempts = confirmattempts;
	}
	public int getTimeout() {
		return timeout;
	}
	public void setTimeout(int timeout) {
		this.timeout = timeout;
	}
	public int getInterdigittimeout() {
		return interdigittimeout;
	}
	public void setInterdigittimeout(int interdigittimeout) {
		this.interdigittimeout = interdigittimeout;
	}
	public int getMaxfailures() {
		return maxfailures;
	}
	public void setMaxfailures(int maxfailures) {
		this.maxfailures = maxfailures;
	}
	public int getMaxtimeouts() {
		return maxtimeouts;
	}
	public void setMaxtimeouts(int maxtimeouts) {
		this.maxtimeouts = maxtimeouts;
	}
	public int getDigitlen() {
		return digitlen;
	}
	public void setDigitlen(int digitlen) {
		this.digitlen = digitlen;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getDigits() {
		return digits;
	}
	public void setDigits(String digits) {
		this.digits = digits;
	}
	public String getParam() {
		return param;
	}
	public void setParam(String param) {
		this.param = param;
	}
	public String getAutoanswer() {
		return autoanswer;
	}
	public void setAutoanswer(String autoanswer) {
		this.autoanswer = autoanswer;
	}
}
