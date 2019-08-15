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
            width: 109px;
        }
        .auto-style7 {
            width: 83%;
        }
        .auto-style8 {
            width: 109px;
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
                <td class="auto-style6">Address</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
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
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfpw" runat="server" ControlToValidate="txtPassword" ErrorMessage="Vui lòng nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">ConfirmPassword</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtCfPass" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvCfPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCfPass" ErrorMessage="Mật khẩu vừa nhập không trùng" ForeColor="Pink"></asp:CompareValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" Text="Dang ky" />
                </td>
                <td class="auto-style7">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnXoaForm" runat="server" OnClick="btnXoaForm_Click" Text="Xoa Form" />
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserInforConnectionString %>" SelectCommand="SELECT [Id], [Username], [Password], [Firstname], [Lastname], [Email], [Gender], [Address] FROM [Userinformation]"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
