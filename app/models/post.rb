class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_one_attached :image
	validates :title, presence: true,
                    length: { minimum: 5 }
    # paginates_per 50
end
