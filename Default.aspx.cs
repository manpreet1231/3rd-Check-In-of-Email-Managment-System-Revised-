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

public partial class email_Default : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";

        UDT = UAdapter.SelectForLOGIN(txtuname.Text, txtupass.Text);

        if (UDT.Rows.Count > 0)
        {
            Session["uid"] = UDT.Rows[0]["uid"].ToString();
            Session["email"] = UDT.Rows[0]["email"].ToString();
            Session["password"] = UDT.Rows[0]["password"].ToString();
            Session["name"] = UDT.Rows[0]["fname"].ToString();
            Session["img"] = UDT.Rows[0]["image"].ToString();
            Response.Redirect("Inbox.aspx");

        }
        else
        {
            lblerror.Text = "Invalid email or password";
        
        }
    }
    protected void txtuname_TextChanged(object sender, EventArgs e)
    {

    }
}
