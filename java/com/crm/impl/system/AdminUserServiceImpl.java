package com.crm.impl.system;

import com.crm.dao.system.AdminUserDao;
import com.crm.pojo.system.AdminUser;
import com.crm.pojo.system.Role;
import com.crm.pojo.system.Templete;
import com.crm.service.system.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class AdminUserServiceImpl implements AdminUserService {

    @Autowired
    private AdminUserDao adminUserDao;

    @Override
    public AdminUser getAdminUser(AdminUser adminUser) {
        return adminUserDao.getUser(adminUser);
    }

    @Override
    public List<Templete> getTempletes(List list) {
        return adminUserDao.getTempletes(list);
    }

    @Override
    public List<Role> getRoles() {
        return adminUserDao.getRoles();
    }

    @Override
    public List<Templete> getAllTempletes() {
        return adminUserDao.getAllTempletes();
    }

    @Override
    public int addAdminUser(AdminUser adminUser) {
        return adminUserDao.addAdminUser(adminUser);
    }

    @Override
    public int updateState(Integer rid, Integer rstate) {
        return adminUserDao.updateState(rid,rstate);
    }

    @Override
    public int updateUserTemp(AdminUser adminUser) {
        return adminUserDao.updateUserTemp(adminUser);
    }

    @Override
    public AdminUser getAdmingUser(Integer auid) {
        return adminUserDao.getAmindUser(auid);
    }

    @Override
    public int deleteUser(Integer auid) {
        return adminUserDao.deleteUser(auid);
    }

    @Override
    public int updateUser(AdminUser adminUser) {
        return adminUserDao.updateUser(adminUser);
    }

    @Override
    public Role getRole(Integer rid) {
        return adminUserDao.getRole(rid);
    }

    @Override
    public int updateRole(Role role) {
        return adminUserDao.updateRole(role);
    }

    @Override
    public int addRole(Role role) {
        return adminUserDao.addRole(role);
    }

    @Override
    public List<AdminUser> getAllAdminUsers() {
        return adminUserDao.getAllAdminUsers();
    }
}
