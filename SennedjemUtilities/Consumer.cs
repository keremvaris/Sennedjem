using RabbitMQ.Client;
using RabbitMQ.Client.Events;
using System;
using System.Text;

namespace SennedjemUtilities
{
    public static class Consumer
    {
        public static void GetQueue()
        {
            var factory = new ConnectionFactory()
            {
                HostName = "localhost",
                UserName = "guest",
                Password = "guest",
            };

            using (IConnection connection = factory.CreateConnection())
            using (IModel channel = connection.CreateModel())
            {
                channel.QueueDeclare(queue: "SennedjemQueue",
                                     durable: false,
                                     exclusive: false,
                                     autoDelete: false,
                                     arguments: null);

                var consumer = new EventingBasicConsumer(channel);

                consumer.Received += (model, mq) =>
                {
                    var body = mq.Body;
                    var message = Encoding.UTF8.GetString(body);

                    Console.WriteLine($"Message:{message}");
                };

                channel.BasicConsume(queue: "SennedjemQueue",
                                     autoAck: true,//true ise mesaj otomatik olarak kuyruktan silinir
                                     consumer: consumer);
                Console.ReadKey();
            }
        }
    }
}
