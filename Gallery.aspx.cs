using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery : System.Web.UI.Page
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
    }
}