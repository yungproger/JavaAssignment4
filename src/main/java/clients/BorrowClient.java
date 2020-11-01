package clients;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Book;
import org.glassfish.jersey.client.ClientConfig;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import java.util.List;

import static clients.BookClient.getWebTarget;

public class BorrowClient {

    private static String baseUri = "http://localhost:8080/rest/borrows/";

    private static WebTarget getWebTarget(){
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static List<Book> getAll(long readerId){
        try {
            WebTarget target = getWebTarget();
            String booksString = target.path(String.valueOf(readerId)).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Book> books = mapper.readValue(booksString, new TypeReference<List<Book>>() {
            });
            return books;

        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }




}
