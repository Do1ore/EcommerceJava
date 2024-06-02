package com.commerce.backend.model.request.user;

import lombok.Data;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
public class UpdateUserRequest {

    @Size(min = 3, max = 26)
    private String firstName;

    @Size(min = 3, max = 26)
    private String lastName;

    @Size(min = 11, max = 12)
    private String phone;
}
