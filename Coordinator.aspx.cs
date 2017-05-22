using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;

public partial class Coordinator : System.Web.UI.Page
{
    Databs db = new Databs();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        if (Session["cord"] != null)
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                dt = db.verifys("select Group_name,ID as TeamLeader,Id1 as TeamMember1,Id2 as TeamMember2,Id3 as TeamMember3,Id4 as TeamMember4,Id5 as TeamMember5,EVENT_NAME from event_reg inner join competition on event_reg.e_no=competition.E_NO");// where competition.branch='" + Session["cord"] + "'");


                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append("<a href='http://www.fgiet.ac.in'>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</a>");
                        html.Append("</td>");
                    }
                    html.Append("</tr>");
                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
            Label1.Text = Session["cord1"].ToString();
            dt = db.verifys("select * from register17 where id='" + Session["cord1"].ToString() + "'");
            Label6.Text = dt.Rows[0][1].ToString();
            Label4.Text = dt.Rows[0][2].ToString();
            Label5.Text = dt.Rows[0][4].ToString();
            Label3.Text = dt.Rows[0][3].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void lgout_Click(object sender, EventArgs e)
    {
        Session["cord"] = null;
        Session["cord1"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string q = "select name,college,email,phone from register17 where id='" + TextBox4.Text + "'";
        DataTable dt = new DataTable();
        try
        {
            dt = db.verifys(q);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch { }
    }
}