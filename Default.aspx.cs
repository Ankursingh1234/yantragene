using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Threading;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using ASPSnippets.SmsAPI;
using System.Security.Cryptography;


public partial class _Default : System.Web.UI.Page
{
    static int s = 60;
    static DateTime StartDate = System.DateTime.Now;
    static DateTime EndDate = System.DateTime.Parse("03/08/2017 10:00:00 AM");//10/24/2016 6:50:26 PM or2016-10-23 16:30:00+05:30
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {
        //    MD5 nd = new MD5CryptoServiceProvider();
        //  //  nd.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));
        //    byte[] res = nd.Hash;
        //    StringBuilder strB = new StringBuilder();
        //    for(int i=0;i<res.Length;i++)
        //    {
        //        strB.Append(res[i].ToString("x2"));
        //    }
        TimeSpan TimeDifference = StartDate - EndDate;
        if (Session["name"] == null)
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#regg').show();});", true);
            regg.Style.Add("display", "block");
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#Ank').show();});", true);
            Ank.Style.Add("display", "block");
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#prof').show();});", true);
            prof.Style.Add("display", "none");

        }
        else
        {
            prof.Style.Add("display", "block");
            regg.Style.Add("display", "none");
            Ank.Style.Add("display", "none");
        }

        if (Session["name"] != null)
        {


        }

        //if (Session["name"] != null)
        //{
        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#rj').hide();});", true);
        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#Lout').show();});", true);
        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#prof').show();});", true);
        //}
        //else
        //{

        //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#Lout').hide();});", true);

