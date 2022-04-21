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
using System.IO;
using System.Net;

public partial class SMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Label1.Text = DropDownList1.SelectedItem.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=nik2511@yahoo.com:nik2511&senderID=TEST SMS&receipientno=" + TextBox1.Text + "&msgtxt=" + txtmessage.Text + "&state=4";
        WebRequest request = HttpWebRequest.Create(strUrl);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();

        TextBox1.Text = "";
        txtmessage.Text = "";
        lbl.Text = "Send Sms Succesfully";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmessage_TextChanged(object sender, EventArgs e)
    {

    }
}
