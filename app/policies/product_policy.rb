# app/policies/product_policy.rb
class ProductPolicy < ApplicationPolicy
  def index?
    true # Todos podem visualizar produtos
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
