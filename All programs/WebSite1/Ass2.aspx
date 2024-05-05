<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ass2.aspx.cs" Inherits="Ass2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<div style="border:20px solid black; height:auto; width:auto;  background-color:#87CEEB;">
<br />
<br />
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Id:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div><br />
        <div>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblMiddleName" runat="server" Text="Middle Name:"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblCourse" runat="server" Text="Course:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCourse" runat="server">
                <asp:ListItem Text="Course" Value=""></asp:ListItem>
                <asp:ListItem Text="Cou1" Value="Cou1"></asp:ListItem>
                <asp:ListItem Text="Cou1" Value="Cou1"></asp:ListItem>
                <asp:ListItem Text="Cou1" Value="Cou1"></asp:ListItem>
                <asp:ListItem Text="Cou1" Value="Cou1"></asp:ListItem>
            </asp:DropDownList>
        </div><br />


        <div>
            <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label><br />
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:RadioButtonList>
        </div><br />


        <div>
            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCountryCode" runat="server" Width="42px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </div><br />


         <div>
            <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div><br />


        <div>
            <asp:Label ID="lblRePassword" runat="server" Text="Re-Type Pass:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox>
        </div><br />


        <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#000066" 
            ForeColor="White" onclick="btnSubmit_Click" />
 


<br />
<br />
</div>
<br />
<div style="border:20px solid black; height:auto; width:auto;  background-color:#87CEEB;">
<br />
<br />

    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#000066" 
        ForeColor="White" onclick="Button1_Click" /><br /><br />
    <asp:Button ID="Button2" runat="server" Text="Delete" BackColor="#000066" 
        ForeColor="White" onclick="Button2_Click" /><br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="middlename" HeaderText="middlename" 
                SortExpression="middlename" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="course" HeaderText="course" 
                SortExpression="course" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
                SortExpression="phonenumber" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
        </Columns>
    </asp:GridView><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:assConnectionString %>" 
        SelectCommand="SELECT * FROM [form2]"></asp:SqlDataSource>
<br />
<br />
</div>
   </form>
</body>
</html>