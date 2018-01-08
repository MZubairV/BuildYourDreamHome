package servlet;

import db.ConnectionSetup;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class servletRegistration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();

            String name = request.getParameter("name");
            String mobile = request.getParameter("mobile");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String district = request.getParameter("district");
            String place = request.getParameter("place");
            String email = request.getParameter("email");
            String pwd1 = request.getParameter("pwd1");
            String pwd2 = request.getParameter("pwd2");
            String roll = request.getParameter("roll");
            ConnectionSetup conobj = new ConnectionSetup();

            String query = "INSERT INTO registration VALUES (null,'" + name + "','" + mobile + "','" + country + "','" + state + "','" + district + "','" + place + "', '" + email + "', '" + pwd1 + "', '" + roll + "', '1');";
            int n = conobj.insertData(query);
            
            ResultSet rs = conobj.selectData("select last_insert_id() as last_id from registration");
            rs.next();

            String regid = rs.getString("last_id");
            session.setAttribute("tempregid", regid);

            if (roll.equals("1")) {//customer
                String queryUser = "INSERT INTO user VALUES (null," + regid + ")";
                int nu = conobj.insertData(queryUser);
                if (nu > 0) {
                    response.sendRedirect("login.jsp");
                }
            } else if (roll.equals("2")) {//architect
                response.sendRedirect("architect/registrationArchitect.jsp");
            } else if (roll.equals("3")) {//Builder
                response.sendRedirect("builder/registrationBuilder.jsp");
            } else if (roll.equals("4")) {//ProjectManager
                System.out.println("testing");
                String builderid = (String) session.getAttribute("regid");
                String queryPM = "INSERT INTO projectManager VALUES (null," + regid + "," + builderid + ",'available')";
                conobj.insertData(queryPM);
                response.sendRedirect("builder/manageProjectManager.jsp");
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
}
