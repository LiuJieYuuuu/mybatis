package com.ssm.medical.impl;

import com.ssm.medical.dao.AdminUserDao;
import com.ssm.medical.pojo.AdminUser;
import com.ssm.medical.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class UserServiceImpl implements UserService {
    @Autowired
    private AdminUserDao adminUserDao;

    @Override
    public AdminUser loginUser(AdminUser adminUser) {
        return adminUserDao.loginUser(adminUser);
    }

    @Override
    public int useradd(AdminUser adminUser) {
        return adminUserDao.useradd(adminUser);
    }

    @Override
    public List<AdminUser> getUsers() {
        return adminUserDao.getUsers();
    }

    @Override
    public int deleteUser(Integer auid) {
        return adminUserDao.deleteUser(auid);
    }

    @Override
    public boolean updatePwd(Integer auid, String old_aupwd,String new_aupwd) {
        String pwd=adminUserDao.getUserPwd(auid);
        if(old_aupwd.equals(pwd)){
            adminUserDao.updatePwd(auid,new_aupwd);
            return true;
        }else
            return false;
    }
}
