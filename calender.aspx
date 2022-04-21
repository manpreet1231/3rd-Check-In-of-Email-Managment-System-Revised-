<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="calender.aspx.cs" Inherits="calender" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style11" style="height: 330px; width: 100%">
        <tr>
            <td bgcolor="#D7FFD7" 
                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;">
                Calender</td>
        </tr>
        <tr>
            <td>
                        <asp:Calendar ID="Calendar1" runat="server" 
    Height="352px" Width="683px" BackColor="White" BorderColor="Black" BorderStyle="Solid" 
                            CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" 
                            NextPrevFormat="ShortMonth">
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                Height="8pt" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                                Font-Size="12pt" ForeColor="White" Height="12pt" />
</asp:Calendar>

            </td>
        </tr>
    </table>

</asp:Content>


