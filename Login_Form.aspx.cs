using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Npgsql;

namespace HomePage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstrg"].ToString());
        NpgsqlConnection connection = new NpgsqlConnection();
        NpgsqlCommand command = new NpgsqlCommand();
        NpgsqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HyperLink1.Visible = true;
            }
        }



        //void FillCapctha()
        //{

        //    try
        //    {
        //        txtCaptcha.Text = "";
        //        Random random = new Random();

        //        //string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        //        string combination = "0123456789";

        //        StringBuilder captcha = new StringBuilder();

        //        for (int i = 0; i < 5; i++)

        //            captcha.Append(combination[random.Next(combination.Length)]);

        //        Session["captcha"] = captcha.ToString();

        //        //ImgCaptcha.ImageUrl = "~/GenerateCaptcha.aspx";
        //        ImgCaptcha.ImageUrl = "~/GenerateCaptcha1.aspx?" + DateTime.Now.Ticks.ToString();

        //    }

        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        //protected void ImgbtnRefresh_Click(object sender, ImageClickEventArgs e)
        //{
        //    FillCapctha();
        //}

        protected void btndep_Click(object sender, EventArgs e)
        {

            if (HyperLink1.Visible == true)
            {
                HyperLink1.Visible = false;
            }
        }

        protected void btncitizen_Click(object sender, EventArgs e)
        {
            HyperLink1.Visible = true;
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            {
                if (!string.IsNullOrEmpty(txtUserName.Text))
                {
                    if (CheckUsername(txtUserName.Text.Trim()))

                    {
                        // lblStatus.Text = "user name already exists please try another name";
                        Response.Redirect("FirmRegistration_Form.aspx");
                    }
                    else
                    {
                        lblStatus.Text = "You are not Registered please click on New Registration";

                    }
                }
            }
        }


        public bool CheckUsername(string user_txt)
        {
            

            {
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["lmd"].ToString();
                connection.Open();
                using (NpgsqlCommand cmd = new NpgsqlCommand("select * from User_Registration1 where UserName = @UserID", connection))
                {
                   NpgsqlParameter param = new NpgsqlParameter();
                    param.ParameterName = "@UserID";
                    param.Value = user_txt;
                    cmd.Parameters.Add(param);
                    NpgsqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                        return true;
                    else
                        return false;
                }
            }
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{

        //    connection.Open();
        //    SqlCommand cmd = new SqlCommand("select * from user_registration1 where Email=@Email and Password=@Password");
        //    cmd.Parameters.AddWithValue("@Email", txtUserName.Text);
        //    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        Label.Text = "Login Sucess......!!";
        //        Response.Redirect("LoginPage.aspx");
        //    }
        //    else
        //    {
        //        Label.Visible = true;
        //        Label.Text = "UserId & Password Is not correct Try again..!!";
        //    }

        //    connection.Close();
        //}


    }
    }
