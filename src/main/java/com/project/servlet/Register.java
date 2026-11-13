package com.project.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Register")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Thread.sleep(3000);
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            String email = request.getParameter("email");

            System.out.println(userName);
            System.out.println(password);
            System.out.println(email);

            //response.getWriter().write("Registration Successful!");
            PrintWriter out = response.getWriter();
            out.println("done");

        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

    }
}
