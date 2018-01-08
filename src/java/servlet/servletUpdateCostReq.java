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
public class servletUpdateCostReq extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String costreqid = request.getParameter("costreqid");
            String cost = request.getParameter("cost");


            ConnectionSetup conobj = new ConnectionSetup();

            String query = "UPDATE `BuildYourDreamHome`.`costRequest` SET `status`='responded', `cost`='"+ cost+"' WHERE `id`="+costreqid;
            int n = conobj.insertData(query);
            if (n>0) {
                response.sendRedirect("builder/coastReqUtB.jsp");
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
        }

    }
}
