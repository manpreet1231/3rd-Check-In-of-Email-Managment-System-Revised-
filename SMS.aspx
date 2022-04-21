<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="SMS.aspx.cs" Inherits="SMS" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style14
        {
            width: 649px;
        }
        .style17
        {
            width: 83px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11" 
    style="border: thin solid #008080; height: 261px; width: 100%;">
        <tr>
            <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                valign="top" bgcolor="#D7FFD7">
                FREE SEND SMS TO MOBILE</td>
        </tr>
        <tr>
            <td valign="top">
                <table class="style11">
                    <tr>
                        <td style="font-family: Calibri; color: #FF0000; font-weight: 700;">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                Write your Mobile No in Below text and send Free SMS on mobile within a blink of 
                                                eyes.</td>
                    </tr>
                    <tr>
                        <td>
                                                    <table class="style14" __designer:mapid="96">
                                                        <tr __designer:mapid="97">
                                                            <td __designer:mapid="98">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="99">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="9a">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr __designer:mapid="9b">
                                                            <td __designer:mapid="9c">
                                                                &nbsp;</td>
                                                            <td class="style16" __designer:mapid="9d">
                                                                To :</td>
                                                            <td __designer:mapid="9e">
                                                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="13" 
                                                                    ontextchanged="TextBox1_TextChanged" CssClass="txt" Height="28px" 
                                                                    Width="180px"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                                    ControlToValidate="TextBox1" ErrorMessage="Invalid Mobile No." 
                                                                    Font-Names="Calibri" MaximumValue="9999999999999" MinimumValue="1000000000" 
                                                                    Type="Double"></asp:RangeValidator>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="a5">
                                                            <td __designer:mapid="a6">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="a7">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="a8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr __designer:mapid="a9">
                                                            <td __designer:mapid="aa">
                                                                &nbsp;</td>
                                                            <td class="style16" __designer:mapid="ab">
                                                                Message :</td>
                                                            <td __designer:mapid="ac">
                                                                <asp:TextBox ID="txtmessage" runat="server" Height="149px" TextMode="MultiLine" 
                                                                    Width="515px" 
                                                                    ontextchanged="txtmessage_TextChanged" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="ae">
                                                            <td __designer:mapid="af">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="b0">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="b1">
                                                                <asp:Button ID="Button3" runat="server" CssClass="btnn" Text="SEND" 
                                                                    Width="90px" onclick="Button3_Click" Height="30px" />
                                                                &nbsp;&nbsp;<asp:Label ID="lbl" runat="server" Font-Names="Calibri"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr __designer:mapid="bb">
                                                            <td __designer:mapid="bc">
                                                                &nbsp;</td>
                                                            <td class="style17" __designer:mapid="bd">
                                                                &nbsp;</td>
                                                            <td __designer:mapid="be">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                    </tr>
                    <tr>
                        <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

