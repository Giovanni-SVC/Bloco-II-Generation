package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/hello")
public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Mentalidades utilizadas para essa atividade: persistência e responsabilidade pessoal."
				+ "\n Habilidades utilizadas para essa atividade: atenção aos detalhes e proatividade:";
	}

}
