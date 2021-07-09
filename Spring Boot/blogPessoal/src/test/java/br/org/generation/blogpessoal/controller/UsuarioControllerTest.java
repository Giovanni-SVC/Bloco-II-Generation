package br.org.generation.blogpessoal.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import br.org.generation.blogpessoal.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class UsuarioControllerTest {
  
    @Autowired
    private TestRestTemplate testRestTemplate;

    private Usuario usuario;
    private Usuario usuarioUpdate;

    @BeforeAll
    public void start() throws ParseException {
    	
    	//LocalDate dataPost = LocalDate.parse("2000-07-22", DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        //usuario = new Usuario(0L, "Administrador", "admin@email.com.br", "admin123", dataPost);
        
         
         LocalDate dataPut = LocalDate.parse("2002-07-22", DateTimeFormatter.ofPattern("yyyy-MM-dd"));
         usuarioUpdate = new Usuario(1L, "Giovanni Cerqueira", "giovanni@email.com.br", "giovanni123", dataPut);
         //Não esquecer de verificar o ID no banco de dados. Neste caso, o banco estava vazio!
 	}

    @Disabled
    @Test
    @DisplayName("✔ Cadastrar Usuário!")
    public void deveRealizarPostUsuario() {

        HttpEntity<Usuario> request = new HttpEntity<Usuario>(usuario);
        ResponseEntity<Usuario> resposta = testRestTemplate.exchange("/usuarios/cadastrar", HttpMethod.POST, request, Usuario.class);
        assertEquals(HttpStatus.CREATED, resposta.getStatusCode());
    
    }
  
    @Disabled
    @Test
    @DisplayName("👍 Listar todos os Usuários!")
    public void deveMostrarTodosUsuarios() {
        ResponseEntity<String> resposta = testRestTemplate.withBasicAuth("admin@email.com.br", "admin123").exchange("/usuarios/all", HttpMethod.GET, null, String.class);
        assertEquals(HttpStatus.OK, resposta.getStatusCode());

  }
    //@Disabled
    @Test
    @DisplayName("😳 Alterar Usuário!")
    public void deveRealizarPutUsuario() {
        
        HttpEntity<Usuario> request = new HttpEntity<Usuario>(usuarioUpdate);
        ResponseEntity<Usuario> resposta = testRestTemplate.withBasicAuth("admin@email.com.br", "admin123").exchange("/usuarios/alterar", HttpMethod.PUT, request, Usuario.class);
        assertEquals(HttpStatus.OK, resposta.getStatusCode());

  }
    
    
  //Testar Delete Depois  // 
    /*
    @Test
    @DisplayName("♻ Deletar Usuário!")
    public void deveRealizarDeletetUsuario() {
    	ResponseEntity<String> resposta = testRestTemplate.withBasicAuth("giovanni@email.com.br", "giovanni123").exchange("/usuarios/1", HttpMethod.DELETE, null, String.class);
        assertEquals(HttpStatus.OK, resposta.getStatusCode());

  } */
    

}