package com.oaec.shoes.service;

import com.oaec.shoes.entil.Address;

import java.util.List;

public interface AddressService {
    Boolean addAddress(Address address);
    List<Address> queryByUserId(Integer userId);
    Address queryByAddressId(Integer addressId);
    Boolean delete(Integer addressId);
}
