package com.oaec.shoes.service.impl;

import com.oaec.shoes.entil.Address;
import com.oaec.shoes.mapper.AddressMapper;
import com.oaec.shoes.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @Autowired
    private AddressMapper addressMapper;
    @Override
    public Boolean addAddress(Address address) {
        int i = addressMapper.doInsert(address);
        return i==1;
    }

    @Override
    public List<Address> queryByUserId(Integer userId) {
        List<Address> list = addressMapper.queryByUserId(userId);
        return list;
    }

    @Override
    public Address queryByAddressId(Integer addressId) {
        return addressMapper.queryByAddressId(addressId);
    }

    @Override
    public Boolean delete(Integer addressId) {
        return addressMapper.updateState(addressId) == 1;
    }
}
