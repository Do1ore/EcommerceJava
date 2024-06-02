package com.commerce.backend.model.request.user;

import lombok.Data;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
public class UpdateUserAddressRequest {

    @Size(min = 3, max = 100)
    private String city;


    @Size(min = 3, max = 40)
    private String state;


    @Size(min = 5, max = 6)
    private String zip;

    @Size(min = 3, max = 40)
    private String country;

    @Size(min = 3, max = 240)
    private String address;
}
