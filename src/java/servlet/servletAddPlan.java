package servlet;

import db.ConnectionSetup;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author mzv
 */
public class servletAddPlan extends HttpServlet {

    ServletConfig config;
    HttpSession session;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        config = getServletConfig();
        try {

            session = request.getSession();
            String regid = (String) session.getAttribute("regid");

            String pic = "";

            String planname = "";
            String type = "";
            String area = "";
            String bedroom = "";
            String bathroom = "";
            String noFloor = "";

            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {

            } else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try {
                    items = upload.parseRequest(request);
                } catch (Exception ex) {

                }
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();
                        if (name.equals("name")) {
                            planname = value;
//            		 	count1=1;
                        }
                        if (name.equals("type")) {
                            type = value;
//                         count2=2;
//                            System.out.println("type = " + type);
                        }
                        if (name.equals("area")) {
                            area = value;
//                         count5=5;
//                            System.out.println("are = " + area);
                        }
                        if (name.equals("bedrooms")) {
                            bedroom = value;
                            // count3=3;
//                            System.out.println("bed = " + bedroom);
                        }

                        if (name.equals("bathrooms")) {
//			      		count4=4;
                            bathroom = value;
//                            System.out.println("bath = " + bathroom);
                        }
                        if (name.equals("noFloor")) {
                            noFloor = value;
//                            System.out.println("nf = " + noFloor);

                        }

                    } else {
                        try {

                            pic = item.getName();
                            File savedFile = new File(config.getServletContext().getRealPath("/") + "../../web/uploadedImages/" + pic);
                            System.out.println("path===" + config.getServletContext().getRealPath("/") + "../../uploadedImages/" + pic);
                            item.write(savedFile);

                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            PrintWriter out = response.getWriter();
            ConnectionSetup conobj = new ConnectionSetup();

            String sqlplan = "INSERT INTO plan VALUES (null, '" + planname + "', '" + regid + "', '" + type + "', '" + bedroom + "', '" + bathroom + "', '" + noFloor + "', '" + area + "', '" + pic + "');";
            int n = conobj.insertData(sqlplan);
            if (n > 0) {
                response.sendRedirect("architect/managePlan.jsp");

            }

        } catch (Exception ex) {
        }

    }

}
