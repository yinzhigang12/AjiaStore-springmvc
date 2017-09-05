package com.yzg.mybatis;

import com.ajiatech.yzg.mapper.AjiaItemMapper;
import com.ajiatech.yzg.mapper.AjiaUserMapper;
import com.ajiatech.yzg.pojo.AjiaShipping;
import com.ajiatech.yzg.pojo.AjiaUser;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTest {
    @Test
    public void testSpringMyBatis() {
        ApplicationContext app = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        AjiaUserMapper userMapper = app.getBean(AjiaUserMapper.class);
        AjiaUser user = userMapper.selectByPrimaryKey(14L);
        System.out.println(user);

        AjiaItemMapper itemMapper = app.getBean(AjiaItemMapper.class);
        long count = itemMapper.countByExample(null);
        System.out.println(count);
    }

    public void testSpringIOC() {
        ApplicationContext app = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        Object shipping1 = app.getBean("shipping");
        System.out.println(shipping1);
        Object shipping2 = app.getBean("shipping");
        System.out.println(shipping2);
        AjiaShipping s2 = app.getBean(AjiaShipping.class);
        System.out.println(s2);
        AjiaUser user = app.getBean(AjiaUser.class);
        System.out.println(user);
    }
}
