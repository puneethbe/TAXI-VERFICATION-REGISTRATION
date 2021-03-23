using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class User_Registration : System.Web.UI.Page
    {
        NpgsqlConnection connection = new NpgsqlConnection();
        NpgsqlCommand command = new NpgsqlCommand();
        NpgsqlDataReader reader;
        string currentdate;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                FillCapctha();
            }
        }

           
            void FillCapctha()
            {
                try
                {
                    Random random = new Random();
                    string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                    StringBuilder captcha = new StringBuilder();
                    for (int i = 0; i < 6; i++)
                        captcha.Append(combination[random.Next(combination.Length)]);
                    Session["captcha"] = captcha.ToString();
                    imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
                }
                catch
                {

                    throw;
                }
            }
            protected  Boolean validation()
            {
                if (Session["captcha"].ToString() != txtcaptch.Text)
                {
                    Response.Write("Invalid Captcha Code");
                    return false;
                    //requirefieldcaptch.ErrorMessage = "invalid";
                    //return false;
                }
                //if (txtuser.Text == "")
                //{
                //    Response.Write("Enter valid username");
                //    return false;
                //}
                if (txtfname.Text == "")
                {
                    Response.Write("Enter valid first name");
                    return false;
                }
                if (txtnumber.Text.Length > 10 && txtnumber.Text == "")
                {
                    Response.Write("Enter minimum 10 digits ");
                    return false;
                }
                if (txtuserid.Text == "")
                {
                    Response.Write("Enter valid UserId");
                    return false;
                }
                else
                {
                    return true;
                }


            }
            protected void btnsbmt_Click(object sender, EventArgs e)
            {
                try
                {

                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["lmd"].ToString();
                    command.Connection = connection;
                    command.CommandText = "SELECT Userid FROM User_Registration1 WHERE Userid=@uid";
                    command.CommandType = CommandType.Text;
                    command.Parameters.AddWithValue("@uid", txtuserid.Text);
                    connection.Open();
                    NpgsqlDataAdapter da = new NpgsqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        clear_all();
                        lblshow.Text = "UserID already exists ";
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('UserID already exists')", true);
                    }
                    else
                    {
                        currentdate = GetCurrentDate();
                        command.Dispose();
                        command.CommandText = "Insert into User_Registration1 values(@Fname,@Lname,@mob,@uid,@upass,@regdt)";
                        command.CommandType = CommandType.Text;

                        command.Parameters.Add(new NpgsqlParameter("@Fname", txtfname.Text));
                        command.Parameters.Add(new NpgsqlParameter("@Lname", txtlname.Text));
                        command.Parameters.Add(new NpgsqlParameter("@mob", txtnumber.Text));
                        command.Parameters.Add(new NpgsqlParameter("@uid", txtuserid.Text));
                        command.Parameters.Add(new NpgsqlParameter("@upass", txtpass.Text));
                        command.Parameters.Add(new NpgsqlParameter("@regdt", currentdate.Trim()));
                        command.ExecuteNonQuery();
                        command.Dispose();
                        connection.Close();
                        clear_all();
                        lblshow.Text = "Data Has been Saved";
                    }
                }
                catch (Exception ex)
                {

                    command.Dispose();
                    connection.Close();

                }
            }
            protected void clear_all()
            {

                txtuserid.Text = "";
                txtcaptch.Text = "";
                txtfname.Text = "";
                txtlname.Text = "";
                txtpass.Text = "";
                txtnumber.Text = "";
                //txtnumber.Text = "";
                /// txtpass.Text = "";
            }

            public string GetCurrentDate()
            {
                //connection.ConnectionString = ConfigurationManager.ConnectionStrings["lmd"].ToString();
                //command.Connection = connection;
                if (reader != null && !reader.IsClosed) reader.Close();
                string comquery = "SELECT TO_CHAR(CURRENT_DATE,'dd/mm/yyyy')";
                command.CommandText = comquery;
                //connection.Open();
                string server_date = Convert.ToString(command.ExecuteScalar());
                // connection.Close();
                return server_date;
            }

        }


    }

