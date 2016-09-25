class AddCompletedToTodoItem < ActiveRecord::Migration
  def change
    remove_column :todo_items, :completed, :boolean, default: false
  end
end
