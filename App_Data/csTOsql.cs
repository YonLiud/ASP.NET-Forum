
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
public class csTOsql
{
	public static SqlConnection ConnectToDb(string fileName)
	{
        string connString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\DB.mdf; Integrated Security = True; Connect Timeout = 30";

        SqlConnection conn = new SqlConnection(connString);
        return conn;
	}

    public static  void NonQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        com.ExecuteNonQuery();
        conn.Close();
    }
    public static string Query(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        string variable = null;
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            variable = reader.GetString(0);
        }
        conn.Close();
        return variable;
    }

    public static bool BoolQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        bool variable = false;
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            variable = reader.GetBoolean(0);
        }
        conn.Close();
        return variable;
    }
    //public static bool BoolQuery(string fileName, string sql)
    //{

    //    SqlConnection conn = ConnectToDb(fileName);
    //    conn.Open();
    //    SqlCommand com = new SqlCommand(sql,conn);
    //    SqlDataReader data = com.ExecuteReader();   

    //    bool found =Convert.ToBoolean(data.Read());
    //    conn.Close();
    //    return found;

    //}

    public static DataTable ExecuteDataTable(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
       
        DataTable dt = new DataTable();
        
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
        
        tableAdapter.Fill(dt);
        

        return dt;
    }

}
    

