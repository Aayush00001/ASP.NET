<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ass3.aspx.cs" Inherits="Ass3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Student Registration Form</title>
    <style type="text/css">
        h3 {
            font-family: Calibri;
            font-size: 22pt;
            font-style: normal;
            font-weight: bold;
            color: SlateBlue;
            text-align: center;
            text-decoration: underline
        }

        table {
            font-family: Calibri;
            color: white;
            font-size: 11pt;
            font-style: normal;
            text-align:;
            background-color: SlateBlue;
            border-collapse: collapse;
            border: 2px solid navy
        }

        table.inner {
            border: 0px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3>STUDENT REGISTRATION FORM</h3>
        <div>
            <asp:Table ID="tblStudentRegistration" runat="server" Width="50%" CellPadding="10" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>FIRST NAME</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtFirstName" runat="server" MaxLength="30"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>LAST NAME</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtLastName" runat="server" MaxLength="30"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
    <asp:TableCell>DATE OF BIRTH</asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="ddlDay" runat="server">
            <asp:ListItem Text="Day:" Value="-1"></asp:ListItem>
            <asp:ListItem Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem Text="Month:" Value="-1"></asp:ListItem>
             <asp:ListItem Text="January" Value="January"></asp:ListItem>
             <asp:ListItem Text="February" Value="February"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlYear" runat="server">
            <asp:ListItem Text="Year:" Value="-1"></asp:ListItem>
            <asp:ListItem Text="2022" Value="2023"></asp:ListItem>
            <asp:ListItem Text="2023" Value="2024"></asp:ListItem>
        </asp:DropDownList>
    </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>EMAIL ID</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtEmail" runat="server" MaxLength="100"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>MOBILE NUMBER</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtMobileNumber" runat="server" MaxLength="10"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>GENDER</asp:TableCell>
            <asp:TableCell>
                <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="a" />
                <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="a" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>ADDRESS</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="4" Columns="30"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>CITY</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCity" runat="server" MaxLength="30"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>PIN CODE</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPinCode" runat="server" MaxLength="6"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>STATE</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtState" runat="server" MaxLength="30"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>COUNTRY</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCountry" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>HOBBIES</asp:TableCell>
        <asp:TableCell>
        Drawing <asp:CheckBox ID="chkDrawing" runat="server" />
        Singing <asp:CheckBox ID="chkSinging" runat="server" />
        Dancing <asp:CheckBox ID="chkDancing" runat="server" />
        Sketching <asp:CheckBox ID="chkSketching" runat="server" />
        Others <asp:CheckBox ID="chkOther" runat="server" />
        <asp:TextBox ID="txtOtherHobby" runat="server"/>
        </asp:TableCell></asp:TableRow><asp:TableRow>
    <asp:TableCell>QUALIFICATION</asp:TableCell><asp:TableCell>
        <table>
            <tr>
                <td align="center"><b>Sl.No.</b></td>
                <td align="center"><b>Examination</b></td>
                <td align="center"><b>Board</b></td>
                <td align="center"><b>Percentage</b></td>
                <td align="center"><b>Year of Passing</b></td>
            </tr>
            <tr>
                <td>1</td>
                <td>Class X</td>
                <td><asp:TextBox ID="txtClassXBoard" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtClassXPercentage" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtClassXYrOfPassing" runat="server" MaxLength="30"></asp:TextBox></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Class XII</td>
                <td><asp:TextBox ID="txtClassXIIBoard" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtClassXIIPercentage" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtClassXIIYrOfPassing" runat="server" MaxLength="30"></asp:TextBox></td>
            </tr>
            <tr>
                <td>3</td>
                <td>Graduation</td>
                <td><asp:TextBox ID="txtGraduationBoard" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtGraduationPercentage" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtGraduationYrOfPassing" runat="server" MaxLength="30"></asp:TextBox></td>
            </tr>
            <tr>
                <td>4</td>
                <td>Masters</td>
                <td><asp:TextBox ID="txtMastersBoard" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtMastersPercentage" runat="server" MaxLength="30"></asp:TextBox></td>
                <td><asp:TextBox ID="txtMastersYrOfPassing" runat="server" MaxLength="30"></asp:TextBox></td>
            </tr>
        </table>
    </asp:TableCell></asp:TableRow><asp:TableRow>
    <asp:TableCell>COURSES APPLIED FOR</asp:TableCell><asp:TableCell>
        BCA <asp:RadioButton ID="rbtnBCA" runat="server" GroupName="courseGroup" />
        B.Com <asp:RadioButton ID="rbtnBCom" runat="server" GroupName="courseGroup" />
        B.Sc <asp:RadioButton ID="rbtnBSc" runat="server" GroupName="courseGroup" />
        B.A <asp:RadioButton ID="rbtnBA" runat="server" GroupName="courseGroup" />
    </asp:TableCell></asp:TableRow><asp:TableRow>
    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
        
    </asp:TableCell></asp:TableRow></asp:Table><br /><br />


<center>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="btnSubmit" 
                    runat="server" Text="Submit" BackColor="#990000" ForeColor="White" 
                    onclick="btnSubmit_Click1" /><br /><br />
        <asp:Button ID="Button1" 
                    runat="server" Text="update" BackColor="#990000" ForeColor="White" 
                    onclick="Button1_Click" /><br /><br />
        <asp:Button ID="Button2" 
                    runat="server" Text="delete" BackColor="#990000" ForeColor="White" 
                    onclick="Button2_Click" /><br /><br />
        <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="#990000" ForeColor="White" /><br /><br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1"><Columns><asp:BoundField DataField="id" 
                            HeaderText="id" SortExpression="id" /><asp:BoundField DataField="firstname" 
                            HeaderText="firstname" SortExpression="firstname" /><asp:BoundField 
                            DataField="lastname" HeaderText="lastname" SortExpression="lastname" /><asp:BoundField 
                            DataField="dob" HeaderText="dob" SortExpression="dob" /><asp:BoundField 
                            DataField="email" HeaderText="email" SortExpression="email" /><asp:BoundField 
                            DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" /><asp:BoundField 
                            DataField="gender" HeaderText="gender" SortExpression="gender" /><asp:BoundField 
                            DataField="address" HeaderText="address" SortExpression="address" /><asp:BoundField 
                            DataField="city" HeaderText="city" SortExpression="city" /><asp:BoundField 
                            DataField="pincode" HeaderText="pincode" SortExpression="pincode" /><asp:BoundField 
                            DataField="state" HeaderText="state" SortExpression="state" /><asp:BoundField 
                            DataField="country" HeaderText="country" SortExpression="country" /><asp:BoundField 
                            DataField="hobbies" HeaderText="hobbies" SortExpression="hobbies" /><asp:BoundField 
                            DataField="course" HeaderText="course" SortExpression="course" /><asp:BoundField 
                            DataField="classX" HeaderText="classX" SortExpression="classX" /><asp:BoundField 
                            DataField="classXII" HeaderText="classXII" SortExpression="classXII" /><asp:BoundField 
                            DataField="graduation" HeaderText="graduation" SortExpression="graduation" /><asp:BoundField 
                            DataField="masters" HeaderText="masters" SortExpression="masters" /></Columns></asp:GridView><br /><br />
<asp:SqlDataSource 
                    ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:assConnectionString %>" 
                    SelectCommand="SELECT * FROM [abc]"></asp:SqlDataSource>                  
</center>


</div>
</form>
</body>
</html>
