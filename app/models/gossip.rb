class Gossip < ApplicationRecord
    validates :title, presence: true, length: { minimun: 3,maximum: 14 }
    validates :content, presence: true, length: { maximum: 500 }
    belongs_to :user
    has_many :join_table_tag_to_gossips, dependent: :destroy
    has_many :tags, through: :join_table_tag_to_gossips
end
