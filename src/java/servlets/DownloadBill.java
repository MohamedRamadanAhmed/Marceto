/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.PaymentBean;
import beans.UserBean;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;
import jdk.nashorn.internal.ir.RuntimeNode;

/**
 *
 * @author Mohamed Ramadan
 */
public class DownloadBill extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DownloadBill</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DownloadBill at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<PaymentBean> payments = (ArrayList<PaymentBean>) request.getAttribute("paymentlist");
        HttpSession session = request.getSession(false);
        UserBean user = (UserBean) session.getAttribute("userObj");

        String bill = "Dear " + user.getFirstName() + " " + user.getLastName() + ",\n"
                + " \n"
                + "    your order will arrive during 6 days from ," + payments.get(payments.size() - 1).getDate() + "\n"
                + "    \n"
                + "    price : " + payments.get(payments.size() - 1).getAmount() + "  \n"
                + "        \n"
                + "        thanks,";
        File f = new File("F:\\ITI Intake 39\\Bills\\bill.txt");

        FileOutputStream outputStream = new FileOutputStream(f);
        DataOutputStream out = new DataOutputStream(outputStream);
        byte[] strToByte = bill.getBytes();
        out.writeUTF(bill);
        outputStream.close();
        String fileName = "bill.txt";
        String filepath = "F:\\ITI Intake 39\\Bills\\";
        
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
        FileInputStream fn = new FileInputStream(filepath + fileName);
        int i;
        while ((i = fn.read()) != -1) {
            response.getWriter().write(i);
        }
        fn.close();
        response.getWriter().close();
        request.getRequestDispatcher(request.getContextPath() + "/home").forward(request, response);
    }
}
