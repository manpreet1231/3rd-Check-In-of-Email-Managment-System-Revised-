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
using System.Net.Mail;

public partial class Compose : System.Web.UI.Page
{
    DS_Contact.Contactmst_selectDataTable CDT = new DS_Contact.Contactmst_selectDataTable();
    DS_ContactTableAdapters.Contactmst_selectTableAdapter CAdapter = new DS_ContactTableAdapters.Contactmst_selectTableAdapter();

    DS_Mail.MAILMST_SELECTDataTable MDT = new DS_Mail.MAILMST_SELECTDataTable();
    DS_MailTableAdapters.MAILMST_SELECTTableAdapter MAdapter = new DS_MailTableAdapters.MAILMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        
       // MultiView1.ActiveViewIndex = -1;

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
       
            MultiView1.ActiveViewIndex = 0;
 if (Page.IsPostBack == false)
        {
            CDT = CAdapter.selectbyemail(Session["email"].ToString());
            DropDownList1.DataSource = CDT;
            DropDownList1.DataTextField = "Toemail";
            DropDownList1.DataValueField = "cid";
            DropDownList1.DataBind();
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
       
            MultiView1.ActiveViewIndex = 1;
        
        
            CDT = CAdapter.selectbyemail(Session["email"].ToString());
            CheckBoxList1.DataSource = CDT;
            CheckBoxList1.DataTextField = "Toemail";
            CheckBoxList1.DataValueField = "cid";
          CheckBoxList1.DataBind();
        
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        btnuploadsingle.Visible = true;
        FileUpload1.Visible = true;
        FileUpload2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;

    }
    protected void btnuploadsingle_Click(object sender, EventArgs e)
    {
        att1.Text = "";
        att2.Text = "";
        if (FileUpload1.HasFile != false)
        {

            FileUpload1.SaveAs(Server.MapPath("~/att/" +Session["uid"].ToString() +"_"+ FileUpload1.FileName.ToString()));
            att1.Text = FileUpload1.FileName.ToString();
        }
        if (FileUpload2.HasFile != false)
        {
            FileUpload2.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload2.FileName.ToString()));
            att2.Text =FileUpload2.FileName.ToString();
        }
        FileUpload1.Visible = false;
        FileUpload2.Visible = false;
        btnuploadsingle.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        if(att1.Text!="" && att2.Text!="")
        {
        int inst=MAdapter.Insert(Session["email"].ToString(),Label1.Text,txtsubject.Text,txtmessage.Text,"~/att/" +Session["uid"].ToString() +"_"+ att1.Text,"~/att/" +Session["uid"].ToString() +"_"+ att2.Text,0);
        MultiView1.ActiveViewIndex = 2;
            lblsnd.Text = Label1.Text;
        }
        else if (att1.Text == "" && att2.Text != "")
        {
            int inst = MAdapter.Insert(Session["email"].ToString(), Label1.Text, txtsubject.Text, txtmessage.Text, "", "~/att/" + Session["uid"].ToString() + "_" + att2.Text, 0);
            MultiView1.ActiveViewIndex = 2;
            lblsnd.Text = Label1.Text;
        }
        else if (att1.Text != "" && att2.Text == "")
        {
            int inst = MAdapter.Insert(Session["email"].ToString(), Label1.Text, txtsubject.Text, txtmessage.Text, "~/att/" + Session["uid"].ToString() + "_" + att1.Text, "", 0);
            MultiView1.ActiveViewIndex = 2;
            lblsnd.Text = Label1.Text;
        }
        else
        {
            int inst = MAdapter.Insert(Session["email"].ToString(), Label1.Text, txtsubject.Text, txtmessage.Text, "", "", 0);
            MultiView1.ActiveViewIndex = 2;
            lblsnd.Text = Label1.Text;

        }
        Label1.Text = "";
        att1.Text = "";
        att2.Text = "";
        txtmessage.Text = "";
        txtsubject.Text= "";



    
    }
    protected void txt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {

            if (CheckBoxList1.Items[i].Selected == true)
            {

                if (att3.Text != "" && att4.Text != "")
                {
                    int inst = MAdapter.Insert(Session["email"].ToString(), CheckBoxList1.Items[i].Text, txtsubjectgroup.Text, txtmessagegroup.Text, "~/att/" + Session["uid"].ToString() + "_" + att3.Text, "~/att/" + Session["uid"].ToString() + "_" + att4.Text, 0);
                    MultiView1.ActiveViewIndex = 2;
                    lblsnd.Text = "ALL";
                }
                else if (att3.Text == "" && att4.Text != "")
                {
                    int inst = MAdapter.Insert(Session["email"].ToString(), CheckBoxList1.Items[i].Text, txtsubjectgroup.Text, txtmessagegroup.Text, "", "~/att/" + Session["uid"].ToString() + "_" + att4.Text, 0);
                    MultiView1.ActiveViewIndex = 2;
                    lblsnd.Text = "ALL";
                }
                else if (att3.Text != "" && att4.Text == "")
                {
                    int inst = MAdapter.Insert(Session["email"].ToString(), CheckBoxList1.Items[i].Text, txtsubjectgroup.Text, txtmessagegroup.Text, "~/att/" + Session["uid"].ToString() + "_" + att3.Text, "", 0);
                    MultiView1.ActiveViewIndex = 2;
                    lblsnd.Text = "ALL";
                }
                else
                {
                    int inst = MAdapter.Insert(Session["email"].ToString(), CheckBoxList1.Items[i].Text, txtsubjectgroup.Text, txtmessagegroup.Text, "", "", 0);
                    MultiView1.ActiveViewIndex = 2;
                    lblsnd.Text = "ALL";
                }                          
             }  
    

         }          
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;
    }
    protected void txtsubject_TextChanged(object sender, EventArgs e)
    {

    }
