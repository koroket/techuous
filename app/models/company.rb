class Company < ActiveRecord::Base
	validates :name,  presence: true, uniqueness: true, length: { maximum: 50 }
	before_validation   :downcase_name

	def downcase_name
      self.name = name.downcase
    end
end
