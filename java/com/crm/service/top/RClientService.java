package com.crm.service.top;

import com.crm.pojo.top.Client;
import com.crm.pojo.top.Cookies;

import java.util.List;

public interface RClientService {
    Integer selClientS(String username);
    Integer selClientW(String username);
    Integer selClientY(String username);
    List<Cookies> selClientCook(String username);
    List<Client> selClientOk(String username);
    List<Client> selClientBad(String username);
}
