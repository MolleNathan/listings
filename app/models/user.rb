class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :email

  has_many :listings
  belongs_to :role

  def is_admin?
    role.name == 'admin'
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
