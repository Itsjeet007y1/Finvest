package finvestfx.app.dao;

import java.util.List;

import finvestfx.app.model.Book;

public interface IBookDao {
	public int saveBook(Book bo);
	public List<Book> getAllBooks();
	public void deleteBookById(int id);
	public List<Object> searchBookByName(String name);
}
