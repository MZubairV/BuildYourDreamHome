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
public class servletCostRequestUtB extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String projectid = request.getParameter("projectid");
            String builderid = request.getParameter("builderid");
            
            ConnectionSetup conobj = new ConnectionSetup();
            String query= "INSERT INTO `BuildYourDreamHome`.`costRequest` (`projectid`, `builderid`) VALUES ("+ projectid+","+ builderid+ ");";
            int n=conobj.insertData(query);        
            if (n > 0) {
                response.sendRedirect("user/choosBuilder.jsp");
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
}
