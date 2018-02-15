package finvestfx.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import finvestfx.app.dao.IBookDao;
import finvestfx.app.model.Book;

@Repository
public class BookServiceImpl implements IBookService {

	@Autowired
	private IBookDao dao;
	
	@Override
	public int saveBook(Book bo) {
		return dao.saveBook(bo);
	}

	@Override
	public void deleteBookById(int id) {
		dao.deleteBookById(id);
	}

	@Override
	public List<Book> getAllBook() {
		return dao.getAllBooks();
	}

	@Override
	public List<Object> searchBookByName(String name) {
		return dao.searchBookByName(name);
	}
}
