class ApplicationController < ActionController::API
  #any methods here, all other controllers inherit from
  before_action :authorized

  #payload - hash to save in token/sign with key
  def encode_token(payload)
    JWT.encode(payload, 'SECRET')
  end

  #checks if header sent
  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      #retrieve token
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'SECRET', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  #if token has value: decode token, get user data from db
  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  #returns t if user logged in
  def logged_in?
    !!logged_in_user
  end

  #first check if logged in
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
