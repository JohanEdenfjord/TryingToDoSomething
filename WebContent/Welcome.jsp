<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link type="text/css"  ></link> <link rel="stylesheet" type="text/css" href="css\styles.css">
<meta charset="ISO-8859-1">
<title>Willkomme</title>
</head>
<body>
	
	<% 
		String purpose = request.getParameter("purpose");	
		String name = request.getParameter("uname");
		String age = request.getParameter("age");
			
		String reverse = "";        
        
        for(int i = name.length() - 1; i >= 0; i--)
        {
            reverse = reverse + name.charAt(i);
        }
		
        out.print("<h1>" + name + " " + reverse + "</h1>");
		out.print("<br><br><br><br>");
        
        try{
		int newAge = Integer.parseInt(age);
		
		if(newAge < 0){
        	out.print("<p>oh nooo... you are an impossible person. </p>");
        }else if(newAge >= 0 && newAge <= 12){
        	out.print("<p>hello there, you should be at home </p>");
        }else if(newAge > 13 && newAge <=19){
        	out.print("Are you sure you are ok to be here.. Did you ask your parents?");
        }else if(newAge > 110){
        	out.print("<p>Arent you dead already?</p>");
        }else{
        	out.print("Welcome to do " + "<strong><i><p>" +  purpose + "</p></i></strong>" + " as much as you want!");
        }
        
        
		}catch(NumberFormatException e){
			out.print("<p>well.. your age should be a number. haha!</p>");
		}
		
        
	%>
</body>
</html>