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
public class servletPlanAccepted extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            HttpSession session=request.getSession();
            String archId=(String) session.getAttribute("regid");
            String buildReqId = request.getParameter("buildReqId");
            String planReqId = request.getParameter("planReqId");
            String status = request.getParameter("status");
            
                   
            
            ConnectionSetup conobj = new ConnectionSetup();
            
            String queryBuildReq="UPDATE `BuildYourDreamHome`.`buildRequests` SET `responddate`=now(), `isBuildReqAccepted`='yes',status='"+ status+"' WHERE `id`="+buildReqId;
            conobj.insertData(queryBuildReq);
            
            String queryPlanRequests="SELECT planid,regid FROM planRequests where id="+planReqId;
            ResultSet rsPR=conobj.selectData(queryPlanRequests);
            rsPR.next();            
            String userid=rsPR.getString("regid");
            String planid=rsPR.getString("planid");
            
             
            String queryProject = "INSERT INTO `BuildYourDreamHome`.`project` (`userId`, `planid`, `architectId`, `status`,planselectdate) VALUES ("+ userid+","+ planid+","+archId+", 'plan selected',now());";
            System.out.println(queryProject);
            int n=conobj.insertData(queryProject);        
            if (n > 0) {
                response.sendRedirect("architect/buildRequests.jsp");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
