using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#prof').show();});", true);
            prof.Style.Add("display", "none");
        }
        else
        {
            prof.Style.Add("display", "block");
        }
        Databs db = new Databs();
        DataTable dt=new DataTable();
        string qu = "select count(id) from register17";
       dt= db.verifys(qu);

     int p = Convert.ToInt32( dt.Rows[0][0]);
     p = p + 250;
     part.InnerText = p.ToString() ;
    }
}