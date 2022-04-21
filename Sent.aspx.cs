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

public partial class Sent : System.Web.UI.Page
{
    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            MDT = MAdapter.Mail_sent(Session["email"].ToString());
            GridView1.DataSource = MDT;
            GridView1.DataBind();
        }
        
        if (GridView1.Rows.Count == 0)
        {

            lidelete.Visible = false;
            linkmark.Visible = false;
        }
        else
        {

            lidelete.Visible = true;
            linkmark.Visible = true;
        }

    }
    protected void Gridsent_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Gridsent_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // GridView1.PageIndex=e.
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "read")
        {

            Session["read"] = e.CommandArgument.ToString();
            Response.Redirect("openmailsent.aspx");
        }



    }
    protected void linkmark_Click(object sender, EventArgs e)
    {
        if (linkmark.Text == "Mark All")
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkk = GridView1.Rows[i].FindControl("chk") as CheckBox;
                chkk.Checked = true;
            }
            linkmark.Text = "UnMark";
        }
        else if (linkmark.Text == "UnMark")
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkk = GridView1.Rows[i].FindControl("chk") as CheckBox;
                chkk.Checked = false;
            }
            linkmark.Text = "Mark All";
        }

    }
    protected void lidelete_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chkk = GridView1.Rows[i].FindControl("chk") as CheckBox;
            if (chkk.Checked == true)
            {
                // MAdapter.MAILMST_SELECT_DO_TRASH(Convert.ToInt32(GridView1.DataKeys[i]["ID"].ToString()));
                int del = MAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[i]["ID"].ToString()));

            }
        }
        MDT = MAdapter.Mail_sent(Session["email"].ToString());
        GridView1.DataSource = MDT;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int de = MAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));

        MDT = MAdapter.Mail_sent(Session["email"].ToString());
        GridView1.DataSource = MDT;
        GridView1.DataBind();
 
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        MDT = MAdapter.Mail_sent(Session["email"].ToString());
        GridView1.DataSource = MDT;
        GridView1.DataBind();
    }
}
