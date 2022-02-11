class User < ApplicationRecord
  has_many :invoices, dependent: :destroy
  has_many :invoice_templates, dependent: :destroy
  has_one :profile, dependent: :destroy
  before_create :build_associations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :first_name, presence: true

  def profile
    super || build_profile(current_template: :null)
  end

  private

  def build_associations
    profile || true
  end
end
