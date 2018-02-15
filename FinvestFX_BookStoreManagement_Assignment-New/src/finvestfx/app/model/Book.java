package finvestfx.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Book {
	@Id
	@GeneratedValue(generator="gen1")
	@GenericGenerator(name="gen1",strategy="increment")
	private int id;
	private long isbn;
	private String name;
	private String author;
	private String publisher;
	//generate default constructor
	public Book() {
	}
	//one-parameter consturctor
	public Book(int id) {
		super();
		this.id = id;
	}
	
	//setters and getters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getIsbn() {
		return isbn;
	}
	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	//toString() method
	@Override
	public String toString() {
		return "Book [id=" + id + ", isbn=" + isbn + ", name=" + name + ", author=" + author + ", publisher="
				+ publisher + "]";
	}
}
