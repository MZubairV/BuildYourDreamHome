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
public class servletChangePlanReqStatus extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String status = request.getParameter("status");
            String planreqid = request.getParameter("planreqid");
            String msg = request.getParameter("msg");

            ConnectionSetup conobj = new ConnectionSetup();

            String query = "UPDATE planRequests SET status='"+ status+"',responddate=now(),message='"+ msg+"' WHERE id="+planreqid;
            int n = conobj.insertData(query);
            if (n>0) {
                response.sendRedirect("architect/planRequests.jsp");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
