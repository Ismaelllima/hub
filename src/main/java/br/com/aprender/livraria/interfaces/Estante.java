package br.com.aprender.livraria.interfaces;

import java.util.List;
import br.com.aprender.livraria.modelo.Livro;

public interface Estante {

    void guarda(Livro livro);

    List<Livro> todosOsLivros();

    Livro buscaPorIsbn(String isbn);

    Livro deleta(Livro livro);
}
