package clients;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Book;
import org.glassfish.jersey.client.ClientConfig;


import javax.ws.rs.client.*;
import javax.ws.rs.core.*;

import java.util.List;


public class BookClient {

    private static String baseUri = "http://localhost:8080/rest/books/";

    static WebTarget getWebTarget(){
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static List<Book> getAll(){
        try {
            WebTarget target = getWebTarget();
            String booksString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Book> books = mapper.readValue(booksString, new TypeReference<List<Book>>() {
            });
            return books;

        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public static Book get(String isbn){
        WebTarget target = getWebTarget();
        Book book = target.path(isbn).request()
                .accept(MediaType.APPLICATION_JSON)
                .get(Book.class);
        return book;
    }

    public static void delete(String isbn){
        WebTarget target = getWebTarget();
        Response response = target.path(isbn).request().delete(Response.class);
    }
}
