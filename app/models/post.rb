class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  acts_as_taggable_on :tags
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
end
