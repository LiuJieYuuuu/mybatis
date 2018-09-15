package com.crm.dao.top;

import com.crm.pojo.top.Client;
import com.crm.pojo.top.Cookies;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Repository
public interface RClientDao {
    Integer selClientS(@Param("username") String username);
    Integer selClientW(@Param("username") String username);
    Integer selClientY(@Param("username") String username);
    List<Cookies> selClientCook(@Param("username") String username);
    List<Client> selClientOk(@Param("username") String username);
    List<Client> selClientBad(@Param("username") String username);
}
