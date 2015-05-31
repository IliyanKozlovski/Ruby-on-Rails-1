class Post < ActiveRecord::Base
	validates :title, length: { minimum: 2 }
	validates :title, presence: true
	validates :content, length: { minimum: 3 }
	validates :content, presence: true
end