<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Onlinechat.aspx.cs" Inherits="Onlinechat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 41px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
            text-align: left;
            margin-left: 40px;
        }
        .style10
        {
            width: 100px;
        }
        .style11
        {
            width: 41px;
        }
        .style27
        {
            font-family: Calibri;
            font-weight: bold;
            color: #003300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ntbl" style="border: thin solid #008080; width: 688px;">
        <tr class="tbllhead">
            <td colspan="2" class="nbg" bgcolor="#D7FFD7">
                <span class="style27">Welcome to
                Online Chat:</span>
                            <asp:Label ID="lblname" runat="server" 
                    style="font-weight: 700; color: #CC0066;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td align="right" class="style8">
                <table class="style10">
                    <tr>
                        <td>
                            <asp:HiddenField ID="HOID" runat="server" onvaluechanged="HOID_ValueChanged" />
                        </td>
                        <td>
                            <asp:Button ID="btnlogout" runat="server" CssClass="btnn" Text="LOGOUT" 
                                onclick="btnlogout_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="lbl">
                            Online User</td>
                    </tr>
                    <tr>
                        <td>
                        <iframe id="mm" runat="server" src="msg.aspx" frameborder="0" scrolling="auto" width="470px" height="310px"></iframe> 
                            
                        </td>
                        <td>
                            <asp:ListBox ID="ListBox1" runat="server" Height="285px" Width="87px" 
                                Font-Bold="True" ForeColor="#006600" CssClass="txt">
                            </asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:TextBox ID="txtreply" runat="server" ontextchanged="txtreply_TextChanged" 
                                TextMode="MultiLine" Width="459px" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnsend" runat="server" CssClass="btnn" Height="36px" 
                                onclick="btnsend_Click" Text="SEND" Width="79px" />
                        </td>
                    </tr>
                </table>
&nbsp;&nbsp; &nbsp;<asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

