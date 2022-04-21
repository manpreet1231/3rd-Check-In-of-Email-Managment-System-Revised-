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

public partial class Account : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        { 


            UDT = UAdapter.USERMST_SELECTBYID(Convert.ToInt32(Session["UID"].ToString()));
            txtfname1.Text = UDT.Rows[0]["Fname"].ToString();
            txtsname1.Text = UDT.Rows[0]["Lname"].ToString();
            txtmobile1.Text = UDT.Rows[0]["Mobile"].ToString();
            txtcity1.Text = UDT.Rows[0]["City"].ToString();
            txtpin1.Text = UDT.Rows[0]["Pincode"].ToString();
            txtadd1.Text = UDT.Rows[0]["Address"].ToString();
            DateTime bdate = Convert.ToDateTime(UDT.Rows[0]["Dateofbirth"].ToString());
            DateTime bmonth = Convert.ToDateTime(UDT.Rows[0]["Dateofbirth"].ToString());
            DateTime byear = Convert.ToDateTime(UDT.Rows[0]["Dateofbirth"].ToString());

            drpdd1.Text = bdate.Date.Day.ToString();
           
            //drpmm1.Text = bmonth.Month.ToString();
            if (bmonth.Month.ToString() == "1")
            {
                drpmm1.Text = "jan";
            }
                 else  if (bmonth.Month.ToString() == "2")
            {
                drpmm1.Text = "feb";
            }
            else if (bmonth.Month.ToString() == "3")
            {
                drpmm1.Text = "march";
            }
            else if (bmonth.Month.ToString() == "4")
            {
                drpmm1.Text = "april";
            }
            else if (bmonth.Month.ToString() == "5")
            {
                drpmm1.Text = "may";
            }
            else if (bmonth.Month.ToString() == "6")
            {
                drpmm1.Text = "jun";
            }
            else if (bmonth.Month.ToString() == "7")
            {
                drpmm1.Text = "july";
            }
            else if (bmonth.Month.ToString() == "8")
            {
                drpmm1.Text = "aug";
            }
            else if (bmonth.Month.ToString() == "9")
            {
                drpmm1.Text = "sep";
            }
            else if (bmonth.Month.ToString() == "10")
            {
                drpmm1.Text = "oct";
            }
            else if (bmonth.Month.ToString() == "11")
            {
                drpmm1.Text = "nov";
            }
            else if (bmonth.Month.ToString() == "12")
            {
                drpmm1.Text = "dec";
            }
           
           
            drpyyy1.Text = byear.Date.Year.ToString();
           


        }
        


    }
    protected void Update_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName.ToString().Contains("jpeg") == true || FileUpload1.FileName.ToString().Contains("jpg") == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/img/" + Session["uid"].ToString() + "_" + FileUpload1.FileName.ToString()));
            Session["img"] = "~/img/" + Session["uid"].ToString() + "_" + FileUpload1.FileName.ToString();
           UAdapter.USERMST_UPDATEUSERINFO(Convert.ToInt32(Session["uid"].ToString()), txtfname1.Text, txtsname1.Text, Convert.ToDateTime(drpdd1.SelectedItem.Text + " " + drpmm1.SelectedItem.Text + " " + drpyyy1.SelectedItem.Text), txtadd1.Text, txtcity1.Text, txtpin1.Text, txtmobile1.Text, "~/img/" + Session["uid"].ToString() + "_" + FileUpload1.FileName.ToString());
            Response.Redirect("account.aspx");

        }
        else {

            Label1.Text = "file is not supported";
        
        }
            
                     
    }
}
