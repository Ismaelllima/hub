package br.com.aprender.livraria.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.aprender.livraria.interfaces.Estante;
import br.com.aprender.livraria.modelo.Livro;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Controller
public class IntegracaoController {
	
	private Estante estante;
	private Result result;
	
	@Inject
	public void IntegracaoController(Estante estante, Result result){
		this.estante = estante;
		this.result = result;
	}
	
	@Deprecated
	IntegracaoController() {
		
	}
	
	public void listaLivros(){
		List<Livro> livros =  estante.todosOsLivros();
		
		result.use(Results.xml()).from(livros, "livros").serialize();
	}

}
