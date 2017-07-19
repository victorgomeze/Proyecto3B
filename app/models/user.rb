class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :registro
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #validates :rut, rut :true
end
