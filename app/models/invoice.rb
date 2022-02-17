class Invoice < ApplicationRecord
  belongs_to :user

  validates :invoice_number, presence: true
end
