using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using MimeKit;
using MimeKit.Text;
using System;
using System.Linq;

namespace Core.Utilities.Mail
{
  public class MailManager : IMailService
  {
    private IHostingEnvironment _hostingEnvironment;
    private IEmailConfiguration _emailConfiguration;
    private readonly IConfiguration _configuration;
    public MailManager(IHostingEnvironment hostingEnvironment, IEmailConfiguration emailConfiguration, IConfiguration configuration)
    {
      _hostingEnvironment = hostingEnvironment;
      _emailConfiguration = emailConfiguration;
      _configuration = configuration;
    }
    public void Send(EmailMessage emailMessage)
    {
      var message = new MimeMessage();
      message.To.AddRange(emailMessage.ToAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));
      message.From.AddRange(emailMessage.FromAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));

      message.Subject = emailMessage.Subject;

      // var templatePath = _hostingEnvironment.WebRootPath + Path.DirectorySeparatorChar.ToString() + "MailTemplate" + Path.DirectorySeparatorChar.ToString() + "MailTemplate.html";
      //var builder = new BodyBuilder();
      //using (StreamReader sourceReader = File.OpenText(templatePath))
      //{
      //    builder.HtmlBody = sourceReader.ReadToEnd();
      //}
      string messageBody = string.Format(/*builder.HtmlBody,*/ emailMessage.Subject, emailMessage.Content);

      message.Body = new TextPart(TextFormat.Html)
      {
        Text = messageBody
      };
      using (var emailClient = new SmtpClient())
      {
        emailClient.Connect(_configuration.GetSection("EmailConfiguration").GetSection("SmtpServer").Value,
            Convert.ToInt32(_configuration.GetSection("EmailConfiguration").GetSection("SmtpPort").Value),
            MailKit.Security.SecureSocketOptions.Auto);
        emailClient.Send(message);
        emailClient.Disconnect(true);
      }
    }
  }
}
