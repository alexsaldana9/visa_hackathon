module ShoppingCartItemsHelper

  def self.handle_queue_event(message)
    puts "Handling event #{message}"

    #TODO: finish this
    # if "#{message}".start_with?("Add")
    if message.start_with?("add")
        puts "add was sent"
    elsif message.start_with?("remove")
      puts "remove was sent"
    else
      puts "it is a checkout"
    end

  end
end
