package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mzv
 */
public class servletUpdateProject extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String queryupdateproject = request.getParameter("queryupdateproject");
            ConnectionSetup conobj = new ConnectionSetup();

            int n = conobj.insertData(queryupdateproject);
            if (n > 0) {
                response.sendRedirect("user/selectBuilder.jsp");
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
        }
    }
}
