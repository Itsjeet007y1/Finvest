package finvestfx.app.dao;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import finvestfx.app.model.Book;

@Repository
public class BookDaoImpl implements IBookDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public int saveBook(Book bo) {
		return (Integer)ht.save(bo);
	}

	@Override
	public List<Book> getAllBooks() {
		List<Book> bookList=null;
		bookList=ht.loadAll(Book.class);
		return bookList;
	}

	@Override
	public void deleteBookById(int id) {
		ht.delete(new Book(id));
	}

	@Override
	public List<Object> searchBookByName(String name) {
		String GET_BOOK_BY_NAME="Select isbn,name,author,publisher from finvestfx.app.model.Book where name='"+name+"'";
		List<Object> boList=ht.find(GET_BOOK_BY_NAME);
		/*Iterator<Object> iterator = boList.iterator();
		while (iterator.hasNext()) {
			Object[] obj=(Object[]) iterator.next();
			int isbn=Integer.parseInt(String.valueOf(obj[0]));
			list.add(isbn);
		}*/		
		return boList;
	}
}
