using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Threading;
using System.Text.RegularExpressions;

public partial class Events : System.Web.UI.Page
{
    Databs db = new Databs();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
              prof.Style.Add("display", "none");
            Ank1.Style.Add("display", "none");
            
        }
        else
        {
            prof.Style.Add("display", "block");

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#Ank1').show();});", true);
            Ank1.Style.Add("display", "block");
        }
        
    //    if (Session["name"] == null)
    //    {

    //       // prof.Style.Add("display", "none");
    //    }
    //    else
    //    {
            //A1.Style.Add("display", "block");
            //A2.Style.Add("display", "block");
            //A3.Style.Add("display", "block");
            //A4.Style.Add("display", "block");
            //A5.Style.Add("display", "block");
            //A6.Style.Add("display", "block");
            //A7.Style.Add("display", "block");
            //A8.Style.Add("display", "block");
            //A9.Style.Add("display", "block");
            //A10.Style.Add("display", "block");
            //A11.Style.Add("display", "block");
            //A12.Style.Add("display", "block");
            //A13.Style.Add("display", "block");
            //A14.Style.Add("display", "block");
            //A15.Style.Add("display", "block");
            //A16.Style.Add("display", "block");
            //A17.Style.Add("display", "block");
            //rrr.Style.Add("display", "block");
        //    //prof.Style.Add("display", "block");
        //}
        //if (Session["name"] == null)
        //{

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('.rr').hide();});", true);
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#prof').hide();});", true);


        //}
        //else if (Session["name"] != null)
        //{
        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('.rr').show();});", true);
        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#prof').show();});", true);
        //    try
        //    {
            if (!IsPostBack)
            {
                DataTable dt1 = new DataTable();
                string query = "Select * from competition where e_no not in (select e_no from event_reg where id='" + Session["name"] + "' or Id1='" + Session["name"] + "' or Id2='" + Session["name"] + "')";

                try
                {
                    dt1 = db.verifys(query);

                    DropDownList1.DataSource = dt1;
                    //  DropDownList1.Items.Add("select");
                    DropDownList1.DataBind();
                    //  DropDownList1.SelectedItem = "select";
                }
                catch
                {
                    Label1.Text = "";

                }
                //    DataSet ds = new DataSet();
                //    ds.ReadXml(Server.MapPath("Events.xml"));
                //}
                //catch
                //{
                //    Response.Redirect("Events.aspx");
                //}


                // }
            }
    }


    protected void create_team_Click(object sender, EventArgs e)
    {
        DataTable dt1 = new DataTable();
        string que = "Select * from event_reg ";//where Id='" + Session["name"] + "' or Id1='" + Session["name"] + "' or Id2='" + Session["name"] + "'";
        try
        {
            dt1 = db.verifys(que);
          if(TextBox5.Text=="")
          {
              Label1.Text = "Create your unique team name";
          }
          else if (valid1() && valid2() && valid3() && valid4() && valid5())
          {
              if(DropDownList1.SelectedValue.ToString()=="18")
              {
                  db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','"+""+"','"+""+"','"+""+"','"+""+"','"+ DropDownList1.SelectedItem.Value + "','"+""+"')");
                  ShowMessage("Record submitted successfully", MessageType.Success);
                  Label1.Text = "Student is registered";
                  Response.Redirect("Usr_lgn.aspx");
                   
              }
                 
              else if (DropDownList1.SelectedValue.ToString() == "7" || DropDownList1.SelectedValue.ToString() == "13")        
              {
                if (TextBox6.Text.Equals(Session["name"].ToString()))
                {
                    ShowMessage("Check user id", MessageType.Error);
                }
                else { 
                db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','" + TextBox6.Text + "','" + "" + "','" + "" + "','" + "" + "','" + DropDownList1.SelectedItem.Value + "','"+""+"')");
                Label1.Text = "Student is registered";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered');", true);
                ShowMessage("Record submitted successfully", MessageType.Success);
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
                Modal.Style.Add("display", "none");
                Response.Redirect("Usr_lgn.aspx");
                }
            }
            else if (DropDownList1.SelectedValue.ToString() == "2" || DropDownList1.SelectedValue.ToString() == "5" || DropDownList1.SelectedValue.ToString() == "19" || DropDownList1.SelectedValue.ToString() == "9" || DropDownList1.SelectedValue.ToString() == "1" || DropDownList1.SelectedValue.ToString() == "3" || DropDownList1.SelectedValue.ToString() == "15" || DropDownList1.SelectedValue.ToString() == "20" )
            {
                if (TextBox6.Text.Equals(Session["name"].ToString()) || TextBox7.Text.Equals(Session["name"].ToString()))
                {
                    ShowMessage("Check user id", MessageType.Error);
                }
                else
                {

                    db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + "" + "','" + "" + "','"+ DropDownList1.SelectedItem.Value + "','"+""+"')");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered');", true);
                    Label1.Text = "Student is registered";
                    ShowMessage("Record submitted successfully", MessageType.Success);
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
                    Response.Redirect("Usr_lgn.aspx");
                    Modal.Style.Add("display", "none");

                }
            }
            else if (DropDownList1.SelectedValue.ToString() == "12" || DropDownList1.SelectedValue.ToString() == "17" )
            {
                if (TextBox6.Text.Equals(Session["name"].ToString()) || TextBox7.Text.Equals(Session["name"].ToString()) || TextBox8.Text.Equals(Session["name"].ToString()))
                {
                    ShowMessage("Check user id", MessageType.Error);
                }
                else
                {

                    db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + "" + "','"+ DropDownList1.SelectedItem.Value +"','"+""+"')");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered');", true);
                    Label1.Text = "Student is registered";
                    ShowMessage("Record submitted successfully", MessageType.Success);
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
                    Modal.Style.Add("display", "none");
                    Response.Redirect("Usr_lgn.aspx");
                }
            }
              else if (DropDownList1.SelectedValue.ToString() == "6" || DropDownList1.SelectedValue.ToString() == "10" || DropDownList1.SelectedValue.ToString() == "16" || DropDownList1.SelectedValue.ToString() == "14" || DropDownList1.SelectedValue.ToString() == "8" || DropDownList1.SelectedValue.ToString() == "11")
            {
                if (TextBox6.Text.Equals(Session["name"].ToString()) || TextBox7.Text.Equals(Session["name"].ToString()) || TextBox8.Text.Equals(Session["name"].ToString()) || TextBox9.Text.Equals(Session["name"].ToString()))
                {
                    ShowMessage("Check user id", MessageType.Error);
                }
                else
                {

                    db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList1.SelectedItem.Value + "','" + "" + "')");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered');", true);
                    Label1.Text = "Student is registered";
                    ShowMessage("Record submitted successfully", MessageType.Success);
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
                    Modal.Style.Add("display", "none");
                    Response.Redirect("Usr_lgn.aspx");
                }
            }
              else if(DropDownList1.SelectedValue.ToString()=="4")
              {
                  if (TextBox6.Text.Equals(Session["name"].ToString()) || TextBox7.Text.Equals(Session["name"].ToString()) || TextBox8.Text.Equals(Session["name"].ToString()) || TextBox9.Text.Equals(Session["name"].ToString()))
                  {
                      ShowMessage("Check user id", MessageType.Error);
                  }
                  else
                  {

                      db.InsertData("insert into event_reg values('" + TextBox5.Text + "','" + Session["name"].ToString() + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','"+ DropDownList1.SelectedItem.Value + "','" +TextBox10.Text+"')");
                      ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered');", true);
                      Label1.Text = "Student is registered";
                      ShowMessage("Record submitted successfully", MessageType.Success);
                      Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
                      Modal.Style.Add("display", "none");
                      Response.Redirect("Usr_lgn.aspx");
                  }
              }
          }
        }
        catch
        {
            ShowMessage("Record not submitted, please try again", MessageType.Error);
               
            Label1.Text = "";
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "modal", " $('#Modal').hide();", true);
            Modal.Style.Add("display", "none");
          
        }
      
    }
    //protected void More_Click(object sender, EventArgs e)
    //{

    //    string url = string.Format("Event_Details.aspx?FN={0}.pdf", (sender as Button).CommandArgument);
    //    string script = "<script type='text/javascript'> window.open('" + url + "') </script>";
    //    this.ClientScript.RegisterStartupScript(this.GetType(), "script", script);
    //}
    //protected void loadextPage(object sender, EventArgs e)
    //{
    //    event1.InnerHtml = "Event";

    //}
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "0")
        {
            DM.Style.Add("display", "none");
            A.Style.Add("display", "none");
            B.Style.Add("display", "none");
            C.Style.Add("display", "none");
            D.Style.Add("display", "none");
            E.Style.Add("display", "none");
        }
        else if(DropDownList1.SelectedValue.ToString()=="18")
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "none");
            B.Style.Add("display", "none");
            C.Style.Add("display", "none");
            D.Style.Add("display", "none");
            E.Style.Add("display", "none");
        }

       
              else if (DropDownList1.SelectedValue.ToString() == "7" || DropDownList1.SelectedValue.ToString() == "13")            
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "block");
            B.Style.Add("display", "none");
            C.Style.Add("display", "none");
            D.Style.Add("display", "none");
            E.Style.Add("display", "none");
        }
        else if (DropDownList1.SelectedValue.ToString() == "2" || DropDownList1.SelectedValue.ToString() == "5" || DropDownList1.SelectedValue.ToString() == "19" || DropDownList1.SelectedValue.ToString() == "9" || DropDownList1.SelectedValue.ToString() == "1" || DropDownList1.SelectedValue.ToString() == "3" || DropDownList1.SelectedValue.ToString() == "15" || DropDownList1.SelectedValue.ToString() == "20")
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "block");
            B.Style.Add("display", "block");
           C.Style.Add("display", "none");
            D.Style.Add("display", "none");
            E.Style.Add("display", "none");
        }
        else if (DropDownList1.SelectedValue.ToString() == "12"||DropDownList1.SelectedValue.ToString()=="24" || DropDownList1.SelectedValue.ToString() == "17")
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "block");
            B.Style.Add("display", "block");
            C.Style.Add("display", "block");
            D.Style.Add("display", "none");
            E.Style.Add("display", "none");
        }
        else if (DropDownList1.SelectedValue.ToString() == "6" || DropDownList1.SelectedValue.ToString() == "21" || DropDownList1.SelectedValue.ToString() == "22" || DropDownList1.SelectedValue.ToString() == "10" || DropDownList1.SelectedValue.ToString() == "16" || DropDownList1.SelectedValue.ToString() == "14" || DropDownList1.SelectedValue.ToString() == "8" || DropDownList1.SelectedValue.ToString() == "11")
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "block");
            B.Style.Add("display", "block");
            C.Style.Add("display", "block");
            D.Style.Add("display", "block");
            E.Style.Add("display", "none");
        }
        else if (DropDownList1.SelectedValue.ToString() == "4")
        {
            DM.Style.Add("display", "block");
            A.Style.Add("display", "block");
            B.Style.Add("display", "block");
            C.Style.Add("display", "block");
            D.Style.Add("display", "block");
            E.Style.Add("display", "block");
        }
    }
    public enum MessageType { Success, Error, Info, Warning };

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void btnSuccess_Click(object sender, EventArgs e)
    {
        ShowMessage("Record submitted successfully", MessageType.Success);
    }
    protected void btnDanger_Click(object sender, EventArgs e)
    {
        ShowMessage("A problem has occurred while submitting data", MessageType.Error);
    }
    protected void btnWarning_Click(object sender, EventArgs e)
    {
        ShowMessage("There was a problem with your internet connection", MessageType.Warning);
    }
    protected void btnInfo_Click(object sender, EventArgs e)
    {
        ShowMessage("Please verify your data before submitting", MessageType.Info);
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        string q = "select count(e_no) from event_reg where e_no='"+DropDownList1.SelectedValue+"' and group_name='"+TextBox5.Text+"'";
        DataTable dm = new DataTable();
        if (TextBox5.Text == "")
        {
            ShowMessage("Team name is compulsory", MessageType.Error);
            create_team.Enabled = false;
        }
        else
        {
            dm = db.verifys(q);
            if (dm.Rows[0][0].ToString() != "0")
            {
                create_team.Enabled = false;
                ShowMessage("Team name : " + TextBox5.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event. Please select any other name", MessageType.Error);
            }
            else
            {
                create_team.Enabled = true;
                ShowMessage("Team name : " + TextBox5.Text + " is available for " + DropDownList1.SelectedItem.ToString() + " event.", MessageType.Info);

            }
        }

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox6.Text + "'";
        dm1 = db.verifys(qu);
        if (dm1.Rows[0][0].ToString() == "0")
        {
            create_team.Enabled = false;
            ShowMessage("Id entered "+TextBox6.Text+" is invalid", MessageType.Error);
        }
        else
        {      
            string q = "(select count(e_no) from event_reg where id='" + TextBox6.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox6.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                create_team.Enabled = false;
                ShowMessage("ID:"+TextBox6.Text+" is already registered for "+DropDownList1.SelectedItem.ToString()+" event", MessageType.Error);
            }
            else
                create_team.Enabled = true;
        }
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox7.Text + "'";
        dm1 = db.verifys(qu);
        if (dm1.Rows[0][0].ToString() == "0")
        {
            create_team.Enabled = false;
            ShowMessage("Id entered " + TextBox7.Text + " is invalid", MessageType.Error);
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox7.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox7.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                create_team.Enabled = false;
                ShowMessage("ID:" + TextBox7.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
            }
            else
                create_team.Enabled = true;
        }
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox8.Text + "'";
        dm1 = db.verifys(qu);
        if (dm1.Rows[0][0].ToString() == "0")
        {
            create_team.Enabled = false;
            ShowMessage("Id entered " + TextBox8.Text + " is invalid", MessageType.Error);
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox8.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox8.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                create_team.Enabled = false;
                ShowMessage("ID:" + TextBox8.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
            }
            else
                create_team.Enabled = true;
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox9.Text + "'";
        dm1 = db.verifys(qu);
        if (dm1.Rows[0][0].ToString() == "0")
        {
            create_team.Enabled = false;
            ShowMessage("Id entered " + TextBox9.Text + " is invalid", MessageType.Error);
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox9.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox9.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                create_team.Enabled = false;
                ShowMessage("ID:" + TextBox9.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
            }
            else
                create_team.Enabled = true;
        }
    }
    protected bool valid1()
    {
        string q = "select count(e_no) from event_reg where e_no='" + DropDownList1.SelectedValue + "' and group_name='" + TextBox5.Text + "'";
        DataTable dm = new DataTable();
        if (TextBox5.Text == "")
        {
            ShowMessage("Team name is compulsory", MessageType.Error);
           return false;
        }
        else
        {
            dm = db.verifys(q);
            if (dm.Rows[0][0].ToString() != "0")
            {
                ShowMessage("Team name : " + TextBox5.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event. Please select any other name", MessageType.Error);
                return false;
            }
            else
            {
                ShowMessage("Team name : " + TextBox5.Text + " is available for " + DropDownList1.SelectedItem.ToString() + " event.", MessageType.Info);
                return true;

            }
        }
    }
    protected bool valid2()
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox6.Text + "'";
        dm1 = db.verifys(qu);
        if(TextBox6.Text=="")
        {
            return true;
        }
        else if (dm1.Rows[0][0].ToString() == "0")
        {
            ShowMessage("Id entered " + TextBox6.Text + " is invalid", MessageType.Error);
            return false;
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox6.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox6.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox6.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                ShowMessage("ID:" + TextBox6.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
                return false;
            }
            else
                return true;
        }
    }
    protected bool valid3()
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox7.Text + "'";
        dm1 = db.verifys(qu);
        if(TextBox7.Text=="")
        {
            return true;
        }
        else if (dm1.Rows[0][0].ToString() == "0")
        {
            ShowMessage("Id entered " + TextBox7.Text + " is invalid", MessageType.Error);
            return false;
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox7.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox7.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox7.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                ShowMessage("ID:" + TextBox7.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
                return false;
            }
            else
                return true;
        }
    }
    protected bool valid4()
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox8.Text + "'";
        dm1 = db.verifys(qu);
        if(TextBox8.Text=="")
        {
            return true;
        }
        else if (dm1.Rows[0][0].ToString() == "0")
        {
            ShowMessage("Id entered " + TextBox8.Text + " is invalid", MessageType.Error);
            return false;
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox8.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox8.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox8.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                ShowMessage("ID:" + TextBox8.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
                return false;
            }
            else
                return true;
        }
    }
    protected bool valid5()
    {
        DataTable dm1 = new DataTable();

        String qu = "Select count(id) from register17 where id='" + TextBox9.Text + "'";
        dm1 = db.verifys(qu);
        if(TextBox9.Text=="")
        {
            return true;
        }
        else if (dm1.Rows[0][0].ToString() == "0")
        {
            ShowMessage("Id entered " + TextBox9.Text + " is invalid", MessageType.Error);
            return false;
        }
        else
        {
            string q = "(select count(e_no) from event_reg where id='" + TextBox9.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id1='" + TextBox9.Text + "' and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id2='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id3='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "') union all (select count(e_no) from event_reg where id4='" + TextBox9.Text + "'  and e_no='" + DropDownList1.SelectedValue.ToString() + "')";
            DataTable dm = new DataTable();
            dm = db.verifys(q);

            if ((dm.Rows[0][0].ToString() != "0") || (dm.Rows[1][0].ToString() != "0") || (dm.Rows[2][0].ToString() != "0") || (dm.Rows[3][0].ToString() != "0") || (dm.Rows[4][0].ToString() != "0"))
            {
                ShowMessage("ID:" + TextBox9.Text + " is already registered for " + DropDownList1.SelectedItem.ToString() + " event", MessageType.Error);
                return false;
            }
            else
                return true;
        }
    }

    protected void More_Click(object sender, EventArgs e)
    {

        string url = string.Format("Event_Details.aspx?FN={0}.pdf", (sender as Button).CommandArgument);
        string script = "<script type='text/javascript'> window.open('" + url + "') </script>";
        this.ClientScript.RegisterStartupScript(this.GetType(), "script", script);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList2.SelectedValue=="-1")
            Label4.Text = "Please Select event";
        else if(Convert.ToInt32(DropDownList2.SelectedValue)%2!=0)
        Label4.Text = "8th  March";
        else
        Label4.Text = "9th  March";
    }
}