protected void  btnuploadsinglegroup_Click(object sender, EventArgs e)
{
       att3.Text = "";
        att4.Text = "";
        if (FileUpload3.HasFile != false)
        {

            FileUpload3.SaveAs(Server.MapPath("~/att/" +Session["uid"].ToString() +"_"+ FileUpload3.FileName.ToString()));
            att3.Text = FileUpload3.FileName.ToString();
        }
        if (FileUpload4.HasFile != false)
        {
            FileUpload4.SaveAs(Server.MapPath("~/att/" + Session["uid"].ToString() + "_" + FileUpload4.FileName.ToString()));
            att4.Text =FileUpload4.FileName.ToString();
        }
        FileUpload4.Visible = false;
        FileUpload3.Visible = false;
        btnuploadsinglegroup.Visible = false;
        MultiView1.ActiveViewIndex = 1;
}
protected void  LinkButton_Click(object sender, EventArgs e)
{

}
protected void  LinkButton2_Click(object sender, EventArgs e)
{
        btnuploadsinglegroup.Visible = true;
        FileUpload3.Visible = true;
        FileUpload4.Visible = true;

        MultiView1.ActiveViewIndex = 1;
 
}
protected void  CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void btnsend_Web_Click(object sender, EventArgs e)
{
    MailMessage mail = new MailMessage();
    mail.To.Add(txtemaill.Text);

    mail.From = new MailAddress("demoemailserver2014@gmail.com");
    mail.Subject = txtsubject0.Text;

    string Body = txtmessage0.Text;
    mail.Body = Body;

    mail.IsBodyHtml = true;
    SmtpClient smtp = new SmtpClient();
    smtp.Host = "smtp.gmail.com";
    smtp.Credentials = new System.Net.NetworkCredential
         ("demoemailserver2014@gmail.com", "9574903871");

    smtp.EnableSsl = true;
    smtp.Send(mail);
    txtemaill.Text = "";
    txtsubject0.Text= "";
    MultiView1.ActiveViewIndex = 2;
    lblsnd.Text = txtemaill.Text;

}
protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
{
    MultiView1.ActiveViewIndex = 3;

        
}
}
