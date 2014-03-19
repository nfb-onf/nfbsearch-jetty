package ca.nfb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.http.client.fluent.Request;

public class HelloServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("application/json");
        response.setStatus(HttpServletResponse.SC_OK);
        String queryParam = request.getParameter("q");
        String url = "http://vmdev.nfb.ca:9200/nfb_films/films/_search?q=" + queryParam;
        String esResponse = Request.Get(url).execute().returnContent().asString();
        response.getWriter().println(esResponse);

    }
}
