class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory

  validates_presence_of :date
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :inventory_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :supplier_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :recipient_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
