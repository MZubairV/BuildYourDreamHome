package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mzv
 */
public class servletDeletePlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();

            String planid = request.getParameter("planid");
            ConnectionSetup conobj = new ConnectionSetup();

            String query = "DELETE FROM plan WHERE id="+ planid;
            int n = conobj.insertData(query);
            if (n>0) {
                    response.sendRedirect("architect/updatePlan.jsp");                
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }


}
