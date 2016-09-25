class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :todo_items, :user_id, :integer
  end
end
