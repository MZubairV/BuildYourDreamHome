package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mzv
 */
public class servletPlanRequestSend extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            HttpSession session = request.getSession();
            String regid = (String) session.getAttribute("regid");
            String planid = request.getParameter("planid");

            ConnectionSetup conobj = new ConnectionSetup();

            String query = "INSERT INTO `BuildYourDreamHome`.`planRequests` (`planid`, `regid`, `status`, `requestdate`) VALUES (" + planid + ", " + regid + ", 'pending', now());";
            int n = conobj.insertData(query);
            if (n > 0) {
                response.sendRedirect("user/viewPlan.jsp");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
