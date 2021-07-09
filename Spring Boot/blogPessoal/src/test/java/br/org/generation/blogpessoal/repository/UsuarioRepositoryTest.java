package br.org.generation.blogpessoal.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import br.org.generation.blogpessoal.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class UsuarioRepositoryTest {

    @Autowired
    private UsuarioRepository usuarioRepository;
    
    
    @BeforeAll
    void start() throws ParseException {

    	LocalDate data = LocalDate.parse("2000-07-22", DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    	
        Usuario usuario = new Usuario(0L, "Giovanni Cerqueira", "giovanni@email.com.br", "giovanni123", data);
        
        if(usuarioRepository.findByLogin(usuario.getLogin()) != null)
			usuarioRepository.save(usuario);
        
        usuario = new Usuario(0, "Marcelo Cerqueira", "marcelo@email.com.br", "marcelo123", data);

        if(usuarioRepository.findByLogin(usuario.getLogin()) != null)
            usuarioRepository.save(usuario);

        usuario = new Usuario(0, "Luzia Cerqueira", "luzia@email.com.br", "luzia123", data);

        if(usuarioRepository.findByLogin(usuario.getLogin()) != null)
            usuarioRepository.save(usuario);

       	usuario = new Usuario(0, "Harry Potter", "harry@email.com.br", "harry123", data);

        if(usuarioRepository.findByLogin(usuario.getLogin()) != null)
            usuarioRepository.save(usuario);
  }
    
    @Test
    @DisplayName("💾 Retorna o nome")
    public void findFirstByNomeRetornaNome() throws Exception {
        Usuario usuario = usuarioRepository.findByNome("Giovanni Cerqueira");
        assertTrue(usuario.getNome().equals("Giovanni Cerqueira"));
  }
    
    @Test
    @DisplayName("💾 Retorna 3 usuarios")
    public void findAllByNomeContainingIgnoreCaseRetornaTresUsuarios() {
        List<Usuario> listaDeUsuarios = usuarioRepository.findAllByNomeContainingIgnoreCase("Cerqueira");
        assertEquals(3, listaDeUsuarios.size());
  }
    
    @AfterAll
    public void end() {
        usuarioRepository.deleteAll();
    }
}