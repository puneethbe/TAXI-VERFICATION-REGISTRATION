using Microsoft.Reporting.WebForms;
using System;
using Npgsql;
using System.Configuration;
using HomePage.datatable;

namespace HomePage
{
    public partial class VcAuto_Taxi_Certificate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //set Processing Mode of Report as Local  
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                //set path of the Local report  
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/report/VcforAuto_Taxi_Cirtificate.rdlc");
                //creating object of DataSet dsEmployee and filling the DataSet using SQLDataAdapter  
               VcAuto_Taxi_Cirtificate dsemp = new VcAuto_Taxi_Cirtificate();
                NpgsqlConnection con = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                con.Open();
               NpgsqlDataAdapter adapt = new NpgsqlDataAdapter("select * from vc_for_autotaxi", con);
                adapt.Fill(dsemp, "DataTable1");
                con.Close();
                //Providing DataSource for the Report  
                ReportDataSource rds = new ReportDataSource("VcAuto_Taxi_Cirtificate", dsemp.Tables[0]);
                ReportViewer1.LocalReport.DataSources.Clear();
                //Add ReportDataSource  
                ReportViewer1.LocalReport.DataSources.Add(rds);
            }
        }
    }
}