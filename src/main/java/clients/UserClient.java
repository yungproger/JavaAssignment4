package clients;

import models.User;
import org.glassfish.jersey.client.ClientConfig;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

public class UserClient {

    private static String baseUri = "http://localhost:8080/rest/users/";

    private static WebTarget getWebTarget(){
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static String get(User user){
        WebTarget target = getWebTarget();
        Response response = target.request().post(Entity.entity(user,MediaType.APPLICATION_JSON), Response.class);
        return response.readEntity(String.class);
    }
}
