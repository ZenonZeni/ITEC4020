package itec;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;


/**
 * Servlet implementation class xmlHandler
 */
public class xmlHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xmlHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Gets current session
		HttpSession s = request.getSession();
		
		if(s.getAttribute("username")==null){
			response.sendRedirect("login");
		}
		else {
		

			//Checks if user is logged-in by session authentication
			String id = request.getParameter("id");
					
					
			//If id is null I don't know what picture you want to print so do nothing;
			
			if(id == null) {
				
			}
			else if(id.equals("1")) {
				ServletContext cntx= request.getServletContext();
				
		        // Get the absolute path of the xml
		        String filename = cntx.getRealPath("xml/accounts.xml");
		        // retrieve mimeType dynamically
		        String mime = cntx.getMimeType(filename);
		        if (mime == null) {
		          //Gives error if problem
		          response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		          return;
		        }
	
		        response.setContentType(mime);
				File datafile = new File(filename);
				
				cntx= request.getServletContext();
				String filename2 = cntx.getRealPath("xml/style.xsl");
		        // retrieve mimeType dynamically
		        String mime2 = cntx.getMimeType(filename2);
		        if (mime2 == null) {
		          //Gives error if problem
		          response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		          return;
		        }
	
		        response.setContentType(mime);
		        File stylesheet = new File(filename2);
		        
		        Source xml = new StreamSource(datafile);
				Source xslt = new StreamSource(stylesheet);
		        
		        String html = convertXMLToHTML(xml, xslt);
		        
		        response.setContentType("text/html");
		    	
		    	PrintWriter scan = response.getWriter();
				scan.write(html);
				
		        return;
	        
			}
			else if(id.equals("2")) {
				
				ServletContext cntx= request.getServletContext();
				
		        // Get the absolute path of the xml
		        String filename = cntx.getRealPath("xml/classRoom.xml");
		        // retrieve mimeType dynamically
		        String mime = cntx.getMimeType(filename);
		        if (mime == null) {
		          //Gives error if problem
		          response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		          return;
		        }

		        response.setContentType(mime);
				File datafile = new File(filename);
				
				cntx= request.getServletContext();
				String filename2 = cntx.getRealPath("xml/classRoomstyle.xsl");
		        // retrieve mimeType dynamically
		        String mime2 = cntx.getMimeType(filename2);
		        if (mime2 == null) {
		          //Gives error if problem
		          response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		          return;
		        }

		        response.setContentType(mime);
		        File stylesheet = new File(filename2);
		        
		        Source xml = new StreamSource(datafile);
				Source xslt = new StreamSource(stylesheet);
		        
		        String html = convertXMLToHTML(xml, xslt);
		        
		        response.setContentType("text/html");
		    	
		    	PrintWriter scan = response.getWriter();
				scan.write(html);
				
		        return;
			}
		}
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login");
	}
	
	public static String convertXMLToHTML(Source xml, Source xslt) throws IOException {
		StringWriter sw = new StringWriter();
		
		try {

			TransformerFactory tFactory = TransformerFactory.newInstance();
			Transformer trasform = tFactory.newTransformer(xslt);
			trasform.transform(xml, new StreamResult(sw));
			String html = sw.toString();

			System.out
					.println("product.html generated successfully at D:\\template ");
			
			return html;

		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
		
		return "Error in loading HTML";	
	}

}
