package com.crm.pojo.top;

import com.github.pagehelper.PageInfo;

import java.util.List;

public class HomePage {
    private List<String> nTimeList;  //公告日期
    private List<Crm_Notice> noticeList;  //所有公告
    private int clientFollUp;  //  待跟进人数
    private int clientW;  //本月未报名人数
    private int clientY;  //本月已报名人数
    private String clientL;  //本月报名率
    private List<Cookies> cookiesList;  //饼图
    private PageInfo pageInfoOk;  //已办事项
    private PageInfo pageInfoBad;  //待办事项

    public List<String> getnTimeList() {
        return nTimeList;
    }

    public void setnTimeList(List<String> nTimeList) {
        this.nTimeList = nTimeList;
    }

    public List<Crm_Notice> getNoticeList() {
        return noticeList;
    }

    public void setNoticeList(List<Crm_Notice> noticeList) {
        this.noticeList = noticeList;
    }

    public int getClientFollUp() {
        return clientFollUp;
    }

    public void setClientFollUp(int clientFollUp) {
        this.clientFollUp = clientFollUp;
    }

    public int getClientW() {
        return clientW;
    }

    public void setClientW(int clientW) {
        this.clientW = clientW;
    }

    public int getClientY() {
        return clientY;
    }

    public void setClientY(int clientY) {
        this.clientY = clientY;
    }

    public String getClientL() {
        return clientL;
    }

    public void setClientL(String clientL) {
        this.clientL = clientL;
    }

    public List<Cookies> getCookiesList() {
        return cookiesList;
    }

    public void setCookiesList(List<Cookies> cookiesList) {
        this.cookiesList = cookiesList;
    }

    public PageInfo getPageInfoOk() {
        return pageInfoOk;
    }

    public void setPageInfoOk(PageInfo pageInfoOk) {
        this.pageInfoOk = pageInfoOk;
    }

    public PageInfo getPageInfoBad() {
        return pageInfoBad;
    }

    public void setPageInfoBad(PageInfo pageInfoBad) {
        this.pageInfoBad = pageInfoBad;
    }

    public HomePage(List<String> nTimeList, List<Crm_Notice> noticeList, int clientFollUp, int clientW, int clientY, String clientL, List<Cookies> cookiesList, PageInfo pageInfoOk, PageInfo pageInfoBad) {
        this.nTimeList = nTimeList;
        this.noticeList = noticeList;
        this.clientFollUp = clientFollUp;
        this.clientW = clientW;
        this.clientY = clientY;
        this.clientL = clientL;
        this.cookiesList = cookiesList;
        this.pageInfoOk = pageInfoOk;
        this.pageInfoBad = pageInfoBad;
    }

    public HomePage() {
    }

}
