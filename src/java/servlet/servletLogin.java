package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mzv
 */
public class servletLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");

            ConnectionSetup conobj = new ConnectionSetup();

            String queryReg = "select * from registration where email='" + email + "' and pwd='" + pwd + "';";
            ResultSet rsReg = conobj.selectData(queryReg);
            if (rsReg.next()) {
                String roll = rsReg.getString("roll");
                String regid = rsReg.getString("id");
                int isLogged = 1;

                HttpSession session = request.getSession();
                session.setAttribute("regid", regid);
                session.setAttribute("isLogged", isLogged);

                if (roll.equals("1")) {
                    response.sendRedirect("user/userHome.jsp");
                } else if (roll.equals("2")) {
                    response.sendRedirect("architect/architectHome.jsp");
                } else if (roll.equals("3")) {
                    response.sendRedirect("builder/builderHome.jsp");
                } else if (roll.equals("4")) {
                    response.sendRedirect("projectmanager/projectManagerHome.jsp");
                } else if (roll.equals("5")) {
                    response.sendRedirect("admin/adminHome.jsp");
                }
            } else {
                response.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
