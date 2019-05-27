class ToppagesController < ApplicationController
  
  skip_before_action :login_required
  
  def index
    if logged_in?
      @budget = current_user.budget
      @expense = current_user.items.sum(:price)
      @difference = @budget - @expense unless @budget.blank?
    end
  end
end
