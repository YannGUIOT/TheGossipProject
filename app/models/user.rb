class User < ApplicationRecord
    # validates :first_name, presence: true, length: { maximum: 30 }
    # validates :last_name, presence: true, length: { maximum: 30 }
    # validates :description, presence: true, length: { maximum: 500 }
    # validates :email, presence: true, uniqueness: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "correct email adress svp"}
    # validates :age, presence: true, length: { in: 1..130 }

    belongs_to :city
    has_many :gossips, dependent: :destroy
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "JoinTablePmRecipient"
end
