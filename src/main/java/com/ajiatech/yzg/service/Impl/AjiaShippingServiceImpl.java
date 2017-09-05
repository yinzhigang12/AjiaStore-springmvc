package com.ajiatech.yzg.service.Impl;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ajiatech.yzg.mapper.AjiaShippingMapper;
import com.ajiatech.yzg.pojo.AjiaShipping;
import com.ajiatech.yzg.pojo.AjiaShippingExample;
import com.ajiatech.yzg.service.AjiaShippingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AjiaShippingServiceImpl implements AjiaShippingService {
    @Autowired
    private AjiaShippingMapper shippingMapper;

    public void save(AjiaShipping shipping) {
        shippingMapper.insertSelective(shipping);
    }

    public List<AjiaShipping> findByUserId(long userId) {
        AjiaShippingExample example = new AjiaShippingExample();
        example.createCriteria().andUserIdEqualTo(userId).andStatusEqualTo((byte) 1);
        List<AjiaShipping> shippings = shippingMapper.selectByExample(example);
        return shippings;
    }

    public void delete(Long addId) {
        AjiaShipping shipping = new AjiaShipping();
        shipping.setAddId(addId);
        shipping.setStatus((byte) 2);
        shippingMapper.updateByPrimaryKeySelective(shipping);
    }

    public void updateDefault(Long addId) {
        AjiaShipping shipping = shippingMapper.selectByPrimaryKey(addId);
        Long userId = shipping.getUserId();
        AjiaShipping sip = new AjiaShipping();
        sip.setIsDefault(false);
        AjiaShippingExample example = new AjiaShippingExample();
        example.createCriteria().andUserIdEqualTo(userId);
        shippingMapper.updateByExampleSelective(sip, example);
        sip.setAddId(addId);
        sip.setIsDefault(true);
        shippingMapper.updateByPrimaryKeySelective(sip);

    }

    public AjiaShipping getDefaultAddress(Long userId) {
        AjiaShippingExample example = new AjiaShippingExample();
        example.createCriteria().andUserIdEqualTo(userId).andIsDefaultEqualTo(true);
        List<AjiaShipping> ss = shippingMapper.selectByExample(example);
        if (ss != null && ss.size() > 0) {
            return ss.get(0);
        }
        return null;
    }

}
