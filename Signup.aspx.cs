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

public partial class email_signup : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";
        UDT = UAdapter.SelectForEmailCheck(txtuname.Text+"@yahoo.com");

        if (DrpDD.SelectedIndex == 0)
        {

            lblerror.Text = "Slect Date first";
        }
        else if (Drpmm.SelectedIndex == 0)
        {

            lblerror.Text = "Select Month first";
        }
        else if (Drpyyy.SelectedIndex == 0)
        {
            lblerror.Text = "select Year first";
        }
            else if(txtuname.Text=="")
        {
            lblerror.Text = "Enter UserName ";
            }
        else if (txtpass.Text == "")
        {

            lblerror.Text = "Enter Password";
        }
        else
        {

            if (UDT.Rows.Count == 1)
            {
                lblerror.Text = "Email already exist !!";

            }
            else
            {
                string img = "";
                if (RadioButton1.Checked == true)
                {
                    img = "~/img/boy.jpeg";

                }
                else
                {
                    img = "~/img/girl.jpeg";
                }


                if (txtpass.Text.Length > 8)
                {
                    if (UDT.Rows.Count > 0)
                    {
                        lblerror.Text = "UserName Already Exist";

                    }
                    else
                    {
                        int inst = UAdapter.Insert(txtfname.Text, txtsname.Text, Convert.ToDateTime(DrpDD.SelectedItem.Text + " " + Drpmm.SelectedItem.Text + " " + Drpyyy.SelectedItem.Text), txtadd.Text, txtcity.Text, txtpin.Text, txtmo.Text, txtuname.Text + txtuname0.Text, txtpass.Text, img);
                        Response.Redirect("Default.aspx");
                    }
                }
                else
                {
                    lblerror.Text = "Password more then 8 char";
                }
            }
        }
    }
}
