using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //בשביל הוולידציה
        string JQueryVer = "1.7.1";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            //יבוא של jquery בשביל validation
            Path = "~/Scripts/jquery-" + JQueryVer + ".min.js",
            DebugPath = "~/Scripts/jquery-" + JQueryVer + ".js",
            CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".min.js",
            CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".js",
            CdnSupportsSecureConnection = true,
            LoadSuccessExpression = "window.jQuery"
        });
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage("buildblueworks@gmail.com", "buildblueworks@gmail.com");
        mm.Subject = txtSubject.Text;
        mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;
        mm.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
        NetworkCred.UserName = "buildblueworks@gmail.com";
        NetworkCred.Password = "BLUEworks1234";//לאפשר גישה לאפליקציות לא בטוחות
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);
        lblMessage.Text = "המייל נשלח בהצלחה! ";
    }
}