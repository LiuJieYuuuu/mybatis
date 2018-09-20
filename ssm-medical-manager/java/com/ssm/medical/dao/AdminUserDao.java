package com.ssm.medical.dao;


import com.ssm.medical.pojo.AdminUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminUserDao {
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
    int deleteUser(@Param("auid")Integer auid);

    /**
     * 获取原来的密码
     * @param auid
     * @return
     */
    String getUserPwd(@Param("auid")Integer auid);

    /**
     * 修改密码
     * @param auid
     * @param aupwd
     * @return
     */
    boolean updatePwd(@Param("auid")Integer auid,@Param("aupwd")String aupwd);
}
