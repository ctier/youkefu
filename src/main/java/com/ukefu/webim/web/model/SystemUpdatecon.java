package com.ukefu.webim.web.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
/**
 * 系统升级设置表
 *
 */
@Entity
@Table(name = "uk_system_updatecon")
@org.hibernate.annotations.Proxy(lazy = false)
public class SystemUpdatecon implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1749844062507147795L;
	
	private String id;
	private boolean schedule; //启用后，系统会根据设定的时间和通知方式，在即将重启升级前，进行提前通知(0关闭/1开启)
	private String orgi;
	private Date upgradetime;
	private int scheduletimes;//升级前通知的时间间隔
	private Date updatetime = new Date();
	
	
	private String jarurl ;//下载jar包地址
	
	private String sqlurl ;//更新脚本地址
	private String rollbacksqlurl ;//回滚脚本地址
	private String oldversion;//版本号
	private String version;//版本号
	
	private String jarurldownload;//jar 是否下载 0未 1下载中 2下载成功 3 不存在
	private String sqlurldownload;//sql是否下载 0未 1下载中 2下载成功 3 不存在
	private String rollbacksqlurldownload;//sql是否下载 0未 1下载中 2下载成功 3 不存在
	private boolean confirm ;//是否确认升级
	
	private String udpatestatus;//更新状态 0未更新 1已执行更新
	
	private String versiondesc;//版本更新说明
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
	public boolean isSchedule() {
		return schedule;
	}
	public void setSchedule(boolean schedule) {
		this.schedule = schedule;
	}
	public String getOrgi() {
		return orgi;
	}
	public void setOrgi(String orgi) {
		this.orgi = orgi;
	}
	public Date getUpgradetime() {
		return upgradetime;
	}
	public void setUpgradetime(Date upgradetime) {
		this.upgradetime = upgradetime;
	}
	public int getScheduletimes() {
		return scheduletimes;
	}
	public void setScheduletimes(int scheduletimes) {
		this.scheduletimes = scheduletimes;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getJarurl() {
		return jarurl;
	}
	public void setJarurl(String jarurl) {
		this.jarurl = jarurl;
	}
	public String getSqlurl() {
		return sqlurl;
	}
	public void setSqlurl(String sqlurl) {
		this.sqlurl = sqlurl;
	}
	public String getRollbacksqlurl() {
		return rollbacksqlurl;
	}
	public void setRollbacksqlurl(String rollbacksqlurl) {
		this.rollbacksqlurl = rollbacksqlurl;
	}
	public String getOldversion() {
		return oldversion;
	}
	public void setOldversion(String oldversion) {
		this.oldversion = oldversion;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getJarurldownload() {
		return jarurldownload;
	}
	public void setJarurldownload(String jarurldownload) {
		this.jarurldownload = jarurldownload;
	}
	public String getSqlurldownload() {
		return sqlurldownload;
	}
	public void setSqlurldownload(String sqlurldownload) {
		this.sqlurldownload = sqlurldownload;
	}
	public String getRollbacksqlurldownload() {
		return rollbacksqlurldownload;
	}
	public void setRollbacksqlurldownload(String rollbacksqlurldownload) {
		this.rollbacksqlurldownload = rollbacksqlurldownload;
	}
	public boolean isConfirm() {
		return confirm;
	}
	public void setConfirm(boolean confirm) {
		this.confirm = confirm;
	}
	public String getUdpatestatus() {
		return udpatestatus;
	}
	public void setUdpatestatus(String udpatestatus) {
		this.udpatestatus = udpatestatus;
	}
	public String getVersiondesc() {
		return versiondesc;
	}
	public void setVersiondesc(String versiondesc) {
		this.versiondesc = versiondesc;
	}
	
	
	
	
	
}
