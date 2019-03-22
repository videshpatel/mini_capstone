class Order < ApplicationRecord
  # has_many :users
  # has_many :products, through: :user
  
  belongs_to :user
  has_many :carted_products
end
