<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="TotalProduct.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                <Columns>
                    <asp:BoundField DataField="ItemName" HeaderText="Product Name" />
                    <asp:BoundField DataField="ItemPrice" HeaderText="Product Price" ItemStyle-HorizontalAlign="Right" ItemStyle-CssClass="ItemPrice" />
                    <asp:TemplateField HeaderText="Qty">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQty" runat="server" Style="text-align:right" Width="50px" Text="0"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TotalAmount">
                        <ItemTemplate>
                            <asp:Label ID="lblTotalAmount" runat="server" Text="0"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            
            <br /><br />
            <asp:Label ID="lblGtotal" runat="server" Text="Grand Total: " style="font-weight:bold"></asp:Label>
            <asp:Label ID="lblTotalBilledAmount" runat="server" Text="0" style="font-weight:bold;background-color:greenyellow"></asp:Label>
        </div>
    </form>
</body>
</html>
