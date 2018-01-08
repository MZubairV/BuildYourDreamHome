package servlet;

import db.ConnectionSetup;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author mzv
 */
public class servletUpdateProjectStatus extends HttpServlet {

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

            String description = "";
            String projectid = "";

            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {

            } else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try {
                    items = upload.parseRequest(request);
                } catch (FileUploadException ex) {

                }
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();
                        if (name.equals("description")) {
                            description = value;
//            		 	count1=1;
                        }
                        if (name.equals("projectid")) {
                            projectid = value;
//            		 	count1=1;
                        }

                    } else {
                        try {

                            pic = item.getName();
                            File savedFile = new File(config.getServletContext().getRealPath("/") + "../../web/uploadedImages/" + pic);
                            item.write(savedFile);

                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            PrintWriter out = response.getWriter();
            ConnectionSetup conobj = new ConnectionSetup();
            
            String sql="INSERT INTO `BuildYourDreamHome`.`projectImages` (`projectid`, `description`, `pic`,`date`) VALUES ('"+ projectid +"', '" + description + "', '" + pic + "',now());";
            System.out.println(sql);
            int n = conobj.insertData(sql);
            if (n > 0) {
                response.sendRedirect("projectmanager/viewProjects.jsp");

            }

        } catch (IOException | ClassNotFoundException | SQLException ex) {
        }
    }
}