        //}
        //SMS.APIType = SMSGateway.Site2SMS;
        //SMS.MashapeKey = "rQqKDzNExymshCJXTw6apQ3uN6G8p134YtDjsnEqLaCMx2F9QY";
        //SMS.Username = "919044525532";
        //SMS.Password = "9405096";
        //SMS.SendSms("7408268408", "Hello User");



    }



    protected void GetTime(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString();
        lblDays.Text = (EndDate - DateTime.Now).Days.ToString();
        if ((EndDate - DateTime.Now).Hours <= 9)
            lblHours.Text = "0" + (EndDate - DateTime.Now).Hours.ToString();
        else
            lblHours.Text = (EndDate - DateTime.Now).Hours.ToString();
        if ((EndDate - DateTime.Now).Minutes <= 9)
            lblMins.Text = "0" + (EndDate - DateTime.Now).Minutes.ToString();
        else
            lblMins.Text = (EndDate - DateTime.Now).Minutes.ToString();
        if ((EndDate - DateTime.Now).Seconds <= 9)
            lblSecs.Text = "0" + (EndDate - DateTime.Now).Seconds.ToString();
        else
            lblSecs.Text = (EndDate - DateTime.Now).Seconds.ToString();
        

    }





    protected void register_btn_Click(object sender, EventArgs e)
    {

        Databs db = new Databs();

        String id = TextBox2.Text;
        var id1 = id.ToCharArray();
        StringBuilder s = new StringBuilder("YG");
        string q = "select COUNT(Name) from register17";
        DataTable dt = new DataTable();
        dt = db.verifys(q);

        for (int i = 0; i < id.Length; i++)
        {
            if (i == 0)
                s.Append(id1[i]);

            else
            {
                if (id1[i] == ' ' && id1[i + 1] != ' ')
                {
                    s.Append(id1[i + 1]);
                }
            }

        }
        int a = 100;
        a = a + Convert.ToInt32(dt.Rows[0][0]) + 1;
        string app = a.ToString();
        s.Append(app);
        s.Append(DateTime.Now.Second.ToString());
        string query = "insert into register17(Id,Name,College,Email,Phone,Passwords) values('" + s + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";

        try
        {
            Session["id"] = s;
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "testScript", " $(document).ready(function() { $('#cg').show();});", true);
            if (TextBox1.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter name');", true);
            }
            else if (!(new Regex(@"^([a-zA-Z]*)$").IsMatch(TextBox1.Text)))
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid character in name');", true);

            }

            else if (TextBox2.Text == "")
            {

                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter college');", true);
            }
            else if (!(new Regex(@"^([a-zA-Z\s]*)$").IsMatch(TextBox2.Text)))
            {

                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid characters in college name');", true);
            }
            else if (!(new Regex(@"^([a-zA-Z0-9_\.\-])+\@(([gmailyhoutk\-])+\.)+([com]{2,4})+$").IsMatch(TextBox3.Text)))
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid Email address');", true);
            }
            else if (TextBox4.Text.Length < 10)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid Mobile no');", true);

            }
            else if (TextBox5.Text.Length < 6 || TextBox5.Text.Length > 12)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter password length between 6-12');", true);

            }
            else if (TextBox5.Text != TextBox6.Text)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Password not matched');", true);

            }
            else
            {
                db.InsertData(query);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data Submitted Successfully Check  your mail for your user id');", true);
            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unable to register. Please verify the e mail.');", true);
        }

    }
    protected void Log_in_btn_Click(object sender, EventArgs e)
    {
        Databs db = new Databs();

        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();


        string query = "Select Id,Name from register17 where Id='" + TextBox7.Text + "' AND passwords='" + TextBox8.Text + "'";
        if (TextBox7.Text == "")
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter user id');", true);
        }
        else if (!(new Regex(@"^([a-zA-Z0-9]*)$").IsMatch(TextBox7.Text)))
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid user id');", true);
        }
        else if (TextBox8.Text == "")
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter  password');", true);

        }
        else if (!(new Regex(@"^([a-zA-Z0-9]*)$").IsMatch(TextBox8.Text)))
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter valid password');", true);

        }
        else
        {

            dt1 = db.verifys(query);
            dt2 = db.verifys("Select count(Name) from register17 where Id='" + TextBox7.Text + "' AND passwords='" + TextBox8.Text + "'");
            try
            {
                if (dt2.Rows[0][0].ToString() != "0")
                {

                    Session["cord"] = "cs";
                    char[] c = TextBox7.Text.ToString().ToCharArray();
                    if (c[0] == 'C' && c[1] == 'O')
                    {
                        Session["cord1"] = dt1.Rows[0][0].ToString();
                        if (c[5] == 'C' && c[6] == 'S')
                        {
                            Session["cord"] = "cs";
                            Response.Redirect("Coordinator.aspx");

                        }
                        else if (c[5] == 'E' && c[6] == 'C')
                        {
                            Session["cord"] = "ec";
                            Response.Redirect("Coordinator.aspx");
                        }
                        else if (c[5] == 'M' && c[6] == 'E')
                        {
                            Session["cord"] = "me";
                            Response.Redirect("Coordinator.aspx");
                        }
                    }
                    else
                    {
                        Session["name"] = dt1.Rows[0][0].ToString();
                        Response.Redirect("Usr_lgn.aspx");
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Logged in as');", true);
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "alert", "alert('Logged in as');", true);
                    }
                }
                else
                {
                    // ClientScript.RegisterStartupScript(GetType(), "alert", "alert('User is not logged..  Check your id or password');", true);
                    //  ShowMessage("User is not logged in", MessageType.Warning);
                    Session["name"] = null;
                }
            }
            catch { }
        }
    }


    protected void Lout_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void SendEmail(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        //Add your email address to the recipients
        msg.To.Add("ankursgh70@gmail.com");
        //Configure the address we are sending the mail from
        MailAddress address = new MailAddress("yantragene17@gmail.com ");
        msg.From = address;
        msg.Subject = "Hello";
        msg.Body = "Hello";

        //Configure an SmtpClient to send the mail.            
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtpout.asia.secureserver.net";
        //  client.Port = 465;

        //Setup credentials to login to our sender email address ("UserName", "Password")
        NetworkCredential credentials = new NetworkCredential("info@yantragene.com", "xxxxxx");
        client.UseDefaultCredentials = true;
        client.Credentials = credentials;

        //Send the msg
        client.Send(msg);

        //Display some feedback to the user to let them know it was sent
        //lblResult.Text = "Your message was sent!";
        //}
        //catch (Exception ex)
        //{
        //    //If the message failed at some point, let the user know
        //   // lblResult.Text = ex.ToString();
        //    //"Your message failed to send, please try again."
        //}
    }
    public static Boolean SendingMail(string From, string To, string Subject, string Body)
    {
        From = "yantragene17@gmail.com";

        To = "shwetangagrawal@gmail.com";
        Subject = "SSSSSSSS";
        Body = "Hissss";
        try
        {
            MailMessage m = new MailMessage("yantragene17@gmail.com", "shwetangagrawal@gmail.com");
            m.Subject = Subject;
            m.Body = Body;
            m.IsBodyHtml = true;
            m.From = new MailAddress(From);

            m.To.Add(new MailAddress(To));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";

            NetworkCredential authinfo = new NetworkCredential("yantragene17@gmail.com", "fest");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = authinfo;
            smtp.Send(m);
            return true;




        }
        catch (Exception ex)
        {
            return false;
        }
    }

}