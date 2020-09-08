using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Text;
using IGPROG;

/// <summary>
/// Summary description for SendMail
/// </summary>
/// 
namespace IGPROG
{
    public class SendMail
    {
        string _InfoMessage;

        public SendMail()
        {
            _InfoMessage = null;

        }


        public void Send(string sendToEmail, string messageSubject, string messageBody, string successMessage, string messageToCustomer, string errorMessage)
        {
            ApplicationSettings applicationSettings = new ApplicationSettings();
       
            string Email = applicationSettings.Email;
            string Password = applicationSettings.EmailPassword;
            int ServerPort = Convert.ToInt32(applicationSettings.ServerPort);
            string ServerHost = applicationSettings.ServerHost;
            string additionalMail1 = applicationSettings.AdditionalMail1;
            string additionalMail2 = applicationSettings.AdditionalMail2;
            string additionalMail3 = applicationSettings.AdditionalMail3;

            try
            {
                MailMessage mailMessage = new MailMessage();

                SmtpClient Smtp_Server = new SmtpClient();
                Smtp_Server.UseDefaultCredentials = false;
                Smtp_Server.Credentials = new NetworkCredential(Email, Password);
                Smtp_Server.Port = ServerPort;
                Smtp_Server.EnableSsl = true;
                Smtp_Server.Host = ServerHost;

                mailMessage.To.Add(sendToEmail);    //Mail na koji se salje poruka
                
                //Dodatni mail na koji se salje poruka ako se mail šalje meni
                //if (Email == sendToEmail)
                //{
                    if (!string.IsNullOrEmpty(additionalMail1))
                    {
                        mailMessage.To.Add(additionalMail1);
                    }
                    if (!string.IsNullOrEmpty(additionalMail2))
                    {
                        mailMessage.To.Add(additionalMail2);
                    }
                    if (!string.IsNullOrEmpty(additionalMail3))
                    {
                        mailMessage.To.Add(additionalMail3);
                    }
                //}

                mailMessage.From = new MailAddress(Email);   //Moj mail sa koje se salje poruka b(igprog@yahoo.com)
                mailMessage.Subject = messageSubject;
                mailMessage.Body = messageBody;

                Smtp_Server.Send(mailMessage);
                _InfoMessage = successMessage;

            }
            catch (Exception ex)
            {
                _InfoMessage = errorMessage;
                return;
            }
        }


//        private string SuccessMessage()
//        {
        
//            StringBuilder sb = new StringBuilder();
//            sb.AppendLine(string.Format(@"
//            <div style=""border-style:dotted; border-width:1px"">
//                <h3>Message Send</h3> 
//                <h4>Details:</h4>
//            </div>"));

//            return sb.ToString();
//        }

//        private string MessageToCustomer()
//        {
           

//            StringBuilder sb = new StringBuilder();
//            sb.AppendLine(string.Format(@"Hello,"));

//            return sb.ToString();

//        }


//        private string ErrorMessage()
//        {
//            StringBuilder sb = new StringBuilder();
//            Booking booking = new Booking();

//            sb.AppendLine(string.Format(@"
//                   <div class=""alignLeft"">
//                    <h3>{0}</h3>
//                    <p>{1}</p>
//                    <p>{2}</p>
//                   </div>"
//                , "Error!"
//                , booking.Guest
//                , booking.Arrival));

//            return sb.ToString();
//        }


        public string InfoMessage
        {
            get { return _InfoMessage; }
        }



       



    }
}