# app/controllers/application_controller.rb
class ApplicationController < ActionController::API
  include Pundit

  # Gerenciar erros de autorização
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    render json: { error: 'Você não está autorizado a realizar esta ação.' }, status: :forbidden
  end
end
