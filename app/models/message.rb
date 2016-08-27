class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :number, :content
  validates :name, :email, :number, :content, presence: true
end
