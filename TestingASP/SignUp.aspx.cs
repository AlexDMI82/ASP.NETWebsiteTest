using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestingASP
{
    public partial class Home : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //sign up btn
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            RegisterNewMember();
            
        }


        void RegisterNewMember()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO signup_tbl(first_name,last_name,pet_name,breed,email,password)values(@first_name,@last_name,@pet_name,@breed,@email,@password)", con);

                cmd.Parameters.AddWithValue("@first_name", FirstNameBox.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", LastNameBox.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_name", PetNameBox.Text.Trim());
                cmd.Parameters.AddWithValue("@breed", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@email", EmailBox.Text.Trim());
                cmd.Parameters.AddWithValue("@password", PasswordBox.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful!');</script>");
                //Response.Redirect("Home.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }

           
        }



    }
}