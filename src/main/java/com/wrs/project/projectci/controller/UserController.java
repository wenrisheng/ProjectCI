package com.wrs.project.projectci.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

	@RequestMapping("/login")
public Map<String, Object> login(String account, String pwd) {
	Map<String, Object> result = new HashMap<>();
	result.put("account", account);
	result.put("pwd", pwd);
	return result;
}
}
