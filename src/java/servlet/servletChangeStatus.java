package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mzv
 */
public class servletChangeStatus extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String status = request.getParameter("status");
            String regid = request.getParameter("regid");


            ConnectionSetup conobj = new ConnectionSetup();

            String query = "update registration set status=" + status + " where id=" + regid;
            int n = conobj.insertData(query);
            ResultSet rs = conobj.selectData("select roll from registration where id=" + regid);
            rs.next();
            String roll = rs.getString(1);
            if (roll.equals("1")) {
                response.sendRedirect("admin/manageUser.jsp");
            } else if (roll.equals("2")) {
                response.sendRedirect("admin/manageArchitect.jsp");
            } else if (roll.equals("3")) {
                response.sendRedirect("admin/manageBuilder.jsp");
            }

        } catch (Exception e) {
        }

    }
}
