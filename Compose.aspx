<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="Compose" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 679px;
        }
        .style14
        {
            width: 649px;
        }
        .style16
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 83px;
        }
        .style17
        {
            width: 83px;
        }
        .style18
        {
            width: 650px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
  
        <table class="style11" style="border: thin solid #008080">
            <tr>
                <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                    bgcolor="#D7FFD7">
                    Compose Mail</td>
            </tr>
            <tr>
                <td>
                    <table class="style13">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="lbll">
                                Send Email To :</td>
                            <td>
                                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                    Checked="True" CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Single Mail" 
                                    onload="RadioButton1_CheckedChanged" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton2_CheckedChanged" Text="Group Mail" />
                            &nbsp;<asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                                    CssClass="lbl" GroupName="a" 
                                    oncheckedchanged="RadioButton3_CheckedChanged" Text="Web Mail" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <table style="border: thin solid #0000FF" width="100%">
                                            <tr>
                                                <td class="tl" bgcolor="#8CD98C">
                                                    Send Mail to Single Person : &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Select :</td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" 
                                                                    Height="26px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                                                    Width="200px">
                                                                </asp:DropDownList>
                                                                <asp:Button ID="Button2" runat="server" CssClass="btnn" Height="26px" 
                                                                    onclick="Button2_Click" Text="Select" Width="62px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                To :</td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" CssClass="lbll" Text="Label"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Title :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="519px" 
                                                                    ontextchanged="txtsubject_TextChanged" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Message :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessage" runat="server" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="Button3" runat="server" CssClass="btnn" Text="SEND" 
                                                                    Width="90px" onclick="Button3_Click" Height="30px" />
                                                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
                                                                    onclick="LinkButton1_Click" ForeColor="#003300">Attachment</asp:LinkButton>
                                                                &nbsp;<asp:Label ID="att1" runat="server"></asp:Label>
                                                                <asp:Label ID="att2" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:FileUpload ID="FileUpload2" runat="server" Visible="False" />
                                                                &nbsp;<asp:Button ID="btnuploadsingle" runat="server" CssClass="btnn" Text="Upload" 
                                                                    Visible="False" onclick="btnuploadsingle_Click" Height="28px" 
                                                                    Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table style="border: thin solid #0000FF" width="100%">
                                            <tr>
                                                <td class="tl" bgcolor="#8CD98C">
                                                    Send Mail to Multiple Person : &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                To :</td>
                                                            <td>
                                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="21px" 
                                                                    onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
                                                                    RepeatColumns="3">
                                                                </asp:CheckBoxList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Title :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubjectgroup" runat="server" Height="30px" Width="519px" 
                                                                    CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Message :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessagegroup" runat="server" Height="149px" 
                                                                    TextMode="MultiLine" Width="515px" 
                                                                    ontextchanged="txt_TextChanged" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="sendgroup" runat="server" CssClass="btnn" Text="SEND" 
                                                                    Width="90px" onclick="Button5_Click" Height="30px" />
                                                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                                                                    ForeColor="#003300">Attachment</asp:LinkButton>
                                                                <asp:Label ID="att3" runat="server"></asp:Label>
                                                                <asp:Label ID="att4" runat="server"></asp:Label>
                                                                <br />
                                                                <asp:FileUpload ID="FileUpload3" runat="server" Visible="False" />
                                                                <br />
                                                                <asp:FileUpload ID="FileUpload4" runat="server" Visible="False" />
                                                                <asp:Button ID="btnuploadsinglegroup" runat="server" CssClass="btnn" 
                                                                    onclick="btnuploadsinglegroup_Click" Text="Upload" Visible="False" 
                                                                    Height="28px" Width="80px" />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                        <table align="center" class="style18">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="font-weight: 700; color: #FF0066; font-size: large">
                                                    Message Send successfully to
                                                    <asp:Label ID="lblsnd" runat="server"></asp:Label>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <table style="border: thin solid #0000FF" width="100%">
                                            <tr>
                                                <td class="tl" bgcolor="#8CD98C">
                                                    Send email on internet to any web mail.</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="style14">
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                To :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtemaill" runat="server" Width="248px" CssClass="txt" 
                                                                    Height="30px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Title :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtsubject0" runat="server" BackColor="#F9FFFE" Height="30px" 
                                                                    ontextchanged="txtsubject_TextChanged" Width="519px" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style16">
                                                                Message :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtmessage0" runat="server" BackColor="#F9FFFE" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="btnsend_Web" runat="server" CssClass="btnn" 
                                                                    onclick="btnsend_Web_Click" Text="SEND" Width="90px" Height="30px" />
                                                                &nbsp;&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style17">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>

</asp:Content>



