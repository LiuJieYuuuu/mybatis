package com.ssm.medical.service;

import com.ssm.medical.pojo.AdminUser;

import java.util.List;

public interface UserService {
    /**
     * 登录
     * @param adminUser
     * @return
     */
    AdminUser loginUser(AdminUser adminUser);
    /**
     * 添加用户
     * @param adminUser
     * @return
     */
    int useradd(AdminUser adminUser);

    /**
     * 获取所有后台用户
     * @return
     */
    List<AdminUser> getUsers();
    /**
     * 删除用户
     * @param auid
     * @return
     */
    int deleteUser(Integer auid);

    /**
     * 修改密码
     * @param auid
     * @param old_aupwd
     * @param new_aupwd
     * @return
     */
    boolean updatePwd(Integer auid,String old_aupwd,String new_aupwd);
}
