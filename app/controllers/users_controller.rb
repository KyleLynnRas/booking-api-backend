class UsersController < ApplicationController
  #run authorized inherited from appcontroller before autologin
  before_action :authorized, only: [:auto_login]

  # Sign up 
  def create
    @user = User.create(user_params)
    #match schema
    if @user.valid?
      #create token
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # Log in 
  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      @username = @user.username
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end
  
  def auto_login
    render json: @user
  end
  
  # GET /mypage 
  def mypage
    @user = User.find_by(username: params[:username])
    #exclude password and other info not needed 
    render json: {user: @user.to_json(except: [:password_digest, :created_at, :updated_at], include: [:reviews, :performances])}
  end
  

  private
  # params from route 
  def user_params
      params.permit(:username, :password)
  end

end
