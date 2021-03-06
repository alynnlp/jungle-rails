class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation(order, user)
    @order = order
    @user = user
    mail(to: @order.email, subject: 'Confirmation for order id #{@order.id}')
  end
end
