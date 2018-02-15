package finvestfx.app.provider;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import finvestfx.app.model.Book;
import finvestfx.app.service.IBookService;

@Component
@Path("/bookSearch")
public class BookSearchProvider {
	
	@Autowired
	private IBookService service;
	
	@POST
	public String getBook(@QueryParam("name")String name) {
		List<Object> boObj = new ArrayList<Object>();
		boObj = service.searchBookByName(name);
		System.out.println(name);
		//if book is available
		if(!boObj.isEmpty()) {
			Book bo=new Book();
			Iterator<Object> iterator = boObj.iterator();
			// Iterate the data of iterator object
			while (iterator.hasNext()) {
				Object[] obj = (Object[]) iterator.next();
				// get and add to the book object
				int isbn = Integer.parseInt(String.valueOf(obj[0]));
				bo.setIsbn(isbn);
				//get and add to the book object
				String book = String.valueOf(obj[1]);
				bo.setName(book);
				// get and add author of book to the list
				String author = String.valueOf(obj[2]);
				bo.setAuthor(author);
				//get and add to the book object
				String publisher = String.valueOf(obj[3]);
				bo.setPublisher(publisher);
				System.out.println(bo);
			}//iterator
			return bo+"";
			// if book is not available
		} else {
			return name+" Book is not available!!";
		}//else
	}//method
}	//class
