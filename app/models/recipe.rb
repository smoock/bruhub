class Recipe < ActiveRecord::Base
	belongs_to :user
	validates :name, length: { maximum: 50 }
end
