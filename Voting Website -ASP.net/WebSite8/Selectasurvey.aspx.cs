using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Selectasurvey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
        con.Open();



    }

    protected void goodservice_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect3"].ConnectionString);
        con.Open();
        string insert = "insert into Response (SurveyResponse,SurveyQuestion) values(@SurveyResponse,@SurveyQuestion)";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.Parameters.AddWithValue("@SurveyResponse",1 );
        cmd.Parameters.AddWithValue("@SurveyQuestion", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
       // Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect3"].ConnectionString);
        con.Open();
        string insert = "insert into Response (SurveyResponse,SurveyQuestion) values(@SurveyResponse,@SurveyQuestion)";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.Parameters.AddWithValue("@SurveyResponse", 2);
        cmd.Parameters.AddWithValue("@SurveyQuestion", DropDownList1.SelectedValue);
        
        cmd.ExecuteNonQuery();
        con.Close();
        //Response.Redirect("Default.aspx");


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect3"].ConnectionString);
        con.Open();
        string insert = "insert into Response (SurveyResponse,SurveyQuestion) values(@SurveyResponse,@SurveyQuestion)";
        SqlCommand cmd2 = new SqlCommand(insert, con);
        cmd2.Parameters.AddWithValue("@SurveyResponse", 3);
        cmd2.Parameters.AddWithValue("@SurveyQuestion", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        con.Close();
      //  Response.Redirect("Default.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("Select a Survey", ""));
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}