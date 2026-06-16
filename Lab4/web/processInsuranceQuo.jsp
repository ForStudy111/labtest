<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 21, 2026, 4:39:05 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            // Retrieve form data
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverage");
            String ncdStr = request.getParameter("ncd");
            
            double price = 0;
            double ncd = 0;
            
            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncd = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncd = 0;
            }

            // Business Logic
            double rate = 0;
            String coverageDisplay = "";
            
            if ("comprehensive".equals(coverage)) {
                rate = 0.05; // 5%
                coverageDisplay = "Comprehensive";
            } else {
                rate = 0.03; // 3%
                coverageDisplay = "Third Party";
            }

            // Base insurance calculation
            double insurance = price * rate;
            
            // Apply NCD discount
            double discount = insurance * ncd;
            double afterNCD = insurance - discount;
            
            // Add 8% SST
            double sst = afterNCD * 0.08;
            double finalAmount = afterNCD + sst;
        %>

        <div class="container">
            <h1>Insurance Quotation Result</h1>
            <div class="card">
                <h2 class="form-title">Transaction Details</h2>
                

                <label>IC No:</label>
                <p><%= icno %></p>

                <label>Name:</label>
                <p><%= name %></p>

                <label>Market Price (RM):</label>
                <p><%= String.format("%.2f", price) %></p>

                <label>Coverage Type:</label>
                <p><%= coverageDisplay %></p>

                <label>NCD:</label>
                <p><%= (int)(ncd * 100) %>%</p>

                <hr style="border: 1px dashed #ddd; margin: 20px 0;">


                <label>Base Insurance:</label>
                <p>RM <%= String.format("%.2f", insurance) %></p>

                <label>NCD Discount:</label>
                <p>RM <%= String.format("%.2f", discount) %></p>

                <label>After NCD:</label>
                <p>RM <%= String.format("%.2f", afterNCD) %></p>

                <label>SST (8%):</label>
                <p>RM <%= String.format("%.2f", sst) %></p>

                <label><strong>Final Insurance Amount:</strong></label>
                <p><strong>RM <%= String.format("%.2f", finalAmount) %></strong></p>

                <div class="button-group">
                    <button onclick="window.history.back()" class="btn btn-back">Back</button>
                </div>
            </div>
        </div>
    </body>
</html>
