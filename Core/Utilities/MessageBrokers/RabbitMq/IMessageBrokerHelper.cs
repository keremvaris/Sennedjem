using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Utilities.MessageBrokers.RabbitMq
{
    public interface IMessageBrokerHelper
    {
        void QueueMessage(string messageText);
    }
}
