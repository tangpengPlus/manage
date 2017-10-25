package com.bz.manage.model.system;

import com.bz.manage.model.base.BaseModel;
import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
	* 作者:唐鹏
	* 描述:
	* 版本: version 1.0.0
	* 时间:2017-08-23 11:05:17
  */
public class ManageMenu extends BaseModel {
    /**
     * 菜单数据ID
     * 表字段 : manage_menu.id
     */
    private Integer id;

    /**
     * 数据编号
     * 表字段 : manage_menu.number
     */
    private String number;

    /**
     * 创建时间
     * 表字段 : manage_menu.createtime
     */
    private Date createtime;

    /**
     * 创建人
     * 表字段 : manage_menu.createadmin
     */
    private String createadmin;

    /**
     * 菜单描述
     * 表字段 : manage_menu.describe
     */
    @Length(max=255,message="菜单描述太长")
    private String describe;

    /**
     * 菜单等级
     * 表字段 : manage_menu.grade
     */
    private Integer grade;

    /**
     * 1:有内容的菜单 2:无内容的菜单 3:隐藏菜单
     * 表字段 : manage_menu.type
     */
    private Integer type;

    /**
     * 当等级不为一级时 关联上级菜单的数据id
     * 表字段 : manage_menu.superior
     */
    private Integer superior;

    /**
     * 菜单排序编号 默1
     * 表字段 : manage_menu.sort
     */
    private Integer sort;

    /**
     * 菜单访问地址
     * 表字段 : manage_menu.url
     */
    @Length(max=255,message="菜单url太长")
    private String url;

    /**
     * 菜单名称
     * 表字段 : manage_menu.name
     */
    @NotEmpty(message="菜单名称不能为空")
    @Length(max=100,message="菜单名称太长")
    private String name;

    /**
     * 图标路径
     * 表字段 : manage_menu.icopath
     */
    private String icopath;

    /**
     * 当该菜单type为3时 关联主菜单id
     * 表字段 : manage_menu.relationmenu
     */
    private Integer relationmenu;

    /**
     * 0:否 1：是
     * 表字段 : manage_menu.isdelete
     */
    private Integer isdelete;

    /**
     * 0为展示页面 1：为修改或者增加页面
     * 表字段 : manage_menu.autoAttach
     */
    private Integer autoattach;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table manage_menu
     *
     * @mbg.generated Wed Aug 23 11:05:17 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * 获取 菜单数据ID 字段:manage_menu.id
     *
     * @return manage_menu.id, 菜单数据ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 菜单数据ID 字段:manage_menu.id
     *
     * @param id the value for manage_menu.id, 菜单数据ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 数据编号 字段:manage_menu.number
     *
     * @return manage_menu.number, 数据编号
     */
    public String getNumber() {
        return number;
    }

    /**
     * 设置 数据编号 字段:manage_menu.number
     *
     * @param number the value for manage_menu.number, 数据编号
     */
    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    /**
     * 获取 创建时间 字段:manage_menu.createtime
     *
     * @return manage_menu.createtime, 创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置 创建时间 字段:manage_menu.createtime
     *
     * @param createtime the value for manage_menu.createtime, 创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取 创建人 字段:manage_menu.createadmin
     *
     * @return manage_menu.createadmin, 创建人
     */
    public String getCreateadmin() {
        return createadmin;
    }

    /**
     * 设置 创建人 字段:manage_menu.createadmin
     *
     * @param createadmin the value for manage_menu.createadmin, 创建人
     */
    public void setCreateadmin(String createadmin) {
        this.createadmin = createadmin == null ? null : createadmin.trim();
    }

    /**
     * 获取 菜单描述 字段:manage_menu.describe
     *
     * @return manage_menu.describe, 菜单描述
     */
    public String getDescribe() {
        return describe;
    }

    /**
     * 设置 菜单描述 字段:manage_menu.describe
     *
     * @param describe the value for manage_menu.describe, 菜单描述
     */
    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    /**
     * 获取 菜单等级 字段:manage_menu.grade
     *
     * @return manage_menu.grade, 菜单等级
     */
    public Integer getGrade() {
        return grade;
    }

