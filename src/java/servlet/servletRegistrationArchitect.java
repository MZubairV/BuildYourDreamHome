package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mzv
 */
public class servletRegistrationArchitect extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String qualification = request.getParameter("qualification");
            String experiance = request.getParameter("experiance");

            HttpSession session = request.getSession();
            String regid=(String) session.getAttribute("tempregid");
            
            ConnectionSetup conobj = new ConnectionSetup();

            String query = "INSERT INTO architect VALUES (null,"+regid+", '"+qualification+"', '"+experiance+"');";
            int n = conobj.insertData(query);
            if (n > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }
        } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {

        }
    }
}
