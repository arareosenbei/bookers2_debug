class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, null: false
	validates :body, presence: true, null:false, length: {maximum: 200}
end
