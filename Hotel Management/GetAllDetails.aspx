﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAllDetails.aspx.cs" Inherits="Hotel_Management.GetAllDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>All Medical Details</title>
    <style type="text/css">
        body {
            background-image: url('Images/Mpic6.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
        }
        
       
        .content {
            padding: 20px;
            max-width: 100%;
            margin: 0 auto;
        }
        
      
        .grid-container {
            overflow-x: auto;
        }

        .auto-style1 {
            width: 100%;
            max-width: 1000px; 
            margin: 0 auto;
        }

        .auto-style1 .aspNetHidden {
            display: none; 
        }

        
        .auto-style1 input[type="text"] {
            width: 100%;
            box-sizing: border-box;
            padding: 5px;
            margin: 5px 0;
        }

        
        h1 {
            color: white;
            text-align: center;
            font-size: 2em;
            margin-top: 20px;
        }

       
        @media (max-width: 768px) {
            .auto-style1 {
                width: 90%; 
                font-size: 14px;
            }

            .auto-style1 td,
            .auto-style1 th {
                padding: 8px; 
            }

            .auto-style1 .aspNetHidden {
                display: none;
            }

            .auto-style1 input[type="text"] {
                font-size: 14px;
            }

            .auto-style1 {
                overflow-x: scroll;
            }

            h1 {
                font-size: 1.5em; 
            }
        }

        @media (max-width: 480px) {
            .auto-style1 {
                width: 100%;
                font-size: 12px; 
            }

            h1 {
                font-size: 1.2em;
            }

            .grid-container {
                overflow-x: scroll;
            }

            .auto-style1 input[type="text"] {
                font-size: 12px;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <h1>All Medical Details</h1>

       
            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="MId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MId") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MedicineName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MedicineName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("MedicineName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cost">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Cost") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>

            <p>
                <asp:HyperLink ID="bcktowlcome" runat="server" Text="Back" NavigateUrl="~/Welcome.aspx" Target="_self" />
            </p>
        </div>
    </form>
</body>
</html>
