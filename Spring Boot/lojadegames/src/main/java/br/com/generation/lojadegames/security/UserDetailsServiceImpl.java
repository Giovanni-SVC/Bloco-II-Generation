package br.com.generation.lojadegames.security;

import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.generation.lojadegames.model.Usuario;
import br.com.generation.lojadegames.repository.UsuarioRepository;

@Service //UserDetailsServiceImpl se trata de uma Classe de Serviço
public class UserDetailsServiceImpl {
	
	private UsuarioRepository userRepository;
	
	public UserDetails loadUserByUsername (String userName) throws UsernameNotFoundException{
		
		Optional <Usuario> usuario = userRepository.findByUsuario(userName);
		usuario.orElseThrow(() -> new UsernameNotFoundException(userName + " not found. "));
		
		return usuario.map(UserDetailsImpl::new).get();
	}
}
