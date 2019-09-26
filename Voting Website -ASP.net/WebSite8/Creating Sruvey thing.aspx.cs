using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
            con.Open();
            string insert = "insert into SurveyInformation (SurveyName,SurveyAuthor) values(@SurveyName,@SurveyAuthor)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@SurveyName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@SurveyAuthor", TextBox2.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }

    }
}