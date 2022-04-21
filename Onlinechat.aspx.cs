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

public partial class Onlinechat : System.Web.UI.Page
{
    online.Onlinemst_selectDataTable odt = new online.Onlinemst_selectDataTable();
    onlineTableAdapters.Onlinemst_selectTableAdapter oadapter = new onlineTableAdapters.Onlinemst_selectTableAdapter();

    chatxd .Chatmst_selectDataTable cdt = new chatxd.Chatmst_selectDataTable();
    chatxdTableAdapters.Chatmst_selectTableAdapter cadapter = new chatxdTableAdapters.Chatmst_selectTableAdapter();

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblname.Text = Session["name"].ToString();
            odt = oadapter.selectonlineuser(Session["name"].ToString());
            ListBox1.DataSource = odt;
            ListBox1.DataTextField = "Name";
            ListBox1.DataValueField = "O_ID";
            ListBox1.DataBind();
        }
         
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";

        if (ListBox1.SelectedItem == null)
        {
            lblmsg.Text = "Select User !!";
        }
        else
        {
            string msgg = Session["name"].ToString() + " TO " + ListBox1.SelectedItem.Text + " :: " + txtreply.Text + Environment.NewLine;
            int inst = cadapter.Insert(Session["name"].ToString(), ListBox1.SelectedItem.Text, msgg);
            txtreply.Text = "";
        }
    }
        
    protected void  txtreply_TextChanged(object sender, EventArgs e)
{

}
    protected void HOID_ValueChanged(object sender, EventArgs e)
    {

    }
protected void  btnlogout_Click(object sender, EventArgs e)
{
    //oadapter.(Session["name"].ToString());
    oadapter.Onlinemst_select_FirstDelete(Session["name"].ToString());
    Response.Redirect("Inbox.aspx");
}
}
        
        




  
     

