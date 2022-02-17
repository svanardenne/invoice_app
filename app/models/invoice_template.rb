class InvoiceTemplate < ApplicationRecord
  belongs_to :user

  validates :template_name, presence: true
  validates :to_full_name, presence: true
end
