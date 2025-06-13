class Chat < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  has_many :messages, dependent: :destroy
  

  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validate :sender_and_receiver_must_be_different  
  scope :for_user, ->(user) { where("sender_id = ? OR receiver_id = ?", user.id, user.id) }
  
  def other_participant(current_user)
    sender_id == current_user.id ? receiver : sender
  end
  def last_message
    messages.order(:created_at).last
  end
  def sender_and_receiver_must_be_different
    if sender_id == receiver_id
      errors.add(:base, "No puedes crear un chat contigo mismo")
    end
  end
end
