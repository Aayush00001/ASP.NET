using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Ass3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\ASUS\Documents\ass.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string firstname = txtFirstName.Text;
        string lastname = txtLastName.Text;
        string dob = ddlDay.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue;
        string email = txtEmail.Text;
        string phonenumber = txtMobileNumber.Text;
        string gender = rbtnMale.Checked ? "Male" : "Female"; // Assuming radio button names
        string address = txtAddress.Text;
        string city = txtCity.Text;
        string pincode = txtPinCode.Text;
        string state = txtState.Text;
        string country = txtCountry.Text;
        string classX = txtClassXBoard.Text + "," + txtClassXPercentage.Text + "," + txtClassXYrOfPassing.Text;
        string classXII = txtClassXIIBoard.Text + "," + txtClassXIIPercentage.Text + "," + txtClassXIIYrOfPassing.Text;
        string graduation = txtGraduationBoard.Text + "," + txtGraduationPercentage.Text + "," + txtGraduationYrOfPassing.Text;
        string masters = txtMastersBoard.Text + "," + txtMastersPercentage.Text + "," + txtMastersYrOfPassing.Text;


        List<string> hobbiesList = new List<string>();
        if (chkDrawing.Checked)
            hobbiesList.Add("Drawing");
        if (chkSinging.Checked)
            hobbiesList.Add("Singing");
        if (chkDancing.Checked)
            hobbiesList.Add("Dancing");
        if (chkSketching.Checked)
            hobbiesList.Add("Sketching");
        if (chkOther.Checked && !string.IsNullOrEmpty(txtOtherHobby.Text))
            hobbiesList.Add(txtOtherHobby.Text);
        string hobbies = string.Join(",", hobbiesList);


        string course = "";
        if (rbtnBCA.Checked)
            course = "BCA";
        else if (rbtnBCom.Checked)
            course = "B.Com";
        else if (rbtnBSc.Checked)
            course = "B.Sc";
        else if (rbtnBA.Checked)
            course = "B.A";


        con.Open();
        string qry = "INSERT INTO abc (id,firstname, lastname, dob, email, phonenumber, gender, address, city, pincode, state, country, hobbies, course, classX, classXII, graduation, masters) " + "VALUES (" + id + ",'" + firstname + "', '" + lastname + "', '" + dob + "', '" + email + "', '" + phonenumber + "', '" + gender + "', '" + address + "', '" + city + "', '" + pincode + "', '" + state + "', '" + country + "', '" + hobbies + "', '" + course + "', '" + classX + "', '" + classXII + "', '" + graduation + "', '" + masters + "')";
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Inserted!!!");
            GridView1.DataBind();
        }
        else
            Response.Write("!!!Not Inserted");
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string id = TextBox1.Text; // Assuming the ID of the record to update is entered in TextBox1
        string firstname = txtFirstName.Text;
        string lastname = txtLastName.Text;
        string dob = ddlDay.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue;
        string email = txtEmail.Text;
        string phonenumber = txtMobileNumber.Text;
        string gender = rbtnMale.Checked ? "Male" : "Female"; // Assuming radio button names
        string address = txtAddress.Text;
        string city = txtCity.Text;
        string pincode = txtPinCode.Text;
        string state = txtState.Text;
        string country = txtCountry.Text;
        string classX = txtClassXBoard.Text + "," + txtClassXPercentage.Text + "," + txtClassXYrOfPassing.Text;
        string classXII = txtClassXIIBoard.Text + "," + txtClassXIIPercentage.Text + "," + txtClassXIIYrOfPassing.Text;
        string graduation = txtGraduationBoard.Text + "," + txtGraduationPercentage.Text + "," + txtGraduationYrOfPassing.Text;
        string masters = txtMastersBoard.Text + "," + txtMastersPercentage.Text + "," + txtMastersYrOfPassing.Text;


        List<string> hobbiesList = new List<string>();
        if (chkDrawing.Checked)
            hobbiesList.Add("Drawing");
        if (chkSinging.Checked)
            hobbiesList.Add("Singing");
        if (chkDancing.Checked)
            hobbiesList.Add("Dancing");
        if (chkSketching.Checked)
            hobbiesList.Add("Sketching");
        if (chkOther.Checked && !string.IsNullOrEmpty(txtOtherHobby.Text))
            hobbiesList.Add(txtOtherHobby.Text);
        string hobbies = string.Join(",", hobbiesList);


        string course = "";
        if (rbtnBCA.Checked)
            course = "BCA";
        else if (rbtnBCom.Checked)
            course = "B.Com";
        else if (rbtnBSc.Checked)
            course = "B.Sc";
        else if (rbtnBA.Checked)
            course = "B.A";


        con.Open();
        string qry = "UPDATE abc SET firstname='" + firstname + "', lastname='" + lastname + "', dob='" + dob + "', email='" + email + "', phonenumber='" + phonenumber + "', gender='" + gender + "', address='" + address + "', city='" + city + "', pincode='" + pincode + "', state='" + state + "', country='" + country + "', hobbies='" + hobbies + "', course='" + course + "', classX='" + classX + "', classXII='" + classXII + "', graduation='" + graduation + "', masters='" + masters + "' WHERE id=" + id;
        SqlCommand cmd = new SqlCommand(qry, con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("Updated!!!");
            GridView1.DataBind();
        }
        else
            Response.Write("!!!Not Updated");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        con.Open();
        string qry = "DELETE FROM abc WHERE id=" + id;
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