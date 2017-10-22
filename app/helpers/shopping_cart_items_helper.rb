module ShoppingCartItemsHelper

  def self.handle_queue_event(message)
    puts "Handling event #{message}"

    #TODO: finish this
    # if "#{message}".start_with?("Add")
    if message.start_with?("add")
        puts "add was sent"
        id = message.split(',')
        puts "id: #{id[1][0]}"
        product_id = id[1][0]
        puts "product id : #{product_id}"

        ShoppingCartItem.create!(prod_qty: 1, user_id: User.first.id, product_id: product_id.to_i)

    elsif message.start_with?("remove")
      puts "remove was sent"
      id = message.split(',')
      puts "id: #{id[1][0]}"
      product_id = id[1][0]
      # puts "product id : #{product_id}"

      # ShoppingCartItem.destroy(product_id: product_id.to_i)
      ShoppingCartItem.where(product_id: product_id.to_i).last.destroy
    else
      puts "it is a checkout"
      ShoppingCartItem.destroy_all
    end

  end
end
