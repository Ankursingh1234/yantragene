using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailAddress mailfrom = new MailAddress("info@yantragene.com");
        MailAddress mailto = new MailAddress("ankursgh70@gmail.com");
        MailMessage newmsg = new MailMessage(mailfrom, mailto);
         newmsg.Subject = "Resume Posted";
        newmsg.Body = "See Attached Resume";
        newmsg.Bcc.Add("yantragene17@gmail.com");
        SmtpClient smtp = new SmtpClient("relay-hosting.secureserver.net", 25);
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new NetworkCredential("info@yantragene.com", "divyatanuj");
       
        smtp.Send(newmsg);
    }
}