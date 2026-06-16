<%-- 
    Document   : processBMI
    Created on : Apr 22, 2026, 11:04:53 PM
    Author     : wpy92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process BMI</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <% 
            // Retrieve and Convert values
            String weightString = request.getParameter("weight");
            String heightString = request.getParameter("height");
            
            double bmi = 0;
            String category= "";
            
            // Validation: Ensure input is numeric and height is not zero
            try {
                if (weightString !=null && heightString !=null) {
                    double weight = Double.parseDouble(weightString);
                    double height = Double.parseDouble(heightString);
                    
                    //Check for height must not be zero
                    if (height > 0) {
                        // Calculate BMI
                        bmi = weight / (height * height);

                        // Determine Category
                        if (bmi < 18.5) {
                            category = "Underweight";
                        }

                        else if (bmi >= 18.5 && bmi <= 25) {
                            category = "Normal";
                        }

                        else {
                            category = "Overweight";
                        }  
                    }
                    
                    else {
                        category = "Invalid: Height cannot be zero";
                    }
                } 
            }
            
            catch (NumberFormatException e) {
                // Validation: Input must be numeric
                category = "Invalid: Please enter numeric values only";
            }
        %>
        
        <jsp:forward page="resultBMI.jsp">
            <jsp:param name="bmiValue" value="<%= String.valueOf(bmi) %>" />
            <jsp:param name="bmiCategory" value="<%= category %>" />
        </jsp:forward>
    </body>
</html>
