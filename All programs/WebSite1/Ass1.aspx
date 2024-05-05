<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ass1.aspx.cs" Inherits="Ass1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div style="border:20px solid black; height:auto; width:auto;  background-color:#F5F5DC;">
<br />
<br />

        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />


        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />


        <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />


        <asp:Label ID="Label4" runat="server" Text="Select City"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Select City" Value=""></asp:ListItem>
            <asp:ListItem>city1</asp:ListItem>
            <asp:ListItem>city2</asp:ListItem>
            <asp:ListItem>city3</asp:ListItem>
        </asp:DropDownList><br /><br />


        <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" 
        GroupName="a" /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" 
        GroupName="a" /><br /><br />


        <asp:Label ID="Label6" runat="server" Text="Gmail"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />


        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#000066" 
        ForeColor="White" onclick="Button1_Click" /><br /><br />

        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="Button2" runat="server" Text="update" BackColor="#000066" 
        ForeColor="White" onclick="Button2_Click" /><br /><br />

        <asp:Button ID="Button3" runat="server" Text="delete" BackColor="#000066" 
        ForeColor="White" onclick="Button3_Click" /><br /><br />

        <asp:Label ID="Label7" runat="server" Text=""></asp:Label><br /><br />

        <asp:GridView ID="GridView1" runat="server"></asp:GridView><br /><br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<br />
<br />
</div>
</form>
</body>
</html>
