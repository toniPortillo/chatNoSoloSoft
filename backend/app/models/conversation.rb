class Conversation
  include Mongoid::Document
  field :name, type: String
  
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :users

  validates_presence_of :name
end
