package br.com.aprender.livraria.interfaces;

import java.util.List;
import br.com.aprender.livraria.modelo.Livro;

public interface LivroDAO {

    Livro buscaPorIsbn(String isbn);

    void adiciona(Livro livro);

    List<Livro> todos();

    Livro deleta(Livro livro);
}
