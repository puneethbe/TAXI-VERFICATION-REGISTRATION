using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using Npgsql;

namespace HomePage
{
    public partial class inspectionForm : System.Web.UI.Page
    {
        public string providerName { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NpgsqlConnection con = new NpgsqlConnection(@"server=localhost;database=lmd20; port=5432; userid=postgres;password=sys123;");
            {
                con.Open();
                NpgsqlCommand comm = new NpgsqlCommand("insert into inspection values(@inspection_for,@firm_id,@ins_date,@ins_category,@ins_violation,@ins_observation)", con);
                comm.Parameters.AddWithValue("@inspection_for", DtIpRb.SelectedValue);
                comm.Parameters.AddWithValue("@firm_id", tbln.Text);
                comm.Parameters.AddWithValue("@ins_date", tbid.Text);
                comm.Parameters.AddWithValue("@ins_category", DtIpRb1.SelectedValue);
                comm.Parameters.AddWithValue("@ins_violation", DtIpRb2.SelectedValue);
                comm.Parameters.AddWithValue("@ins_observation", tbob.Text);
                comm.ExecuteNonQuery();
                DtIpRb.SelectedValue ="";
                DtIpRb1.SelectedValue = "";
                DtIpRb2.SelectedValue = "";
                tbln.Text = "";
                tbid.Text = "";
                tbob.Text = "";
                lblInfo.Text = "Registration Successfully";
            }

        }
    }
}