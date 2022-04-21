<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
         .style16
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 83px;
        }
        .style27
        {
            font-family: Calibri;
            font-weight: bold;
            width: 172px;
        }
        .style28
        {
            height: 11px;
            width: 172px;
        }
        .style29
        {
            color: #660066;
            width: 172px;
        }
        .style31
        {
            height: 12px;
            width: 172px;
        }
        .style32
        {
            width: 172px;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <table class="style11" 
        style="border: thin solid #008080; width: 687px; height: 462px;">
        <tr>
            <td  colspan="3" bgcolor="#D7FFD7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; font-size: xx-large; font-weight: bold; font-family: calibri; color: #008080; text-align: center;" 
                
               >
                UpdateProfile</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style17">
            </td>
            <td class="style21">
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td class="style16">
                Name :</td>
            <td class="style23">
                <asp:TextBox ID="txtfname1" runat="server" CssClass="txtbox" Height="25px"  Text='<%#Eval("Fname") %>'
                    Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                LastName :</td>
            <td>
                <asp:TextBox ID="txtsname1" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtbox" 
                    Width="301px" />
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                Mobile :</td>
            <td>
                <asp:TextBox ID="txtmobile1" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                Address :</td>
            <td>
                <asp:TextBox ID="txtadd1" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                City :</td>
            <td>
                <asp:TextBox ID="txtcity1" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style16">
                Pincode : </td>
            <td>
                <asp:TextBox ID="txtpin1" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style16">
                BirthDate :</td>
            <td class="style20">
                <asp:DropDownList ID="drpdd1" runat="server">
                    <asp:ListItem>DD</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>

                </asp:DropDownList>
                <asp:DropDownList ID="drpmm1" runat="server">
                   
                    <asp:ListItem>jan</asp:ListItem>
                        <asp:ListItem>feb</asp:ListItem>
                        <asp:ListItem>mar</asp:ListItem>
                        <asp:ListItem>apr</asp:ListItem>
                        <asp:ListItem>may</asp:ListItem>
                        <asp:ListItem>jun</asp:ListItem>
                        <asp:ListItem>jul</asp:ListItem>
                        <asp:ListItem>aug</asp:ListItem>
                    <asp:ListItem>sep</asp:ListItem>
                    <asp:ListItem>oct</asp:ListItem>
                    <asp:ListItem>nov</asp:ListItem>
                    <asp:ListItem>dec</asp:ListItem>
                    
                </asp:DropDownList>
                <asp:DropDownList ID="drpyyy1" runat="server">
                    <asp:ListItem>YYYY</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>                    
                           <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    
                    
                    
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                <asp:Button ID="Update" runat="server" CssClass="btnn" Text="Update" 
                    onclick="Update_Click" Height="30px" Width="93px" />
                </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="lbll"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>



