<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="Hotel_Management.SearchProduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SearchProduct</title>
    <style type="text/css">
        /* General body styling */
        body {
            background-image: url('Images/Mpic5.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
        }

       
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            padding: 20px;
            margin-top:100px;
            box-sizing: border-box;
        }

       
        .container input {
            width: 100%;
            max-width: 400px;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

       
        .container button {
            width: 100%;
            max-width: 400px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #45a049;
        }
        .container p{
           text-align:center;
        }

        
        @media screen and (max-width: 768px) {
            .container {
                padding: 15px;
            }

            .container input, .container button {
                width: 100%;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:TextBox ID="txtproductname" runat="server" placeholder="Enter ProductName" OnTextChanged="txtproductname_TextChanged" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <asp:TextBox ID="txtCost" runat="server" placeholder="Cost"/>
            <asp:TextBox ID="TxtQunatity" runat="server" placeholder="Availability" />
            <p>
                <asp:HyperLink ID="bckto" runat="server" Text="Back" Font-Bold="True" NavigateUrl="~/Welcome.aspx" Target="_self" />
            </p>
        </div>
    </form>
</body>
</html>
