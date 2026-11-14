package com.project.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/logout")
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cookie[] ck = req.getCookies();

        if (ck != null) {
            for (Cookie c : ck) {

                if (c.getName().equals("em") || c.getName().equals("ps")) {
                    c.setMaxAge(0);
                    resp.addCookie(c);
                }
            }
        }

        resp.sendRedirect("index.jsp");
    }
}
