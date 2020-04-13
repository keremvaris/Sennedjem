using System;
using System.Text;
using Microsoft.Extensions.Configuration;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;

namespace Core.Utilities.MessageBrokers.RabbitMq
{
  public class MqConsumerHelper : IMessageConsumer
  {
    public IConfiguration Configuration;
    private readonly MessageBrokerOptions _brokerOptions;
    public MqConsumerHelper(IConfiguration configuration)
    {
      Configuration = configuration;
      _brokerOptions = Configuration.GetSection("MessageBrokerOptions").Get<MessageBrokerOptions>();
    }
    public void GetQueue()
    {
      var factory = new ConnectionFactory()
      {
        HostName = _brokerOptions.HostName,
        UserName = _brokerOptions.UserName,
        Password = _brokerOptions.Password
      };
      using (IConnection connection = factory.CreateConnection())
      using (IModel channel = connection.CreateModel())
      {
        channel.QueueDeclare(queue: "OASQueue",
                             durable: false,
                             exclusive: false,
                             autoDelete: false,
                             arguments: null);

        var consumer = new EventingBasicConsumer(channel);

        consumer.Received += (model, mq) =>
        {
          var body = mq.Body;
          var message = Encoding.UTF8.GetString(body);

          Console.WriteLine($"Message: {message}");
        };

        channel.BasicConsume(queue: "OASQueue",
                             autoAck: true,//true ise mesaj otomatik olarak kuyruktan silinir
                             consumer: consumer);
        Console.ReadKey();

      }

    }
  }
}
