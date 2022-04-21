<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="changpassword.aspx.cs" Inherits="changpassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 701px;
        height: 147px;
    }
    .style14
    {
        height: 63px;
        font-size: xx-large;
        text-align: center;
        color: #009999;
    }
    .style15
    {
        height: 37px;
    }
    .style16
    {
        font-family: Calibri;
        font-weight: bold;
    }
    .style19
    {
            font-size: medium;
            font-weight: bold;
            text-align: right;
            color: Teal;
            font-family: Calibri;
            width: 282px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
    <table style="border: thin solid #008080; width: 687px;">
        <tr>
            <td colspan="2" bgcolor="#D7FFD7" 
                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;">
&nbsp; Change Password </td>
        </tr>
        <tr>
            <td class="lbl">
                Old password</td>
            <td class="style15">
                    <asp:TextBox ID="txtoldpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="205px" 
                        TextMode="Password" ontextchanged="txtoldpass_TextChanged"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="lbl">
                New Password</td>
            <td class="style15">
                    <asp:TextBox ID="txtnewpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="205px" 
                    CssClass="txtbox" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="lbl">
                Confirm Password</td>
            <td class="style15">
                    <asp:TextBox ID="txtconfirmpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="205px" 
                    CssClass="txtbox" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" 
                        ErrorMessage="enter a match password"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style15">
                <asp:Button ID="btnpass" runat="server" CssClass="btnn" 
                    Text="Change Password" onclick="btnpass_Click" />
            </td>
        </tr>
    </table>
</p>
    <p style="margin-left: 360px">
        &nbsp;<asp:Label ID="lblpass" runat="server" CssClass="lbll"></asp:Label>
    <br />
&nbsp;</p>


</asp:Content>


