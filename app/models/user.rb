class User < ApplicationRecord
  has_many :invoices, dependent: :destroy
  has_many :invoice_templates, dependent: :destroy
  has_one :settings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :first_name, presence: true
end
