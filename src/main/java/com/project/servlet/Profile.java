package com.project.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/profile")
public class Profile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cookie[] ck = req.getCookies();

        String email = null;
        String password = null;

        if (ck != null) {
            for (Cookie c : ck) {

                if (c.getName().equals("em")) {
                    email = c.getValue();
                }

                if (c.getName().equals("ps")) {
                    password = c.getValue();
                }
            }
        }

        if (email == null) {
            resp.sendRedirect("index.jsp");
            return;
        }

        resp.setContentType("text/html");

        PrintWriter out = resp.getWriter();

        out.println("<h1>Email = " + email + "</h1>");
        out.println("<h1>Password = " + password + "</h1>");

        out.print("<a href='logout'>Logout</a>");
    }
}
