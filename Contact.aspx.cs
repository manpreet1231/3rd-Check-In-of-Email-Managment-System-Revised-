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

public partial class Contact : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    DS_Contact.Contactmst_selectDataTable CDT = new DS_Contact.Contactmst_selectDataTable();
    DS_ContactTableAdapters.Contactmst_selectTableAdapter CAdapter = new DS_ContactTableAdapters.Contactmst_selectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            UDT = UAdapter.selectforDisplay(Convert.ToInt32(Session["uid"].ToString()), Session["email"].ToString());
            chkfrnd.DataSource = UDT;
            chkfrnd.DataTextField = "Email";
            chkfrnd.DataValueField = "UID";
            chkfrnd.DataBind();

            CDT = CAdapter.selectbyemail(Session["email"].ToString());
            GvFrind.DataSource = CDT;
            GvFrind.DataBind();

        }

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        lbladd.Text = "";
        lblmsg.Text = "";
        UDT = UAdapter.Seelctearch(Session["email"].ToString(),txtsearch.Text + "%");
        chkfrnd.DataSource = UDT;
        chkfrnd.DataTextField = "Email";
        chkfrnd.DataValueField = "UID";
        chkfrnd.DataBind();
        lblmsg.Text = UDT.Rows.Count + " - Record Found.";
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        lbladd.ForeColor = System.Drawing.Color.Blue;
        lbladd.Text = "";
        lblmsg.Text = "";
        for(int i=0; i<chkfrnd.Items.Count; i++)
        {

            if (chkfrnd.Items[i].Selected == true)
            {
                int ist = CAdapter.Insert(Session["email"].ToString(), chkfrnd.Items[i].Text, System.DateTime.Now.Date);
                lbladd.Text = "Contact Added Successfully!!'";
            }
        }

        CDT = CAdapter.selectbyemail(Session["email"].ToString());
        GvFrind.DataSource = CDT;
        GvFrind.DataBind();

        UDT = UAdapter.selectforDisplay(Convert.ToInt32(Session["uid"].ToString()), Session["email"].ToString());
        chkfrnd.DataSource = UDT;
        chkfrnd.DataTextField = "Email";
        chkfrnd.DataValueField = "UID";
        chkfrnd.DataBind();

      
        
    }
    protected void GvFrind_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GvFrind_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int de = CAdapter.Delete(Convert.ToInt32(GvFrind.DataKeys[e.RowIndex].Value));

        CDT = CAdapter.selectbyemail(Session["email"].ToString());
        GvFrind.DataSource = CDT;
        GvFrind.DataBind();

        UDT = UAdapter.selectforDisplay(Convert.ToInt32(Session["uid"].ToString()), Session["email"].ToString());
        chkfrnd.DataSource = UDT;
        chkfrnd.DataTextField = "Email";
        chkfrnd.DataValueField = "UID";
        chkfrnd.DataBind();

        lbladd.Text = "Contact Removed Successfully !!";
        lbladd.ForeColor = System.Drawing.Color.Red;
    }
    protected void chkfrnd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
