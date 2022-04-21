<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Trash.aspx.cs" Inherits="Trash" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style13
    {
        height: 45px;
    }
        .style27
        {
            height: 35px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                        <table class="style11" 
    style="border: thin solid #008080; height: 261px; width: 100%;">
                            <tr>
                                <td style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                                    class="style27" valign="top" bgcolor="#D7FFD7">
                                    Trash</td>
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
                                                <asp:GridView ID="Gridtrash" runat="server" BackColor="White" 
                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                                    GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" 
                                                    Font-Names="Calibri" Width="651px" 
                                                    DataKeyNames="ID" onselectedindexchanged="Gridtrash_SelectedIndexChanged" 
                                                    onrowdeleting="Gridtrash_RowDeleting" onrowcommand="Gridtrash_RowCommand">
                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                    <HeaderStyle BackColor="#009797" Font-Bold="True" ForeColor="#F7F7F7" />
                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="ALL" ItemStyle-Width="40px"  ItemStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chk" runat="server" />
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                                        </asp:TemplateField>
                                                        <asp:BoundField HeaderText="Mail From" DataField="Fromemail" 
                                                            ItemStyle-Width="130px" >
                                                            <ItemStyle Width="130px"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField HeaderText="Subject" DataField="subject" ItemStyle-Width="250px" >
                                                            <ItemStyle Width="250px"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField HeaderText="Receive Date" DataField="Entrydate" 
                                                            ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="150px">
                                                            <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px"  ItemStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ForeColor="Red" CommandName="delete" Text="Delete"></asp:LinkButton>
                                                            </ItemTemplate>
                                                            
                                                             
                                                            <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Rest" ItemStyle-HorizontalAlign="Center" >
                                                        <ItemTemplate >
                                                        <asp:LinkButton runat="server" ForeColor="Green" CommandArgument='<%#Eval("id") %>' CommandName="res" Text="Restore"></asp:LinkButton>
                                                        </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        </asp:TemplateField>
                                                        
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="litrash" runat="server" onclick="litrash_Click">Mark All</asp:LinkButton>
                                                &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="linktrashdelete" runat="server" 
                                                    onclick="linktrashdelete_Click">Delete All</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
    </table>

</asp:Content>


