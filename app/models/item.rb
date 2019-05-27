class Item < ApplicationRecord
  
  before_validation :set_other_if_category_null
  
  validates :name, presence: true, length: {maximum: 30} 
  validates :price, presence: true 
  
  belongs_to :user
  
  scope :recent, ->{order(created_at: :desc)}
  
  private 
  
  def set_other_if_category_null
    self.category = "その他" if category.blank?
  end
end
