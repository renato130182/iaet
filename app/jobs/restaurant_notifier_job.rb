class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts "Hello FROM SIDEKIQ"
    puts "Pedido criado po #{user.email}"
  end
end
