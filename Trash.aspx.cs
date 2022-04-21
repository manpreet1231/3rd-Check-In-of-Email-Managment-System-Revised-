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

public partial class Trash : System.Web.UI.Page
{
    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            MDT = MAdapter.sELECTfor_trace(Session["email"].ToString());
            Gridtrash.DataSource = MDT;
            Gridtrash.DataBind();
        }
        if (Gridtrash.Rows.Count == 0)
        {

            litrash.Visible = false;
            linktrashdelete.Visible = false;
        }
        else
        {

            litrash.Visible = true;
            linktrashdelete.Visible = true;
        }
    }
    protected void groid(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void Gridtrash_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Gridtrash_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int de = MAdapter.Delete(Convert.ToInt32(Gridtrash.DataKeys[e.RowIndex].Value));

        MDT = MAdapter.sELECTfor_trace(Session["email"].ToString());
        Gridtrash.DataSource = MDT;
        Gridtrash.DataBind();
    }
    protected void linkmark_Click1(object sender, EventArgs e)
    {


    }
    protected void linkmarktrash(object sender, EventArgs e)
    {

    }
    protected void linktrashmark_Click(object sender, EventArgs e)
    {

    }

    protected void Gridtrash_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // MAdapter.update_inboxmail(Convert.ToInt32(Gridtrash.DataKeys[e.RowIndex].Value));
        //MDT = MAdapter.SelectFORINBOX(Session["email"].ToString());
        /////   Gridtrash.DataSource = MDT;
        // Gridtrash.DataBind();

        if (e.CommandName == "res")
        {
            MAdapter.update_inboxmail(Convert.ToInt32(e.CommandArgument.ToString()));
            MDT = MAdapter.sELECTfor_trace(Session["email"].ToString());
            Gridtrash.DataSource = MDT;
            Gridtrash.DataBind();
        }


    }
    protected void linktrashdelete_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < Gridtrash.Rows.Count; i++)
        {
            CheckBox chkk = Gridtrash.Rows[i].FindControl("chk") as CheckBox;
            if (chkk.Checked == true)
            {
                // MAdapter.MAILMST_SELECT_DO_TRASH(Convert.ToInt32(GridView1.DataKeys[i]["ID"].ToString()));
                int del = MAdapter.Delete(Convert.ToInt32(Gridtrash.DataKeys[i]["ID"].ToString()));

            }
        }
        MDT = MAdapter.sELECTfor_trace(Session["email"].ToString());
        Gridtrash.DataSource = MDT;
        Gridtrash.DataBind();
    }
    protected void litrash_Click(object sender, EventArgs e)
    {
        if (litrash.Text == "Mark All")
        {
            for (int i = 0; i < Gridtrash.Rows.Count; i++)
            {
                CheckBox chkk = Gridtrash.Rows[i].FindControl("chk") as CheckBox;
                chkk.Checked = true;
            }
            litrash.Text = "UnMark";
        }
        else if (litrash.Text == "UnMark")
        {
            for (int i = 0; i < Gridtrash.Rows.Count; i++)
            {
                CheckBox chkk = Gridtrash.Rows[i].FindControl("chk") as CheckBox;
                chkk.Checked = false;
            }
            litrash.Text = "Mark All";

        }
    }
    protected void linkrest_Click(object sender, EventArgs e)
    {
        
    }
}


