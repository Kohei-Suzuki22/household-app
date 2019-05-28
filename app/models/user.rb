class User < ApplicationRecord
  before_save {self.email.downcase!}
  before_validation :set_zero_if_budget_null
  
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false},
                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  has_secure_password
  
  has_many :items, dependent: :destroy
  
  def set_zero_if_budget_null 
    self.budget = 0 if budget.blank?
  end 
end
