<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hotel_Management.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical Shop</title>
    <style>
        body {
            background-image: url('Images/MPic1.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed; 
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding-top: 60px; 
        }

        .navbar {
            position: fixed; 
            top: 0;
            left: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8); 
            display: flex;
            justify-content: center;
            gap: 20px;
            padding: 15px 0;
            z-index: 1000;
        }

        .navbar a {
            font-weight: bold;
            color: black;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: rgba(0, 0, 0, 0.6);
            color: white;
        }

       
        @media (max-width: 768px) {
            .navbar {
                padding: 10px 0;
            }

            .navbar a {
                padding: 8px 16px;
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .navbar a {
                font-size: 12px;
                padding: 6px 12px;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
      
        <div class="navbar">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" Font-Bold="False" Target="_self">Home</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Register.aspx" Font-Bold="False" Target="_self">Register</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx" Font-Bold="False" Target="_self">Login</asp:HyperLink>
        </div>
        <div>
            <h1 style="text-align: center; color: black;">Welcome to Vishnu Teja MedicalShop</h1>
        </div>
    </form>
</body>
</html>
