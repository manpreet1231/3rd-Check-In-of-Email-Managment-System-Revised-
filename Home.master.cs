using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Home : System.Web.UI.MasterPage

{
    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblwelcome.Text = "Hiii "+Session["name"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
       
    }
    protected void btnfind_Click(object sender, EventArgs e)
    {
        Session["serch"] = txtserch1.Text + "%";
        Response.Redirect("Inbox.aspx");
    }
    
}
