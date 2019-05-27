class AddBudgetToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :budget, :integer
  end
  
  def down 
    remove_column :users, :budget, :integer
  end
end
