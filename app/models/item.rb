class Item < ApplicationRecord
  validates :name, presence: true, length: {maximum: 30} 
  validates :price, presence: true 
  
  belongs_to :user
  
  scope :recent, ->{order(created_at: :desc)}
end
