<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Add_new_hotel.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="newpage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Add New Hotel </h1>
<table class="auto-style1" align="center" style="background-image: url('Images/Table_Background.gif')">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblhotelname" runat="server" Text="Hotel Name"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txthotelname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthotelname" ErrorMessage="please enrer hotelname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Rating" ID="lblrating"></asp:Label>
            </td>
            <td class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:RadioButtonList ID="optrating" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">One</asp:ListItem>
                    <asp:ListItem Value="2">Two</asp:ListItem>
                    <asp:ListItem Value="2">Three</asp:ListItem>
                    <asp:ListItem Value="4">Four</asp:ListItem>
                    <asp:ListItem Value="5">Five</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="optrating" ErrorMessage="please select rating"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblrentperday" runat="server" Text="Rent Per Day"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_rentperday" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_rentperday" ErrorMessage="please enter values from one" ValidationExpression="^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_rentperday" ErrorMessage="please enter rent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="City Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_cityname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cityname" ErrorMessage="please enter cityname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsavehotel" runat="server" Text="Save Hotel" OnClick="btnsavehotel_Click" />
                <ajaxToolkit:ConfirmButtonExtender ID="btnsavehotel_ConfirmButtonExtender" runat="server" BehaviorID="btnsavehotel_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to continue   ?" TargetControlID="btnsavehotel">
                </ajaxToolkit:ConfirmButtonExtender>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000099" NavigateUrl="~/Admin_HomePage.aspx">Go Back To Home Page</asp:HyperLink>
        </asp:Content>