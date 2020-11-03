package services;

import models.Book;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import java.util.ArrayList;
import java.util.List;

public class BookService {

    private static String baseUri = "http://localhost:8080/rest/books/";

    public static List<Book> getBooks() {
        try {
            List<Book> books = new ArrayList<>();

            CloseableHttpClient client = HttpClientBuilder.create().setSSLHostnameVerifier(
                    new NoopHostnameVerifier()).build();
            HttpGet request = new HttpGet(baseUri);
            CloseableHttpResponse response = client.execute(request);
            HttpEntity ht = response.getEntity();
            BufferedHttpEntity buf = new BufferedHttpEntity(ht);
            String responseString = EntityUtils.toString(buf, "UTF-8");
            JSONArray jArray = (JSONArray) new JSONTokener(responseString).nextValue();
            for (int i = 0; i < jArray.length(); i++) {
                JSONObject jObject = jArray.getJSONObject(i);
                books.add(new Book(
                        jObject.getString("isbn"),
                        jObject.getString("name"),
                        jObject.getString("author"),
                        jObject.getInt("countOfCopy"),
                        jObject.getString("url"))
                );
            }
            return books;

        } catch (Exception e) {
            return new ArrayList<>();
        }
    }
}