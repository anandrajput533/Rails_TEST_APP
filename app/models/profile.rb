class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  # validates :phone, length: { is: 10 }, allow_blank: true

end
