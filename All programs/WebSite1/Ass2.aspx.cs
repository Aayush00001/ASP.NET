using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Ass2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\ass.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string firstname = txtFirstName.Text;
        string middlename = txtMiddleName.Text;
        string lastname = txtLastName.Text;
        string course = ddlCourse.SelectedValue.ToString();
        string gender = rblGender.SelectedValue.ToString();
        string phonenumber = txtCountryCode.Text +""+ txtPhoneNumber.Text;
        string address = txtAddress.Text;
        string email = txtEmail.Text;
        string password = txtPassword.Text;

        con.Open();
        string qry = "INSERT INTO form2 (id,firstname, middlename, lastname, course, gender, phonenumber, address, email, password) " + "VALUES ("+id+",'" + firstname + "','" + middlename + "','" + lastname + "','" + course + "','" + gender + "','" + phonenumber + "','" + address + "','" + email + "','" + password + "')";

        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Inserted");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("Not inserted!!");
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string firstname = txtFirstName.Text;
        string middlename = txtMiddleName.Text;
        string lastname = txtLastName.Text;
        string course = ddlCourse.SelectedValue.ToString();
        string gender = rblGender.SelectedValue.ToString();
        string phonenumber = txtCountryCode.Text + txtPhoneNumber.Text;
        string address = txtAddress.Text;
        string email = txtEmail.Text;
        string password = txtPassword.Text;

        con.Open();
        string qry = "UPDATE form2 SET firstname='" + firstname + "', middlename='" + middlename + "', lastname='" + lastname + "', course='" + course + "', gender='" + gender + "', phonenumber='" + phonenumber + "', address='" + address + "', email='" + email + "', password='" + password + "' WHERE id=" + id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Updated");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("Not updated!!");
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;

        con.Open();
        string qry = "DELETE FROM form2 WHERE id=" + id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Deleted");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("Not deleted!!");
        }
        con.Close();
    }
}