class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :hoa_memberships
  has_many :hoas, through: :hoa_memberships

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone
  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
