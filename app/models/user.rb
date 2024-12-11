# app/models/user.rb
class User < ApplicationRecord
  # Devise modules disponíveis
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
