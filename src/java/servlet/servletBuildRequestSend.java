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
public class servletBuildRequestSend extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String planreqid = request.getParameter("planreqid");
            
            ConnectionSetup conobj = new ConnectionSetup();
            String queryPlan = "UPDATE `BuildYourDreamHome`.`planRequests` SET `isProReqSend`='yes' WHERE `id`="+planreqid;
            conobj.insertData(queryPlan);        
            String query = "INSERT INTO `BuildYourDreamHome`.`buildRequests` (`planreqid`, `requestdate`,status) VALUES ("+planreqid +",now(),'pending');";
            System.out.println(query);
            int n = conobj.insertData(query);
            if (n > 0) {
                response.sendRedirect("user/request.jsp");
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }


}
