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

public partial class openmailsent : System.Web.UI.Page
{
    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MDT = MAdapter.SelectBYID(Convert.ToInt32(Session["read"].ToString()));
        lblfrom.Text = MDT.Rows[0]["Toemail"].ToString();
        lblsubject.Text = MDT.Rows[0]["subject"].ToString();
        TextBox1.Text = MDT.Rows[0]["message"].ToString();
        lbldate.Text = MDT.Rows[0]["entrydate"].ToString();
        lnkatt1.Text = "Download";
        lnkatt2.Text = "Download";

        if (MDT.Rows[0]["Attachment1"].ToString() == "")
        {
            lnkatt1.Text = "Empty";
        }
        if (MDT.Rows[0]["attachment2"].ToString() == "")
        {
            lnkatt2.Text = "Empty";


        }
    }


    protected void lnkatt1_Click(object sender, EventArgs e)
    {
        if (lnkatt1.Text != "Empty")
        {
            Response.Redirect(MDT.Rows[0]["Attachment1"].ToString());
        }

    }
    protected void lnkatt2_Click(object sender, EventArgs e)
    {
        if (lnkatt2.Text != "Empty")
        {
            Response.Redirect(MDT.Rows[0]["Attachment2"].ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["reply"] = lblfrom.Text;
        Response.Redirect("Reply.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sent.aspx");
    }
}
    

