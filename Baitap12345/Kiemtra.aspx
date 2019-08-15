<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kiemtra.aspx.cs" Inherits="Kiemtra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style5 {
            width: 2%;
        }
        .auto-style6 {
            width: 107px;
        }
        .auto-style7 {
            width: 83%;
        }
        .auto-style8 {
            width: 107px;
            height: 30px;
        }
        .auto-style9 {
            width: 83%;
            height: 30px;
        }
        .auto-style10 {
            width: 2%;
            height: 30px;
        }
        .auto-style11 {
            width: 107px;
            height: 26px;
        }
        .auto-style12 {
            width: 83%;
            height: 26px;
        }
        .auto-style13 {
            width: 2%;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" colspan="3"><strong>ĐĂNG KÝ THÀNH VIÊN</strong></td>
            </tr>
            <tr>
                <td class="auto-style6">FirstName</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfFN" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Vui lòng nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">LastName</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfLN" runat="server" ControlToValidate="txtLastName" ErrorMessage="Vui lòng nhập " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Email</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Vu lòng nhập Mail" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Gender</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="true">Nam</asp:ListItem>
                        <asp:ListItem Value="false">Nu</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Address</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8">UserName</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfUN" runat="server" ControlToValidate="txtUserName" ErrorMessage="Vui lòng nhập tên đăng nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfpw" runat="server" ControlToValidate="txtPassword" ErrorMessage="Vui lòng nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">ConfirmPassword</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtCfPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="cvCfPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCfPass" ErrorMessage="Mật khẩu vừa nhập không trùng" ForeColor="Pink"></asp:CompareValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" Text="Đăng ký" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnXoaForm" runat="server" OnClick="btnXoaForm_Click" Text="Xóa Trắng Form" Width="100px" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Cập nhật" style =" margin-left:50px" OnClick="btnUpdate_Click"/>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
