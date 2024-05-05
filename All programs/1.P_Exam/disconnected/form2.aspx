<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form2.aspx.cs" Inherits="form2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border:20px solid black;height:auto;width:auto;background-color:#f5f5dc">
<br />
<br />
    <asp:Button ID="Button1" runat="server" Text="i" onclick="Button1_Click" /><br /><br />
    <asp:Button ID="Button2" runat="server" Text="u" onclick="Button2_Click" /><br /><br />
    <asp:Button ID="Button3" runat="server" Text="d" onclick="Button3_Click" /><asp:GridView
        ID="GridView1" runat="server">
    </asp:GridView>
    <asp:RadioButton ID="RadioButton1" runat="server" /><asp:RadioButton ID="RadioButton2"
        runat="server" />
<br />
<br />
</div>
</asp:Content>

