package com.bz.manage.service.system.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bz.manage.dao.base.BaseMapper;
import com.bz.manage.dao.sys.ManageAdminMapper;
import com.bz.manage.dao.sys.ManageMenuMapper;
import com.bz.manage.model.system.ManageAdmin;
import com.bz.manage.model.system.ManageMenu;
import com.bz.manage.service.base.impl.GenericServiceImp;
import com.bz.manage.service.system.MenuService;
@Service
public class MenuServiceImpl extends GenericServiceImp<ManageMenu> implements MenuService{
@Autowired
private ManageMenuMapper manageMenuMapper;
@Autowired
private ManageAdminMapper manageAdminMapper;
	@Override
	public List<ManageMenu> selectMenuList(Integer grade, HttpSession session) throws Exception {
		
		return null;
	}

	@Override
	public BaseMapper<ManageMenu> getDao() {
		return manageMenuMapper;
	}

	@Override
	public List<ManageMenu> selectCurryLoginAdminMenu(Integer adminId) throws Exception {
		ManageAdmin admin=manageAdminMapper.selectById(adminId);
		if(admin.getType()==1){
			ManageMenu menu =new ManageMenu();
			menu.setIsdelete(0);
		return 	manageMenuMapper.selectList(menu);
		}
		return manageMenuMapper.selectCurrYLoginAdminMenu(adminId);
	}

}
