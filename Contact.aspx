<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 619px;
        }
        .style14
        {
            text-align: left;
        }
        .style15
        {
            text-align: center;
        }
        .style16
        {
            text-align: right;
            width: 222px;
        }
        .style18
        {
            width: 134px;
        }
        .style19
        {
            width: 584px;
        }
        .style20
        {
            width: 128px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                        <p>
                            <table class="style11" style="border: thin solid #008080; width: 687px;">
                                <tr>
                                    <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                                        bgcolor="#D7FFD7">
                                        My Contact List</td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        <table class="style13">
                                            <tr>
                                                <td class="lbll">
                                                    Find People :
                                                </td>
                                                <td class="style14" colspan="2">
                                                    <asp:TextBox ID="txtsearch" runat="server" CssClass="txt"></asp:TextBox>
                                                    <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                                                        Text="Search" CssClass="btnn" />
                                                    <asp:Label ID="lblmsg" runat="server" CssClass="lblmsg"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style16">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <table class="btn">
                                                        <tr>
                                                            <td class="style18">
                                                                &nbsp;</td>
                                                            <td>
                                                    <asp:CheckBoxList ID="chkfrnd" runat="server" 
                                                        RepeatColumns="3" CssClass="txt" onselectedindexchanged="chkfrnd_SelectedIndexChanged">
                                                    </asp:CheckBoxList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style16">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    <asp:Button ID="btnadd" runat="server" Text="Add to Contact" 
                                                        onclick="btnadd_Click"  CssClass="btnn" Height="30px" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style16">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    <asp:Label ID="lbladd" runat="server" CssClass="lblmsg"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style15" colspan="3">
                                                    <table class="style19">
                                                        <tr>
                                                            <td class="style20">
                                                                &nbsp;</td>
                                                            <td>
                                                    <asp:GridView ID="GvFrind" runat="server" AutoGenerateColumns="False" 
                                                        Width="325px" CssClass="grid" 
                                                                    onrowdeleting="GvFrind_RowDeleting" 
                                                                    onselectedindexchanged="GvFrind_SelectedIndexChanged" DataKeyNames="CID">
                                                    <Columns>
                                                    
                                                    <asp:BoundField HeaderText="Email" DataField="toemail" />
                                                    <asp:TemplateField HeaderText="Remove">
                                                    <ItemTemplate>
                                                    <asp:LinkButton Text="Remove" ForeColor="Red" CommandName="DELETE" CommandArgument='<%#Eval("CID") %>' runat="server"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                    </Columns>
                                                        <HeaderStyle BackColor="Teal" ForeColor="White" />
                                                    </asp:GridView>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style16">
                                                    &nbsp;</td>
                                                <td class="style14">
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


