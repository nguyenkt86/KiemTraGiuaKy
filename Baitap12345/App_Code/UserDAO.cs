using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for UserDAO
/// </summary>
public class UserDAO
{

    string connectionString = ConfigurationManager.ConnectionStrings["MyData"].ConnectionString;


    public bool CheckUser(string userName)
    {
        string sql = @"SELECT COUNT (*) From Userinformation where Username = @usn";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@usn", userName);
            connection.Open();
            int count = (int)command.ExecuteScalar();

            return (count >= 1);
        }
    }

    public bool GetQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int count = (int)command.ExecuteScalar();
            return (count >= 1);
        }
    }

    public bool Insert( User user)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string sql = "INSERT INTO Userinformation values('a', @pass, @firstname, @lastname, @email, @gender, @address)";
            SqlCommand com = new SqlCommand(sql, connection);
            com.Parameters.AddWithValue("@usn", user.UserName);
            com.Parameters.AddWithValue("@pass", user.PassWord);
            com.Parameters.AddWithValue("@firstname", user.FirstName);
            com.Parameters.AddWithValue("@lastname", user.LastName);
            com.Parameters.AddWithValue("@email", user.Email);
            com.Parameters.AddWithValue("@gender", user.Gender);
            com.Parameters.AddWithValue("@address", user.Address);

            connection.Open();
            int result = com.ExecuteNonQuery();
            return (result >= 1);
        }
    }
	public UserDAO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}