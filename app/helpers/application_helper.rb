module ApplicationHelper

  def client_image
    "background: url(#{@portfolio.image_main.url}) no-repeat cover;"
  end

end
