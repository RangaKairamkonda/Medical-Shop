<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddnewStock.aspx.cs" Inherits="Hotel_Management.AddnewStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Stock</title>
    <style type="text/css">
        body {
            background-image: url('Images/Mpic4.jpg');
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
            text-align: center;
            background-color: rgba(0, 0, 0, 0.3);
            color: white;
        }

        .container input {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .container button {
            width: 80%;
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

      
        .grid-container {
            padding: 30px;
            border-radius: 8px;
            width: 100%;
            max-width: 800px; 
            text-align: center;
            background-color:black; /*rgba(0, 0, 0, 0.3);*/
            color: white;
            margin-top: 20px;
        }

        .auto-style1 {
            width: 100%;
            margin-top: 20px;
            text-align: center;
        }

        .auto-style1 th,
        .auto-style1 td {
            padding: 10px;
            text-align: center;
        }

       
        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            .container input,
            .container button {
                width: 100%;
                font-size: 14px;
            }

            .grid-container {
                width: 90%;
            }
        }

        @media screen and (max-width: 480px) {
            .container {
                width: 100%;
                padding: 15px;
            }

            .container input,
            .container button {
                width: 100%;
                font-size: 12px;
            }

            .grid-container {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Add New Medicine Stock</h2>
            <asp:TextBox ID="txtmedicinename" runat="server" placeholder="Enter Medicine Name: Dolo" />
            <asp:TextBox ID="txtquantity" runat="server" placeholder="Enter Quantity: 2" />
            <asp:TextBox ID="txtCost" runat="server" placeholder="Enter Cost: 10" />
            <asp:Button ID="btnaddstock" runat="server" Text="Add Stock" OnClick="btnaddstock_Click" />
            <p>
            <asp:HyperLink ID="redwel" runat="server" Text="Back " Font-Bold="True" NavigateUrl="~/Welcome.aspx" Target="_self" />
            </p>
        </div>

       
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Medicine Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("MedicineName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cost">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
