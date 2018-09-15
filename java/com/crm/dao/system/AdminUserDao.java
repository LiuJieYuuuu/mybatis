package com.crm.dao.system;

import com.crm.pojo.system.AdminUser;
import com.crm.pojo.system.Etemp;
import com.crm.pojo.system.Role;
import com.crm.pojo.system.Templete;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminUserDao {
    /**
     * 判断登录
     * @param adminUser
     * @return
     */
    AdminUser getUser(AdminUser adminUser);

    /**
     * 根据用户的权限，查询出相对应的父模块、子模块信息
     * @param list
     * @return
     */
    List<Templete> getTempletes(List list);

    /**
     * 获取所有的角色
     * @return
     */
    List<Role> getRoles();

    /**
     * 获取后台所有父的模块信息
     * @return
     */
    List<Templete> getAllTempletes();

    /**
     * 添加新用户
     * @param adminUser
     * @return
     */
    int addAdminUser(AdminUser adminUser);

    /**
     * 修改用户是否为启用还是禁用
     * @param rid
     * @param rstate
     * @return
     */
    int updateState(@Param("rid") Integer rid, @Param("rstate") Integer rstate);

    /**
     * 更新用户的权限
     * @param adminUser
     * @return
     */
    int updateUserTemp(AdminUser adminUser);

    /**
     * 查询对应的id的用户所有信息
     * @param auid
     * @return
     */
    AdminUser getAmindUser(@Param("auid") Integer auid);

    /**
     * 删除用户
     * @param auid
     * @return
     */
    int deleteUser(@Param("auid") Integer auid);

    /**
     * 更新用户
     * @return
     */
    int updateUser(AdminUser adminUser);

    /**
     * 查询的单个角色
     * @param rid
     * @return
     */
    Role getRole(@Param("rid") Integer rid);

    /**
     * 修改角色权限
     * @return
     */
    int updateRole(Role role);

    /**
     * 添加角色
     * @param role
     * @return
     */
    int addRole(Role role);

    /**
     * 获取所有的用户
     * @return
     */
    List<AdminUser> getAllAdminUsers();
}
