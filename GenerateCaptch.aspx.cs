using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;

using System.Drawing;

using System.Drawing.Drawing2D;

using System.Drawing.Imaging;
using System.IO;
using System.Diagnostics;
//using BMSAddressChange;
using System.Text;


namespace HomePage
{
    public partial class GenerateCaptcha1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();

                int height = 30;

                int width = 80;

                Bitmap bmp = new Bitmap(width, height);



                RectangleF rectf = new RectangleF(10, 5, 0, 0);



                Graphics g = Graphics.FromImage(bmp);

                g.Clear(Color.White);

                g.SmoothingMode = SmoothingMode.AntiAlias;

                g.InterpolationMode = InterpolationMode.HighQualityBicubic;

                g.PixelOffsetMode = PixelOffsetMode.HighQuality;

                g.DrawString(Session["captcha"].ToString(), new Font("Thaoma", 12, FontStyle.Italic), Brushes.Green, rectf);

                g.DrawRectangle(new Pen(Color.Blue), 1, 1, width - 2, height - 2);

                g.Flush();

                Response.ContentType = "images/captcha@2x1.png";

                bmp.Save(Response.OutputStream, ImageFormat.Jpeg);

                g.Dispose();

                bmp.Dispose();
            }
            catch (Exception ex)
            {
                string m = ex.StackTrace + ex.Message + ex.StackTrace + ex.Message;
            }
        }

        public void Page_Error(object sender, EventArgs e)
        {
            Exception objErr = Server.GetLastError().GetBaseException();
            if (objErr != null)
            {

                string err = "<b>Error Caught in Page_Error event</b><hr><br>" + System.DateTime.Now.ToString() +
                       "<br><b>Error in: </b>" + Request.Url.ToString() +
                       "<br><b>Error Message: </b>" + objErr.Message.ToString() +
                       "<br><b>Stack Trace:</b><br>" +
                                 objErr.StackTrace.ToString();
                // Response.Write(err.ToString());

                string PhysicalPath = Server.MapPath("~/Log/");
                string FileName = PhysicalPath + "UExCasteLog.txt";
                StreamWriter File1 = new StreamWriter(FileName, true);
                string str = Session["LoginID"].ToString() + "|" + err;
                File1.WriteLine(str);
                File1.Close();
                Server.ClearError();
                Response.Redirect("GlobalErrorPage.aspx?ErrorMsg=Error. Please report this error to admin. Error Logged", false);
            }
        }
    }

}
