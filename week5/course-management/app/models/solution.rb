class Solution < ActiveRecord::Base
	belongs_to :task
	validates :name, length: { minimum: 2 }
	validates :name, presence: true
end