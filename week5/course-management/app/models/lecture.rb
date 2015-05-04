class Lecture < ActiveRecord::Base
	has_many :tasks
	validates :name, length: { minimum: 2 }
	validates :name, presence: true
end