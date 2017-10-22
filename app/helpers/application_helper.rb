require "bunny"

module ApplicationHelper
  def self.listen_to_shopping_cart()
    puts "listening to all the things"

    conn = Bunny.new(:host => "192.168.1.200")
    conn.start

    ch  = conn.create_channel
    x   = ch.topic "matrix"
    q   = ch.queue "cart_events"

    q.bind x, routing_key: "cart_events"

    puts "Channel initialized"

    begin
      q.subscribe(:block => true) do |delivery_info, properties, body|
        ShoppingCartItemsHelper.handle_queue_event body
      end
    rescue Interrupt => _
      ch.close
      conn.close
    end

  end
end
