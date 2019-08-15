using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kiemtra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;
        string userName = txtUserName.Text;
        string passWord = txtPassword.Text;
        string email = txtEmail.Text;
        bool gender = Boolean.Parse(ddlGender.SelectedValue);
        string address = txtAddress.Text;

        UserDAO DAO = new UserDAO();

        bool exist = DAO.CheckUser(userName);

        if (exist)
            lblMessage.Text = " Tai khoan da ton tai";
        else
        {
             User user = new User                  
             {                  
                 UserName = userName,
                 FirstName = firstName,                        
                 LastName = lastName,                        
                 Email = email,                         
                 PassWord = passWord, 
                 Gender = gender,                         
                 Address = address                     
             }; 
             bool result = DAO.Insert(user);                     
            if (result)
            {                         
                lblMessage.Text = "Đăng ký thành công!";                    
            }                     
            else                     
            {                         
                lblMessage.Text = "Có lỗi. Vui lòng thử lại sau";                     
            }   
        }
 
    }
    protected void btnXoaForm_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtAddress.Text = "";
        
    }
}