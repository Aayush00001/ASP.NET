using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\connected.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String name = TextBox2.Text;
        String pass = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String clist = ListBox1.SelectedValue;
        String phone = TextBox4.Text + "" + TextBox5.Text;
        String gender=RadioButton1.Checked ? "Male" : "Female";
        List<string> hobby = new List<string>();
        if(CheckBox1.Checked)
            hobby.Add("write");
        if(CheckBox2.Checked)
            hobby.Add("read");
        if(CheckBox3.Checked)
            hobby.Add("wr");
        string ho = string.Join(",", hobby);

        String qry = "insert into data1 (id,name,pass,city,clist,phone,gender,ho)values("+id+",'"+name+"','"+pass+"','"+city+"','"+clist+"','"+phone+"','"+gender+"','"+ho+"')";
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("datainserted!!");
            GridView1.DataBind();
        }
        else
            Response.Write("data not inserted");
        con.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String name = TextBox2.Text;
        String pass = TextBox3.Text;
        String city = DropDownList1.SelectedValue;
        String clist = ListBox1.SelectedValue;
        String phone = TextBox4.Text + "" + TextBox5.Text;
        String gender = RadioButton1.Checked ? "Male" : "Female";
        List<string> hobby = new List<string>();
        if (CheckBox1.Checked)
            hobby.Add("write");
        if (CheckBox2.Checked)
            hobby.Add("read");
        if (CheckBox3.Checked)
            hobby.Add("wr");
        string ho = string.Join(",", hobby);
        String qry = "update data1 set name='"+name+"',pass='"+pass+"',city='"+city+"',clist='"+clist+"',phone='"+phone+"',gender='"+gender+"',ho='"+ho+"'where id="+id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("updated!!");
            GridView1.DataBind();
        }
        else
            Response.Write("data not updated");
        con.Close();
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = TextBox1.Text;
        String qry = "delete from data1 where id="+id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("del!!");
            GridView1.DataBind();
        }
        else
            Response.Write("data not del!!!");
        con.Close();
    }
}