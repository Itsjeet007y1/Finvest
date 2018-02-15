package finvestfx.app.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import finvestfx.app.model.Book;
import finvestfx.app.service.IBookService;

@Controller
public class BookController {

	@Autowired
	private IBookService service;

	// 1. To show AddBook page
	@RequestMapping("/getPage")
	public String showPage() {
		return "AddBook";
	}

	// 2. To add new Book into database
	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public String addBook(@ModelAttribute("book") Book book, ModelMap map) {
		service.saveBook(book);
		String msg = "Book added in store having book Name: " + book.getName();
		map.addAttribute("msg", msg);
		return "AddBook";
	}

	// 3. To get the details of all the books
	@RequestMapping("/getAllBooks")
	public String getAllBooks(ModelMap map) {
		List<Book> bookList = service.getAllBook();
		map.addAttribute("books", bookList);
		return "AllBooks";
	}

	// 4. To delete one book details from store
	@RequestMapping("/deleteBook")
	public String deleteBook(@RequestParam("id") int id) {
		service.deleteBookById(id);
		return "redirect:getAllBooks";
	}

	// 5. To get book search page
	@RequestMapping("/getSearchPage")
	public String getSearchPage() {
		return "BookSearch";
	}

	// 6. To search the book
	@RequestMapping(value = "/searchBook", method = RequestMethod.POST)
	public String searchBook(@RequestParam("name") String name, ModelMap map) {
		List<Object> boObj = new ArrayList<Object>();
		List<Integer> isbnList = new ArrayList<Integer>();
		List<String> bookList = new ArrayList<String>();
		List<String> authorList = new ArrayList<String>();
		List<String> publisherList = new ArrayList<String>();
		boObj = service.searchBookByName(name);
		if (!boObj.isEmpty()) {
			Iterator<Object> iterator = boObj.iterator();
			while (iterator.hasNext()) {
				Object[] obj = (Object[]) iterator.next();
				// get and add isbn of book to the list
				int isbn = Integer.parseInt(String.valueOf(obj[0]));
				isbnList.add(isbn);
				// get and add book of book to the list
				String book = String.valueOf(obj[1]);
				bookList.add(book);
				// get and add author of book to the list
				String author = String.valueOf(obj[2]);
				authorList.add(author);
				// get and add publisher of book to the list
				String publisher = String.valueOf(obj[3]);
				publisherList.add(publisher);
			}
			map.addAttribute("isbn", isbnList);
			map.addAttribute("name", bookList);
			map.addAttribute("author", authorList);
			map.addAttribute("publisher", publisherList);
			System.out.println(isbnList.get(0) + "" + bookList.get(0));
		} else {
			String msg = "<h3 style='color:red;'>'"+name+"' book is not available in the store... Please try again with another book Name</h3>";
			map.addAttribute("msg", msg);
			System.out.println(msg);
		}
		return "BookSearch";
	}
}
