<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="email_signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Server</title>
    <link href="StyleSheet.css" rel="Stylesheet" />
    <style type="text/css">
        .style2
        {
            font-size: medium;
            font-weight: bold;
            color: #003300;
            text-align: right;
            font-family: Calibri;
            width: 138px;
        }
        .style3
        {
            width: 138px;
        }
    </style>
</head>
<body>
    <p>
        +</p>
    <form id="form1" runat="server">
    <div id="head">
    
        <span lang="en-us" 
            style="font-size: 55pt; color: #003300; font-family: Amaranth">&nbsp;&nbsp;&nbsp; E-Mail Server</span></div>
    <div id="login">
        <table class="tbl">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Name :</td>
                <td align="left">
                    <asp:TextBox ID="txtfname" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfieldvalidatorname" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="Enter  Name" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Surname :</td>
                <td align="left">
                    <asp:TextBox ID="txtsname" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtsname" ErrorMessage="Enater  Surname" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Mobile :</td>
                <td align="left">
                    <asp:TextBox ID="txtmo" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtmo" ErrorMessage="Enter Mobile No" MaximumValue="9999999999" 
                        MinimumValue="1000000000" style="font-size: small"></asp:RangeValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="txtmo" ErrorMessage="Invalid " MaximumValue="9999999999" 
                        MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Address :</td>
                <td align="left">
                    <asp:TextBox ID="txtadd" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtadd" ErrorMessage="Enter Your Add" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    City :</td>
                <td align="left">
                    <asp:TextBox ID="txtcity" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="Enter Your City" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Pinocode :</td>
                <td align="left">
                    <asp:TextBox ID="txtpin" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtpin" ErrorMessage="Enter  PinCode" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="txtpin" ErrorMessage="Invalid Pin" MaximumValue="999999" 
                        MinimumValue="100000" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    BirthDate :</td>
                <td align="left">
                    <asp:DropDownList ID="DrpDD" runat="server">
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
                    <asp:DropDownList ID="Drpmm" runat="server">
                    <asp:ListItem>MM</asp:ListItem>
                        <asp:ListItem>jan</asp:ListItem>
                        <asp:ListItem>feb</asp:ListItem>
                        <asp:ListItem>mar</asp:ListItem>
                        <asp:ListItem>apr</asp:ListItem>
                        <asp:ListItem>may</asp:ListItem>
                        <asp:ListItem>june</asp:ListItem>
                        <asp:ListItem>july</asp:ListItem>
                        <asp:ListItem>aug</asp:ListItem>
                    <asp:ListItem>sep</asp:ListItem>
                    <asp:ListItem>oct</asp:ListItem>
                    <asp:ListItem>nov</asp:ListItem>
                    <asp:ListItem>dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Drpyyy" runat="server">
                    <asp:ListItem>YYY</asp:ListItem>
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
                <td class="lbl">
                    &nbsp;</td>
                <td align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="A" 
                        Text="MALE" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="A" Text="FEMALE" />
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Email Id :</td>
                <td align="left">
                    <asp:TextBox ID="txtuname" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="133px" 
                        CssClass="txtbox"></asp:TextBox>
                    <asp:TextBox ID="txtuname0" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="100px" 
                        CssClass="txtbox" ReadOnly="True">@yahoo.com</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :</td>
                <td align="left">
                    <asp:TextBox ID="txtpass" runat="server" BorderColor="#003300" 
                        BorderStyle="Solid" BorderWidth="1px" Height="25px" Width="157px" 
                        CssClass="txtbox" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" BorderColor="#006600" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#003300" 
                        Height="30px" Text="Register Now" Width="102px" onclick="Button1_Click" 
                        CssClass="btnn" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                        Font-Names="Calibri" ForeColor="#003300" 
                        PostBackUrl="~/Default.aspx" CausesValidation="False">Allready have an Account ?</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</body>
</html>
