package clients;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import models.Reader;
import org.glassfish.jersey.client.ClientConfig;


import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Stack;


public class ReaderClient {

    private static String baseUri = "http://localhost:8080/rest/readers/";

    private static WebTarget getWebTarget(){
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static Stack<Reader> getAll(){
        try {
            WebTarget target = getWebTarget();
            String readersString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            Stack<Reader> readers = mapper.readValue(readersString, new TypeReference<Stack<Reader>>() {
            });
            return readers;

        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public static Reader get(long id){
        WebTarget target = getWebTarget();
        Reader reader= target.path(String.valueOf(id)).request()
                .accept(MediaType.APPLICATION_JSON)
                .get(Reader.class);
        System.out.println(reader);
        return reader;
    }

    public static void delete(long id){
        WebTarget target = getWebTarget();
        Response response = target.path(id + "").request().delete(Response.class);
    }
}
