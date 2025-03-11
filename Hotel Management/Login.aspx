<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hotel_Management.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        body {
            background-image: url('Images/Mpic2.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

       .container {
           
            padding: 30px;
            border-radius: 8px;
            width: 100%;
            max-width: 500px;
            text-align: Center;
            
        }

        .container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .container button {
            width: 50%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #45a049;
        }

        .container a {
            color: #fff;
            text-decoration: none;
            font-size: 14px;
        }

        .container a:hover {
            text-decoration: underline;
        }

        /* Media Queries for responsiveness */
        @media (max-width: 768px) {
            .container {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            .container input,
            .container button {
                font-size: 14px;
            }
        }
         .validator {
     display: block;
     color: red;
     font-size: 12px;
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 style="color: black;">Login</h2>
          
            <asp:TextBox ID="txtusername" runat="server" placeholder="Enter username" />
              <asp:RequiredFieldValidator 
      ID="RequiredFieldValidator3" 
      runat="server" 
      ControlToValidate="txtusername" 
      CssClass="validator" 
      ErrorMessage="Username is required" 
      ForeColor="Red" />
          
            
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" placeholder="Enter password" />
              <asp:RequiredFieldValidator 
      ID="RequiredFieldValidator1" 
      runat="server" 
      ControlToValidate="txtpwd" 
      CssClass="validator" 
      ErrorMessage="Password is mandatory" 
      ForeColor="Red" />
            
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            
            <p>
                <asp:HyperLink ID="Register" runat="server" Text="New User ? Register" ForeColor="Black" NavigateUrl="~/Register.aspx" Target="_self" />
            </p>
        </div>
    </form>
</body>
</html>
