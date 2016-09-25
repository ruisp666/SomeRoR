class TodoItem < ActiveRecord::Base



def self.get_completed_count
	/todo_items.count('completed','true')/
	self.where('completed = ?', true).count
end

end
