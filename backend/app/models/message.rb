class Message
  include Mongoid::Document
  field :content, type: String
  
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :content
end
