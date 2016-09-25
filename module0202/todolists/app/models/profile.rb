
 

class Profile < ActiveRecord::Base
  belongs_to :user
  validate :both_not_null, :male_not_sue
  validates :gender, inclusion: { in: %w(male female)}

  def both_not_null
   if (first_name == nil && last_name == nil) 
   	errors.add(:username, "Cannot have both first_name and last_name null")
   end
  end

def male_not_sue
	if (gender=='male' && first_name=='Sue')
		errors.add(:first_name, "Cannot be male and called Sue")
end
end

def self.get_all_profiles(min_b, max_b)
	self.where(:birth_year => min_b-1...max_b+1).order(birth_year: :asc)
end

end





