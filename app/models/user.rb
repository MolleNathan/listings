class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :listings
  belongs_to :role

  def is_admin?
    self.role.name == "Admin"
  end

  def is_user?
    self.role.name == "User"
  end

end
