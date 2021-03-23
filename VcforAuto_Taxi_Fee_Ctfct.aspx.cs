using Microsoft.Reporting.WebForms;
using System;
using Npgsql;
using System.Configuration;
using HomePage.datatable;

namespace HomePage
{
    public partial class VcforAuto_Taxi_Fee_Ctfct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //set Processing Mode of Report as Local  
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                //set path of the Local report  
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/report/VcforAuto_Taxi_Fee_Ctfct.rdlc");
                //creating object of DataSet dsEmployee and filling the DataSet using SQLDataAdapter  
                VcforAuto_Taxi_Fee_Ctfct dsatf = new VcforAuto_Taxi_Fee_Ctfct();
                NpgsqlConnection con = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["lmd"].ToString());
                con.Open();
                NpgsqlDataAdapter adapt = new NpgsqlDataAdapter("select  from auto_taxifee", con);
          //      adapt.Fill(adapt, "DataTable1");
                con.Close();
                //Providing DataSource for the Report  
           //     ReportDataSource rds = new ReportDataSource("VcforAuto_Taxi_Fee_Ctfct", dsatf.Tables[0]);
                ReportViewer1.LocalReport.DataSources.Clear();
                //Add ReportDataSource  
          //      ReportViewer1.LocalReport.DataSources.Add(rds);
            }

        }
    }
}