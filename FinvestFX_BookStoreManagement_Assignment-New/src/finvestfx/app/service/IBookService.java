package finvestfx.app.service;

import java.util.List;

import finvestfx.app.model.Book;

public interface IBookService {
	public int saveBook(Book bo);
	public List<Book> getAllBook();
	public void deleteBookById(int id);
	public List<Object> searchBookByName(String name);
}
