<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Hotel_Management.Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
   
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
    <style type="text/css">
        body {
            background-image: url('Images/Mpic3.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
        }

        .sidebar {
            width: 250px;
            padding: 20px;
            color: white;
            display: flex;
            flex-direction: column;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            justify-content: space-between;
        }

        .sidebar .user-info {
            display: flex;
            align-items: center;
            margin-top: 20px;
            justify-content: flex-start;
        }

        .sidebar .user-info i {
            font-size: 30px;
            margin-right: 10px;
        }

        .sidebar .user-info span {
            font-size: 18px;
        }

      
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin: 30px 10px;
            display: inline-flex;
            align-items: center;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }

        .navbar i {
            margin-right: 8px;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }
           
        }

        @media (max-width: 480px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
           
            <div class="user-info">
                <i class="fas fa-user-circle"></i>
                <span><asp:Label ID="lblUsername" runat="server"  ForeColor="White" /></span>&nbsp;&nbsp;  
                            
    <asp:Button ID="btnlogout" runat="server" Text="logout" Font-Bold="True" ForeColor="Red" OnClick="btnlogout_Click" />

            </div>
 
           
            <div class="navbar">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddNewStock.aspx" Target="_self">
                    <i class="fas fa-plus-circle"></i> Add New Stock
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GetAllDetails.aspx" Target="_self">
                    <i class="fas fa-capsules"></i> Medicine Stock
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/SearchProduct.aspx" Target="_self">
                    <i class="fas fa-search"></i> Search Medicine
                </asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
