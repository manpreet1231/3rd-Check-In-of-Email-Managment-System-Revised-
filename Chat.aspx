<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 749px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin solid #008080; width: 687px;">
        <tr>
            <td bgcolor="#D7FFD7" 
                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;">
                Welcome Online Chat</td>
        </tr>
        <tr>
            <td style="text-align: center" class="style13">
&nbsp;<br />
                <br />
                <br />
    <asp:Button ID="btnenterchat" runat="server" CssClass="btnn" 
        onclick="btnenterchat_Click" Text="Enter Chat" Font-Size="XX-Large" Height="64px" 
                    Width="197px" />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

