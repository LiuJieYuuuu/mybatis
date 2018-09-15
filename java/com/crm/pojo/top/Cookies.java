package com.crm.pojo.top;

public class Cookies {
    private String months;
    private Integer numbers;

    public String getMonths() {
        return months;
    }

    public void setMonths(String months) {
        this.months = months;
    }

    public Integer getNumbers() {
        return numbers;
    }

    public void setNumbers(Integer numbers) {
        this.numbers = numbers;
    }

    public Cookies(String months, Integer numbers) {
        this.months = months;
        this.numbers = numbers;
    }

    public Cookies() {
    }
}
