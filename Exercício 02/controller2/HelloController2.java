package com.helloworld.hello.controller2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/hello2")
public class HelloController2 {
	
	@GetMapping
	public String hello2() {
		return "Objetivos de aprendizagem para essa semana: aprender Spring Boot!";
	}

}
