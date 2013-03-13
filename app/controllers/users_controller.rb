class UsersController < ApplicationController
  before_filter :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end


def create
  @user = User.new(params[:user])

  if params[:user][:password].blank?
    params[:user].delete(:password)
    params[:user].delete(:password_confirmation)
  end

  respond_to do |format|
    if @user.save
      format.html { redirect_to users_url, notice: 'User was successfully created.' }
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: "new" }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
