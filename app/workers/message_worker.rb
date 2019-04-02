module Worker
  class Message
    include Sneakers::Worker
    from_queue  :my_messages,
                exchange: 'my_exchange',
                exchange_type: :topic,
                routing_key: 'my_exchange.my_routing_key',
                arguments: {
                  'x-dead-letter-exchange' => 'my_messages.dlx',
                  'x-dead-letter-routing-key' => 'my_messages'
                }

    def work(msg)
      1/0
      payload = JSON.parse(msg)

      p payload
      worker_trace "FOUND <#{payload}>"
      reject!
    end
  end
end
