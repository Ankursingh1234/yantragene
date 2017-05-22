using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;

public partial class Usr_lgn : System.Web.UI.Page
{
    Databs db = new Databs();



    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        if (Session["name"] != null)
        {
            //if (!this.IsPostBack)
            //{
            //    //Populating a DataTable from database.
            dt = db.verifys("select Group_name,Event_Name,ID,Id1,Id2,Id3,Id4 from event_reg inner join competition on event_reg.e_no=competition.E_NO where id='" + Session["name"].ToString() + "' or id1='" + Session["name"].ToString() + "' or id2='" + Session["name"].ToString() + "' or id3='" + Session["name"].ToString() + "' or id4='" + Session["name"].ToString() + "'");


            //Building an HTML string.
            StringBuilder html = new StringBuilder();

            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }
                html.Append("</tr>");
            }

            //Table end.
            html.Append("</table>");

            //Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            //}
            Label1.Text = Session["name"].ToString();
            dt = db.verifys("select * from register17 where id='" + Session["name"] + "'");
            Label6.Text = "WELCOME " + dt.Rows[0][1].ToString();
            Label4.Text = dt.Rows[0][2].ToString();
            Label5.Text = dt.Rows[0][4].ToString();
            Label3.Text = dt.Rows[0][3].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void button_click(object sender, EventArgs e)
    {
        DataTable dm = new DataTable();
        dm = db.verifys("select passwords from register17  where id='" + Session["name"] + "'");

        if (dm.Rows[0][0].ToString().Equals(TextBox1.Text))
        {
            db.UpdateData("update register17 set passwords='" + TextBox2.Text + "' where id='" + Session["name"] + "'");
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your password is changed successfully');", true);
            
        }


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect("Default.aspx");
    }
}