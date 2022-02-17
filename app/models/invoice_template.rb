class InvoiceTemplate < ApplicationRecord
  belongs_to :user

  validates :template_name, presence: { message: 'Template Name is required.' }
  validates :to_full_name, presence: { message: 'To Full Name is required.' }
end
