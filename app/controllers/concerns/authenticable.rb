module Authenticable
  def current_user
    @current_user ||= User.find_by(auth_token: request.headers['Authorization'])

    def authenticate_with_token!
      render json: { errors: "Not authenticated" },
             status: :unauthorized unless current_user.present?
    end
  end
end