    /**
     * 设置 菜单等级 字段:manage_menu.grade
     *
     * @param grade the value for manage_menu.grade, 菜单等级
     */
    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    /**
     * 获取 1:有内容的菜单 2:无内容的菜单 3:隐藏菜单 字段:manage_menu.type
     *
     * @return manage_menu.type, 1:有内容的菜单 2:无内容的菜单 3:隐藏菜单
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置 1:有内容的菜单 2:无内容的菜单 3:隐藏菜单 字段:manage_menu.type
     *
     * @param type the value for manage_menu.type, 1:有内容的菜单 2:无内容的菜单 3:隐藏菜单
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取 当等级不为一级时 关联上级菜单的数据id 字段:manage_menu.superior
     *
     * @return manage_menu.superior, 当等级不为一级时 关联上级菜单的数据id
     */
    public Integer getSuperior() {
        return superior;
    }

    /**
     * 设置 当等级不为一级时 关联上级菜单的数据id 字段:manage_menu.superior
     *
     * @param superior the value for manage_menu.superior, 当等级不为一级时 关联上级菜单的数据id
     */
    public void setSuperior(Integer superior) {
        this.superior = superior;
    }

    /**
     * 获取 菜单排序编号 默1 字段:manage_menu.sort
     *
     * @return manage_menu.sort, 菜单排序编号 默1
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * 设置 菜单排序编号 默1 字段:manage_menu.sort
     *
     * @param sort the value for manage_menu.sort, 菜单排序编号 默1
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * 获取 菜单访问地址 字段:manage_menu.url
     *
     * @return manage_menu.url, 菜单访问地址
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置 菜单访问地址 字段:manage_menu.url
     *
     * @param url the value for manage_menu.url, 菜单访问地址
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * 获取 菜单名称 字段:manage_menu.name
     *
     * @return manage_menu.name, 菜单名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置 菜单名称 字段:manage_menu.name
     *
     * @param name the value for manage_menu.name, 菜单名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取 图标路径 字段:manage_menu.icopath
     *
     * @return manage_menu.icopath, 图标路径
     */
    public String getIcopath() {
        return icopath;
    }

    /**
     * 设置 图标路径 字段:manage_menu.icopath
     *
     * @param icopath the value for manage_menu.icopath, 图标路径
     */
    public void setIcopath(String icopath) {
        this.icopath = icopath == null ? null : icopath.trim();
    }

    /**
     * 获取 当该菜单type为3时 关联主菜单id 字段:manage_menu.relationmenu
     *
     * @return manage_menu.relationmenu, 当该菜单type为3时 关联主菜单id
     */
    public Integer getRelationmenu() {
        return relationmenu;
    }

    /**
     * 设置 当该菜单type为3时 关联主菜单id 字段:manage_menu.relationmenu
     *
     * @param relationmenu the value for manage_menu.relationmenu, 当该菜单type为3时 关联主菜单id
     */
    public void setRelationmenu(Integer relationmenu) {
        this.relationmenu = relationmenu;
    }

    /**
     * 获取 0:否 1：是 字段:manage_menu.isdelete
     *
     * @return manage_menu.isdelete, 0:否 1：是
     */
    public Integer getIsdelete() {
        return isdelete;
    }

    /**
     * 设置 0:否 1：是 字段:manage_menu.isdelete
     *
     * @param isdelete the value for manage_menu.isdelete, 0:否 1：是
     */
    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    /**
     * 获取 0为展示页面 1：为修改或者增加页面 字段:manage_menu.autoAttach
     *
     * @return manage_menu.autoAttach, 0为展示页面 1：为修改或者增加页面
     */
    public Integer getAutoattach() {
        return autoattach;
    }

    /**
     * 设置 0为展示页面 1：为修改或者增加页面 字段:manage_menu.autoAttach
     *
     * @param autoattach the value for manage_menu.autoAttach, 0为展示页面 1：为修改或者增加页面
     */
    public void setAutoattach(Integer autoattach) {
        this.autoattach = autoattach;
    }
}