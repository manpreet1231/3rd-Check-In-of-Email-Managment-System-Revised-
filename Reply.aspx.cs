using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class reply123 : System.Web.UI.Page
{
    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblfrom.Text = Session["reply"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int inst = MAdapter.Insert(Session["email"].ToString(), lblfrom.Text, TextBox2.Text,TextBox1.Text, "", "", 0);

        TextBox2.Text="";
        TextBox1.Text="";
        lblreply.Text = lblfrom.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inbox.aspx");
    }
    protected void btnsentbox_Click(object sender, EventArgs e)
    {
        Response.Redirect("sent.aspx");
 
    }

}
