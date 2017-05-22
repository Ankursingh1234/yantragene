using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Databs
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter Adapter;
    string constr = "Data Source=localhost;Initial Catalog=yantragene17;User ID=sa;Password=XXXXXX";
    public Databs()
    {
        //
        // TODO: Add constructor logic here
        //
        try
        {
            con = new SqlConnection(constr);
            if (con.State == ConnectionState.Closed)
                con.Open();
            else
                con.Close();
        }
        catch (Exception e) { }
    }

    public DataTable verifys(string query)
    {

        Adapter = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        try
        {
            Adapter.Fill(dt);
        }
        catch { }

        return dt;

    }
    public void InsertData(string query)
    {
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

    }
    public void UpdateData(string query)
    {
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

    }

    public void DeleteData(string query)
    {
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

    }
}
