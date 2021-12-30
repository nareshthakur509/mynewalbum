class Album < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 4 }
  belongs_to :user
  has_many :photos, dependent: :destroy
end
