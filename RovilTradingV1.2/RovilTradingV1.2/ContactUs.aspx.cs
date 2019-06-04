using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RovilTradingV1._2
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (fromname.Text == null && fromemail.Text == null && fromphone.Text == null && fromcomments.Text == null)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('Oops looks like some information could be missing. Please make sure that you have filled in all the boxes below to place an order. Thank you ! ') </script>");
                }
                else
                {
                    MailMessage mail = new MailMessage();
                    // edited
                    string name = fromname.Text, Email = fromemail.Text, PhoneNo = fromphone.Text, CallTime = fromcalltime.SelectedItem.Text, Comment = fromcomments.Text;

                    SmtpClient SmtpServer = new
                    SmtpClient("smtp.gmail.com");
                    mail.From = new
                    MailAddress("your_email_address@gmail.com");
                    mail.To.Add("tranditsheni@gmail.com");
                    mail.Subject = "Rovil Trading New order";

                    // edited
                    mail.Body = "Name :" + name.ToString() + Environment.NewLine + "Email :" + Email.ToString() + Environment.NewLine + "Phone Number :" + PhoneNo.ToString() + Environment.NewLine + "Call Time :" + CallTime.ToString() + Environment.NewLine + "Comment :" + Comment.ToString();

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new
                    System.Net.NetworkCredential("tranditsheni@gmail.com"
                    ,
                    "Takal@123");
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(mail);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", " <script> alert('Your order has been sent. Thank you !') </script>");
                    fromname.Text = "";
                    fromemail.Text = "";
                    fromphone.Text = "";
                    fromcomments.Text = "";
                }

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<script> alert('" + ex.GetType().ToString() + "') <script>");
            }
        }
    }
}