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

public partial class msg : System.Web.UI.Page
{
    chatxd.Chatmst_selectDataTable CDT = new chatxd.Chatmst_selectDataTable();
    chatxdTableAdapters.Chatmst_selectTableAdapter CAdapter = new chatxdTableAdapters.Chatmst_selectTableAdapter();
    //ChatdsTableAdapters.Chatmst_selectTableAdapter CAdapter = new ChatdsTableAdapters.Chatmst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        CDT = CAdapter.selectmsgdisplay(Session["name"].ToString());
        for(int i=0;i<CDT.Rows.Count;i++)
        {
        TextBox1.Text = TextBox1.Text + Environment.NewLine + CDT.Rows[i]["Message"].ToString();
        }
      //  TextBox1.Text = "";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}
