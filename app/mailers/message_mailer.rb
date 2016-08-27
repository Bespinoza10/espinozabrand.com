class MessageMailer < ApplicationMailer

  default :to => "espinozab100@gmail.com"
  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: "Email From Website", body: @msg.content
  end

end
