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

namespace HomePage
{
    public partial class VcforAuto_Taxi_fee : System.Web.UI.Page
    {
        private int qj;
        private short qjvcamount;

        protected void Page_Load(object sender, EventArgs e)
        {

   
            
        }

       

       

       
        protected void btntsdrjt_Click(object sender, EventArgs e)
        {
            //tested rejected

        }

        protected void btntsd_Click(object sender, EventArgs e)
        {
            //preview
           // Response.Redirect(Page, GetType(), "Report", "window.open('VcAuto_Taxi_Certificate.aspx','new','toolbars=yes,scrollbars=yes,resizable=yes');", true);

        }

        private void RegisterClientScriptBlock(Page page, Type type, string v1, string v2, bool v3)
        {
            throw new NotImplementedException();
        }

        protected void btngnrtrcpt_Click(object sender, EventArgs e)
        {
            //generate receipt
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
            NpgsqlCommand comm = new NpgsqlCommand("insert into auto_taxifee values(@reciptno,@vc_quaterly_jamped,@vc_amount,@no_qrtr_jamped,@qrtr_jpd_amount,@total_amount)", conn);
            comm.Parameters.AddWithValue("@reciptno", DateTime.Now.ToString("yyyyMMddHHmmss"));
            comm.Parameters.AddWithValue("@vc_quaterly_jamped", btnrdo.SelectedValue);
            comm.Parameters.AddWithValue("@vc_amount", Convert.ToInt32(txtvcamt.Text));
            comm.Parameters.AddWithValue("@no_qrtr_jamped", Convert.ToInt32(txtnqj.Text));
            comm.Parameters.AddWithValue("@qrtr_jpd_amount", Convert.ToInt32(txtqja.Text));
            comm.Parameters.AddWithValue("@total_amount", Convert.ToInt32(txtttlamt.Text));
            conn.Open();
            comm.ExecuteNonQuery();
           Response.Redirect("VcforAuto_Taxi_FeeCertification.aspx");
            conn.Close();
        }

        
   /*     protected void btnreport_Click(object sender, EventArgs e)
        {
            try
            {
                string b1;
                string path;
                Warning[] warnings;
                string[] streamids;
                string mimeType;
                string encoding;
                string filenameExtension;
                firmrept fr = new firmrept();
                DataSet ds = new DataSet();
                string fid = lblfirmid.Text;
                ds = fr.gettanklorryData(fid);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    path = "<DeviceInfo>" + " <OutputFormat>PDF</OutputFormat>" + " <PageWidth>3.370079in</PageWidth>" + " <PageHeight>2.1251969in</PageHeight>" + " <MarginTop>0in</MarginTop>" + " <MarginLeft>0in</MarginLeft>" + " <MarginRight>0in</MarginRight>" + " <HumanReadablePDF>True</HumanReadablePDF>" + " <MarginBottom>0in</MarginBottom>" + "</DeviceInfo>";
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/VcforAuto_Taxi_Cirtificate.rdlc");

                    ReportDataSource datasource = new ReportDataSource("", ds.Tables[0]);
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(datasource);
                    byte[] bytes = ReportViewer1.LocalReport.Render("PDF", null, out mimeType, out encoding, out filenameExtension, out streamids, out warnings);
                    Session["Certificate"] = bytes;
                    string myScript = String.Format("window.open('{0}','_blank')", ResolveUrl("bbmp_cert.aspx"));
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "MyScript", myScript, true);
                }
                else
                {
                    string msg = "No records Found";
                    ClientScript.RegisterStartupScript(typeof(string), "PopupScript2", "<script>alert('" + msg + "')</script>");
                    return;
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        */

        protected void Txtnqj_TextChanged(object sender, EventArgs e)
        {
            try
            {
              Int64  Vcamount = Convert.ToInt16(txtvcamt.Text); 


                 qj =Convert.ToInt32(txtnqj.Text);

                

                qjvcamount = Convert.ToInt16((Vcamount / 2) * qj);

                txtqja.Text = qjvcamount.ToString();

                txtttlamt.Text = (Vcamount + qjvcamount).ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}