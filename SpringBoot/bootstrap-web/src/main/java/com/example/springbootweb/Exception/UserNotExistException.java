package com.example.springbootweb.Exception;

public class UserNotExistException extends RuntimeException {

    public UserNotExistException(){
        super("用户不存在");
    }

}
