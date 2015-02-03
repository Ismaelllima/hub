package br.com.aprender.livraria.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import br.com.aprender.livraria.interfaces.LivroDAO;
import br.com.aprender.livraria.modelo.Livro;

public class JPALivroDAO implements LivroDAO {
	private final EntityManager manager;

	@Inject
	public JPALivroDAO(EntityManager manager) {
		this.manager = manager;
	}

	public JPALivroDAO() {
		this(null);
	}

	@Override
	public void adiciona(Livro livro) {
		this.manager.getTransaction().begin();
		if (livro.getId() == null) {			
			this.manager.persist(livro);			
		} else {
			this.manager.merge(livro);
		}
		this.manager.getTransaction().commit();
	}

	@Override
	public List<Livro> todos() {
		this.manager.getTransaction().begin();
		return this.manager.createQuery("select l from Livro l", Livro.class)
				.getResultList();
	}

	@Override
	public Livro buscaPorIsbn(String isbn) {
		try {
			return this.manager
					.createQuery("select l from Livro l where l.isbn = :isbn",
							Livro.class).setParameter("isbn", isbn)
					.getSingleResult();

		} catch (NoResultException e) {
			return null;
		}

	}
	
	@Override
	public Livro deleta(Livro livro){
		this.manager.getTransaction().begin();	
		this.manager.remove(livro);
		this.manager.getTransaction().commit();
		
		return null;
	}

}
