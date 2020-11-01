package models;

public class Book {

    private String isbn;
    private String name;
    private String author;
    private int countOfCopy;
    private String url;

    public Book(){}

    public Book(String isbn, String name, String author, int countOfCopy, String url) {
        this.isbn = isbn;
        this.name = name;
        this.author = author;
        this.countOfCopy = countOfCopy;
        this.url = url;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
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

    public int getCountOfCopy() {
        return countOfCopy;
    }

    public void setCountOfCopy(int countOfCopy) {
        this.countOfCopy = countOfCopy;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
