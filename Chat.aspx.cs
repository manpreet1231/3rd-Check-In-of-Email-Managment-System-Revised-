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

public partial class Chat : System.Web.UI.Page
{
  //  Onlineds.Onlinemst_selectDataTable odt = new Onlineds.Onlinemst_selectDataTable();
  //  OnlinedsTableAdapters.Onlinemst_selectTableAdapter oadapter = new OnlinedsTableAdapters.Onlinemst_selectTableAdapter();

    online.Onlinemst_selectDataTable odt = new online.Onlinemst_selectDataTable();
    onlineTableAdapters.Onlinemst_selectTableAdapter oadapter = new onlineTableAdapters.Onlinemst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnenterchat_Click(object sender, EventArgs e)
    {
        odt = oadapter.selectonlineentry(Session["name"].ToString());

        if (odt.Rows.Count == 0)
        {

            int inst = oadapter.Insert(Session["name"].ToString());

        }
        Response.Redirect("Onlinechat.aspx");

    }
}
