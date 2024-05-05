<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form2.aspx.cs" Inherits="form2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border:20px solid black;height:auto;width:auto;background-color:#f5f5dc">
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />

    <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />

    <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><br /><br />

    <asp:Label ID="Label4" runat="server" Text="CITY"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>c1</asp:ListItem>
        <asp:ListItem>c2</asp:ListItem>
        <asp:ListItem>c3</asp:ListItem>
    </asp:DropDownList><br /><br />

    <asp:Label ID="Label5" runat="server" Text="GENDER"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton1" runat="server" text="male" GroupName="a" 
            AutoPostBack="True"/>
    <asp:RadioButton ID="RadioButton2" runat="server" text="female" GroupName="a" 
            AutoPostBack="True"/><br /><br />

    <asp:Label ID="Label6" runat="server" Text="CLIST"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ListBox ID="ListBox1" runat="server">
        <asp:ListItem>l1</asp:ListItem>
        <asp:ListItem>l2</asp:ListItem>
        <asp:ListItem>l3</asp:ListItem>
    </asp:ListBox><br /><br />

    <asp:Label ID="Label7" runat="server" Text="HOBBY"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox1" runat="server" Text="read" />
    <asp:CheckBox ID="CheckBox2" runat="server" Text="write"/>
    <asp:CheckBox ID="CheckBox3" runat="server" Text="rw"/><br /><br />

    <asp:Label ID="Label8" runat="server" Text="PHONE NUMBER"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />


    <asp:Button ID="Button1" runat="server" Text="INSERT" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="UPDATE" onclick="Button2_Click" />&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="DELTE" onclick="Button3_Click" />&nbsp;&nbsp;&nbsp;<br /><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conConnectionString %>" 
        SelectCommand="SELECT * FROM [std]"></asp:SqlDataSource><br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="clist" HeaderText="clist" SortExpression="clist" />
            <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
                SortExpression="phonenumber" />
            <asp:BoundField DataField="hob" HeaderText="hob" SortExpression="hob" />
        </Columns>
    </asp:GridView>
<br />
<br />
</div>
</asp:Content>

