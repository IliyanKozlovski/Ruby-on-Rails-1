class Task < ActiveRecord::Base
	belongs_to :lecture
	validates :name, length: { minimum: 2 }
	validates :name, presence: true
end