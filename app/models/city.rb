class City < ApplicationRecord
    has_many :users
    # validates :name, presence: true, length: { maximum: 60 }
    # validates :zip_code, presence: true, length: { maximum: 15 }
end
