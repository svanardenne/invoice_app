class Invoice < ApplicationRecord
  belongs_to :user

  validates :invoice_number, presence: true
  validates :from_full_name, presence: true
  validates :to_full_name, presence: true
end
