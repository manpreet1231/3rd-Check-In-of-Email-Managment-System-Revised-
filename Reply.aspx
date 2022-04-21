<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="reply123" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style14
        {
            width: 620px;
        }
        .style16
        {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: Teal;
            font-family: Calibri;
            width: 124px;
        }
        .style17
        {
            font-family: Calibri;
            font-weight: bold;
            color: #FF00FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    style="border: thin solid #008080; height: 261px; width: 100%;">
        <tr>
            <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                                    class="style13" valign="top" bgcolor="#D7FFD7">
                Reply Message</td>
        </tr>
        <tr>
            <td valign="top">
                <table class="style11">
                    <tr>
                        <td>
                            &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="style14">
                                                            <tr>
                                                                <td class="style16">
                                                                    Message To :</td>
                                                                <td>
                                                                    <asp:Label ID="lblfrom" runat="server" CssClass="lbl"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbll">
                                                                    Subject&nbsp; :                                     </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#E6FFF9" Width="470px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbll">
                                        Message :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#E6FFF9" Height="150px" 
                                            TextMode="MultiLine" Width="475px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbll">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="lbll">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CssClass="btnn" Text="Send" 
                                            onclick="Button1_Click" Width="78px" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btnn" Text="Back to Inbox" onclick="Button2_Click" />
                                    &nbsp;&nbsp;&nbsp; <asp:Button ID="btnsentbox" runat="server" CssClass="btnn" 
                                            Text="Back to Sent Box" onclick="btnsentbox_Click"  />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="style17">&nbsp;Message Send successfully to</span>
                                                <asp:Label ID="lblreply" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

