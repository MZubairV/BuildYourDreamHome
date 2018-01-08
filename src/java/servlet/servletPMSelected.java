package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mzv
 */
public class servletPMSelected extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String pmid = request.getParameter("pmid");
            String projectid = request.getParameter("projectid");
            String queryp="UPDATE `BuildYourDreamHome`.`project` SET `projectManagerId`='"+ pmid+"', `DOStart`=now(),status='started' WHERE `id`="+projectid;
            ConnectionSetup conobj = new ConnectionSetup();

            int n = conobj.insertData(queryp);
            if (n>0) {
                String querypm="UPDATE `BuildYourDreamHome`.`projectManager` SET `status`='busy' WHERE `id`="+pmid;
                int np = conobj.insertData(querypm);
                response.sendRedirect("builder/providePM.jsp");
               
            }

        } catch (Exception e) {
        }
    }
}
