package com.msb.servlet;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.msb.model.User;

/**
 * Servlet implementation class DisplayProfileImage
 */
@WebServlet("/resources/DisplayProfileImage")
public class DisplayProfileImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DisplayProfileImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {

			BufferedImage image = ImageIO.read(getServletContext()
					.getResourceAsStream("/img/profilepicture.png"));

			HttpSession httpSession = request.getSession();
			User user = (User) httpSession.getAttribute("Student");
			response.setContentType("image/jpeg");
			int length = 0;

			InputStream is=null; 
			if (user.getImage()!=null && user.getImage().length>0) {
				is = new ByteArrayInputStream(user.getImage());
				length = is.available();
				response.setContentLength(length);

			} else {

				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				ImageIO.write(image, "png", baos);
				length = baos.toByteArray().length;
				response.setContentLength(baos.toByteArray().length);
				is = new ByteArrayInputStream(baos.toByteArray());
			}
			OutputStream os = response.getOutputStream();
			byte buf[] = new byte[length];
			is.read(buf);
			os.write(buf);
			os.flush();
			os.close();
		} catch (IOException exception) {
			exception.printStackTrace();
		}
	}

}
