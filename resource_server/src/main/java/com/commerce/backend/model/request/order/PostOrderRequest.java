package com.commerce.backend.model.request.order;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
public class PostOrderRequest {

    @NotBlank
    @Size(min = 3, max = 52)
    private String shipName;

    @NotBlank
    @Size(min = 3, max = 240)
    private String shipAddress;

    @NotBlank
    @Size(min = 3, max = 240)
    private String billingAddress;

    @NotBlank
    @Size(min = 3, max = 100)
    private String city;

    @NotBlank
    @Size(min = 3, max = 40)

    private String state;

    @NotBlank
    @Size(min = 5, max = 6)

    private String zip;

    @NotBlank
    @Size(min = 3, max = 40)
    private String country;

    @NotBlank
    @Size(min = 11, max = 12)

    private String phone;

}
