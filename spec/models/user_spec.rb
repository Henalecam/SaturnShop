require 'rails_helper'

RSpec.describe User, type: :model do
  # Teste: O usuário deve ser válido com atributos válidos
  it "is valid with valid attributes" do
    user = User.new(email: "test@example.com", password: "password123")
    expect(user).to be_valid
  end

  # Teste: O usuário deve ser inválido sem email
  it "is invalid without an email" do
    user = User.new(password: "password123")
    expect(user).not_to be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  # Teste: O usuário deve ser inválido sem senha
  it "is invalid without a password" do
    user = User.new(email: "test@example.com")
    expect(user).not_to be_valid
    expect(user.errors[:password]).to include("can't be blank")
  end

  # Teste: O email deve ser único
  it "does not allow duplicate emails" do
    User.create(email: "test@example.com", password: "password123")
    user = User.new(email: "test@example.com", password: "password123")
    expect(user).not_to be_valid
    expect(user.errors[:email]).to include("has already been taken")
  end
end
