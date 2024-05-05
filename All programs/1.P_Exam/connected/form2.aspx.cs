using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\con.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String name = TextBox2.Text;
        String password = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String gender = RadioButton1.Checked ? "male" : "feamle";
        String clist = ListBox1.SelectedValue;
        String phonenumber = TextBox4.Text + "" + TextBox5.Text;
        String date = DropDownList1.SelectedValue + "/" + DropDownList1.SelectedValue + "/" + DropDownList1.SelectedValue;
        List<string> hobbylist = new List<string>();
        if (CheckBox1.Checked)
            hobbylist.Add("write");
        if(CheckBox2.Checked)
            hobbylist.Add("read");
        if(CheckBox3.Checked)
            hobbylist.Add("wr");
        String hob = String.Join(",",hobbylist);


        String qry = "insert into std(id,name,password,city,gender,clist,phonenumber,hob)values("+id+",'"+name+"','"+password+"','"+city+"','"+gender+"','"+clist+"','"+phonenumber+"','"+hob+"')";
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("insert");
            GridView1.DataBind();
        }
        else
            Response.Write("not in");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String name = TextBox2.Text;
        String password = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String gender = RadioButton1.Checked ? "male" : "female";
        String clist = ListBox1.SelectedValue;
        String phonenumber = TextBox4.Text + "" + TextBox5.Text;
        List<string> hobbylist = new List<string>();
        if (CheckBox1.Checked)
            hobbylist.Add("write");
        if (CheckBox2.Checked)
            hobbylist.Add("read");
        if (CheckBox3.Checked)
            hobbylist.Add("wr");
        String hob=String.Join(",",hobbylist);


        String qry = "update std set name='"+name+"',password='"+password+"',city='"+city+"',gender='"+gender+"',clist='"+clist+"',phonenumber='"+phonenumber+"',hob='"+hob+"'where id="+id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("updated");
            GridView1.DataBind();
        }
        else
            Response.Write("not up");
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String qry = "delete from std where id="+id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("deleted");
            GridView1.DataBind();
        }
        else
            Response.Write("not del");
        con.Close();
    }
}