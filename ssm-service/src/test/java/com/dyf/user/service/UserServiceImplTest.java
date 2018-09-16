package com.dyf.user.service;

import com.dyf.user.pojo.User;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-context.xml"})
@Slf4j
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @Test
    public void get() {
    }

    @Test
    public void findList() {
        List<User> userList = userService.findList(null);
        log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>"+ userList.size());
    }

    @Test
    public void delete() {
    }

    @Test
    public void save() {
    }
}