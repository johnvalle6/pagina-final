class User < ApplicationRecord
	before_save :minuscula
    include UsersHelper

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :microposts, dependent: :destroy



end
