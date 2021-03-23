using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Npgsql;

using System.IO;

namespace HomePage
{
    public partial class VcforAuto_Taxi : System.Web.UI.Page
    {
        private int qj;
        private short qjvcamount;

        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
            if (!IsPostBack)
            {

                LoadRequestPurpose();
                LoadAuto_Type();
                LoadFare_Meter_Type();
                LoadFare_Meter_Maker();
                LoadRepair();
                LoadPulse_Rate();
                ClearFeilds();

            }
        }



        protected void Txtfrn_TextChanged(object sender, EventArgs e)
        {
            bool temp = false;
            NpgsqlConnection con = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
            con.Open();
            if (txtfrn.Text != "")
            {
                NpgsqlCommand cmd = new NpgsqlCommand("SELECT firm_name,firm_addr FROM firm_registration WHERE firm_id=@firm_id", con);
                cmd.Parameters.AddWithValue("@firm_id", Convert.ToString(txtfrn.Text));
                NpgsqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    lblfn.Text = da.GetValue(0).ToString();
                    lblfa.Text = da.GetValue(1).ToString();
                    temp = true;
                }
                if (temp == false)

                    con.Close();
            }



        }

        protected void Txtatr_TextChanged(object sender, EventArgs e)
        {
            bool temp = false;
            NpgsqlConnection con = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
            con.Open();
            if (txtatr.Text != "")
            {
                NpgsqlCommand cmd = new NpgsqlCommand("SELECT permit_no,owner_name,owner_address FROM  mst_auto_regno WHERE at_reg_no=@at_reg_no", con);
                cmd.Parameters.AddWithValue("@at_reg_no", Convert.ToString(txtatr.Text));
                NpgsqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    lblpn.Text = da.GetValue(0).ToString();
                    lblnm.Text = da.GetValue(1).ToString();
                    lblad.Text = da.GetValue(2).ToString();
                    temp = true;
                }
                if (temp == false)
                    lblinfo1.Text = "not found";
                con.Close();
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            var dt = DateTime.Now;
            txtrcptdt.Text = "" + Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;

        }

        private void LoadRequestPurpose()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from Request_purpose", conn);
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["autotaxi_id"] = 0;
                    dr["autotaxi_desc"] = "Please Select the Request Purpose";
                    dt.Rows.InsertAt(dr, 0);
                    ddlReqpps.Items.Clear();
                    ddlReqpps.ClearSelection();
                    ddlReqpps.DataSource = dt;
                    ddlReqpps.DataTextField = "autotaxi_desc";
                    ddlReqpps.DataValueField = "autotaxi_id";
                    ddlReqpps.DataBind();
                    ddlReqpps.SelectedValue = null;
                    ddlReqpps.SelectedIndex = 0;
                }
                adapter.Dispose();

                conn.Close();

            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void LoadAuto_Type()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from mst_vehicletype", conn);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["vehicleid"] = 0;
                    dr["vehiclename"] = "Please Swelect the Auto_Type";
                    dt.Rows.InsertAt(dr, 0);
                    ddlauto_type.Items.Clear();
                    ddlauto_type.ClearSelection();
                    ddlauto_type.DataSource = dt;
                    ddlauto_type.DataTextField = "vehiclename";
                    ddlauto_type.DataValueField = "vehicleid";
                    ddlauto_type.DataBind();
                    ddlauto_type.SelectedValue = null;
                    ddlauto_type.SelectedIndex = 0;
                }
                adapter.Dispose();
                conn.Close();

            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void LoadFare_Meter_Type()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from mst_meter_type", conn);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["meter_id"] = 0;
                    dr["meter_name"] = "Please Select the Fare Meter Type";
                    dt.Rows.InsertAt(dr, 0);
                    ddlfare_mtr_type.Items.Clear();
                    ddlfare_mtr_type.ClearSelection();
                    ddlfare_mtr_type.DataSource = dt;
                    ddlfare_mtr_type.DataTextField = "meter_name";
                    ddlfare_mtr_type.DataValueField = "meter_id";
                    ddlfare_mtr_type.DataBind();
                    ddlfare_mtr_type.SelectedValue = null;
                    ddlfare_mtr_type.SelectedIndex = 0;

                }
                adapter.Dispose();
                conn.Close();
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void LoadFare_Meter_Maker()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from  mst_metermake", conn);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["metermake_id"] = 0;
                    dr["metermake_name"] = "Please Select the  Meter Maker";
                    dt.Rows.InsertAt(dr, 0);
                    ddlfare_mtr_mkr.Items.Clear();
                    ddlfare_mtr_mkr.ClearSelection();
                    ddlfare_mtr_mkr.DataSource = dt;
                    ddlfare_mtr_mkr.DataTextField = "metermake_name";
                    ddlfare_mtr_mkr.DataValueField = "metermake_id";
                    ddlfare_mtr_mkr.DataBind();
                    ddlfare_mtr_mkr.SelectedValue = null;
                    ddlfare_mtr_mkr.SelectedIndex = 0;
                }
                adapter.Dispose();
                conn.Close();

            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void LoadRepair()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from mst_repairer", conn);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["repairer_id"] = 0;
                    dr["repairer_name"] = "Please Select the  Repairer";
                    dt.Rows.InsertAt(dr, 0);
                    ddlrepair.Items.Clear();
                    ddlrepair.ClearSelection();
                    ddlrepair.DataSource = dt;
                    ddlrepair.DataTextField = "repairer_name";
                    ddlrepair.DataValueField = "repairer_id";
                    ddlrepair.DataBind();
                    ddlrepair.SelectedValue = null;
                    ddlrepair.SelectedIndex = 0;
                }
                adapter.Dispose();
                conn.Close();
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void LoadPulse_Rate()
        {
            DataTable dt = new DataTable();
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ConnectionString);

            try
            {
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter("Select * from mst_pulserate", conn);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.NewRow();
                    dr["pulseid"] = 0;
                    dr["pulserate"] = "Please Select the  Pulse_Rate";
                    dt.Rows.InsertAt(dr, 0);
                    ddlplsrt.Items.Clear();
                    ddlplsrt.ClearSelection();
                    ddlplsrt.DataSource = dt;
                    ddlplsrt.DataTextField = "pulserate";
                    ddlplsrt.DataValueField = "pulseid";
                    ddlplsrt.DataBind();
                    ddlplsrt.SelectedValue = null;
                    ddlplsrt.SelectedIndex = 0;
                }
                adapter.Dispose();
                conn.Close();
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected Boolean Validation()
        {
            if (ddlReqpps.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(btnsv, this.GetType(), "alert", "<script>alert('Please Select Item')</script>", false);
                return false;
            }
            if (ddlauto_type.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(btnsv, this.GetType(), "alert", "<script>alert('Please Select Item')</script>", false);
                return false;
            }
            if (ddlfare_mtr_mkr.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(btnsv, this.GetType(), "alert", "<script>alert('Please Select Item')</script>", false);
                return false;
            }

            if (ddlfare_mtr_mkr.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(btnsv, this.GetType(), "alert", "<script>alert('Please Select Item')</script>", false);
                return false;
            }


            if (txtmobile_no.Text.Length > 10 && txtmobile_no.Text == "")
            {
                Response.Write("Enter minimum 10 digits ");
                return false;
            }


            else
            {
                return true;
            }

        }

        protected void btnsv_Click(object sender, EventArgs e)
        {
            try
            {
                // VC id check and  Genertion 
                Vcincrement();

                NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                //string vc_increment_no;
                //// string qry = @"select CONCAT(firm_id||lpad(cast(vc_increment_no as text),2,'0')) as vc_autotaxi_id from firm_registration where firm_id='" + txtfrn.Text + "'";
                //NpgsqlCommand cmd = new NpgsqlCommand("select CONCAT(firm_id || lpad(cast(vc_increment_no as text), 2, '0')) as vc_autotaxi_id from firm_registration where firm_id = '" + txtfrn.Text + "'");
                //conn.Open();
                //NpgsqlDataReader da = cmd.ExecuteReader();
                //vc_increment_no = da.GetValue(0).ToString();
                //Session[vc_increment_no] = vc_increment_no;

                if (Session["vc_increment_no"].ToString() == "")
                {
                    Session["vc_increment_no"] = Session["vc_increment_no"].ToString() + "01";
                }
                else
                {
                    Session["vc_increment_no1"] = Convert.ToInt16(Session["vc_increment_no"]) + 1;
                    var a1 = txtfrn.Text.ToString();
                    var a2 = "0" + Convert.ToString(Session["vc_increment_no1"]);
                    Session["vc_increment_no"] = a1 + a2;
                }

                try
                {
                    NpgsqlConnection conn1 = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                    NpgsqlCommand comm = new NpgsqlCommand("insert into  vc_for_autotaxi values(@vcid,@firm_id,@at_reg_no,@request_purpose,@auto_type,@fare_meter_type,@fare_meter_maker,@fare_meter_number,@pulse_rate,@repair,@receipt_date,@repairer_recept_no,@fee,@mobile_number,@seal_number,@tariff)", conn1);
                    comm.Parameters.AddWithValue("@vcid", Convert.ToString(Session["vc_increment_no"].ToString()));
                    comm.Parameters.AddWithValue("@firm_id", Convert.ToString(txtfrn.Text));
                    comm.Parameters.AddWithValue("@at_reg_no", Convert.ToString(txtatr.Text));
                    comm.Parameters.AddWithValue("@request_purpose", ddlReqpps.SelectedIndex);
                    comm.Parameters.AddWithValue("@auto_type", ddlauto_type.SelectedIndex);
                    comm.Parameters.AddWithValue("@fare_meter_type", ddlfare_mtr_type.SelectedIndex);
                    comm.Parameters.AddWithValue("@fare_meter_maker", ddlfare_mtr_mkr.SelectedIndex);
                    comm.Parameters.AddWithValue("@fare_meter_number", txtfmn.Text);
                    comm.Parameters.AddWithValue("@pulse_rate", ddlplsrt.SelectedIndex);
                    comm.Parameters.AddWithValue("@repair", ddlrepair.SelectedIndex);
                    comm.Parameters.AddWithValue("@receipt_date", txtrcptdt.Text);
                    comm.Parameters.AddWithValue("@repairer_recept_no", txtrrn.Text);
                    comm.Parameters.AddWithValue("@fee", txtfe.Text.ToString());
                    comm.Parameters.AddWithValue("@mobile_number", txtmobile_no.Text);
                    comm.Parameters.AddWithValue("@seal_number", txtsn.Text);
                    comm.Parameters.AddWithValue("@tariff", txttf.Text);
                    comm.Parameters.AddWithValue("@vc_increment_no", 11);

                    conn1.Open();
                    comm.ExecuteNonQuery();
                    updateRig();
                    updateMain();
                    doPayment();
                    //Response.Redirect("VcforAuto_Taxi_fee.aspx");
                    conn1.Close();
                }
                catch (Exception eex2)
                {
                    throw eex2;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // Update Main table 
        private void updateMain()
        {
            try
            {
                //generate receipt
                NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                NpgsqlCommand comm = new NpgsqlCommand("update vc_main_application set vc_increment_no=@vc_increment_no where firm_id='" + txtfrn.Text + "'", conn);
                comm.Parameters.AddWithValue("@vc_increment_no", txtfrn.Text);
                conn.Open();
                comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        //Update Register table 
        private void updateRig()
        {
            try
            {
                //generate receipt
                NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                NpgsqlCommand comm = new NpgsqlCommand("update firm_registration set vc_increment_no=@vc_increment_no where firm_id='" + txtfrn.Text + "' ", conn);
                comm.Parameters.AddWithValue("@vc_increment_no", txtfrn.Text);
                conn.Open();
                comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception)
            {

            }
        }

        // Do the Payment 
        private void doPayment()
        {
            try
            {
                //generate receipt
                NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                NpgsqlCommand comm = new NpgsqlCommand("insert into auto_taxifee values(@reciptno, @vc_application_id, @firm_id, @vc_quaterly_jamped, @vc_amount,@no_qrtr_jamped,@qrtr_jpd_amount,@total_amount)", conn);
                comm.Parameters.AddWithValue("@reciptno", DateTime.Now.ToString("yyyyMMddHHmmss"));
                comm.Parameters.AddWithValue("@vc_application_id", Session["vc_increment_no"].ToString());
                comm.Parameters.AddWithValue("@firm_id", txtfrn.Text);
                comm.Parameters.AddWithValue("@vc_quaterly_jamped", btnrdo.SelectedValue);
                comm.Parameters.AddWithValue("@vc_amount", Convert.ToInt32(txtvcamt.Text));
                comm.Parameters.AddWithValue("@no_qrtr_jamped", Convert.ToInt32(txtnqj.Text));
                comm.Parameters.AddWithValue("@qrtr_jpd_amount", Convert.ToInt32(txtqja.Text));
                comm.Parameters.AddWithValue("@total_amount", Convert.ToInt32(txtttlamt.Text));
                conn.Open();
                comm.ExecuteNonQuery();
                //Response.Redirect("VcforAuto_Taxi_FeeCertification.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        // get the ID 
        public void Vcincrement()
        {

            NpgsqlConnection con = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
            NpgsqlCommand cmds = new NpgsqlCommand("select count(vc_increment_no) as vc_increment_noCount, vc_increment_no from firm_registration where firm_id = '" + txtfrn.Text + "' group by  vc_increment_no order by vc_increment_no desc", con);
            NpgsqlDataAdapter daM = new NpgsqlDataAdapter(cmds);
            DataSet ds1 = new DataSet();
            daM.Fill(ds1);

            Session["vc_increment_no"] = ds1.Tables[0].Rows[0]["vc_increment_noCount"].ToString();
            Session["vc_latestNumber"] = ds1.Tables[0].Rows[0]["vc_increment_no"].ToString();



            //// 
            //int a1;
            //NpgsqlConnection conin = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());

            //NpgsqlCommand cmdin = new NpgsqlCommand("select count(*)  as vc_increment_no from firm_registration where firm_id = '" + txtfrn.Text + "'", conin);
            //conin.Open();

            //NpgsqlDataReader rdr1 = cmdin.ExecuteReader();
            //DataTable dt = new DataTable();

            //rdr1.Read();

            //a1 = Convert.ToInt32(rdr1[0].ToString());
            //conin.Close();
            //int num = Convert.ToInt32(a1) + 1;



            ////updation
            //NpgsqlConnection conup = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());

            //conup.Open();
            //NpgsqlCommand cmdup = new NpgsqlCommand("Update firm_registration SET vc_increment_no=num+1 where firm_id='" + txtfrn.Text + "'", conup);

            //cmdup.ExecuteNonQuery();
            //conup.Close();

        }

        protected void Txtnqj_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Int64 Vcamount = Convert.ToInt16(txtvcamt.Text);


                qj = Convert.ToInt32(txtnqj.Text);



                qjvcamount = Convert.ToInt16((Vcamount / 2) * qj);

                txtqja.Text = qjvcamount.ToString();

                txtttlamt.Text = (Vcamount + qjvcamount).ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public void ShowAlert(String header, String message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), header, "alert('" + message + "');", true);
        }


        public void ClearFeilds()
        {
            txtfmn.Text = "";

            txtrrn.Text = "";
            txtfe.Text = "";
            txtmobile_no.Text = "";
            txtsn.Text = "";
            txttf.Text = "";
            ddlReqpps.DataSource = null;


            ddlauto_type.DataSource = null;

            ddlfare_mtr_type.DataSource = null;

            ddlfare_mtr_mkr.DataSource = null;

            ddlrepair.DataSource = null;

            ddlplsrt.DataSource = null;

        }

        protected void Btnext_Click(object sender, EventArgs e)
        {
            ClearFeilds();
        }

      
    }
}