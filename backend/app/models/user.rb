class User
  include Mongoid::Document
  field :name, type: String

  has_and_belongs_to_many :conversations, dependent: :destroy
  has_many :messages
end
