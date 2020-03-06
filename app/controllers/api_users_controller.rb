class ApiUsersController < ApplicationController
  before_action :set_api_user, only: [:show, :update, :destroy]

  # GET /api_users
  def index
    @api_users = ApiUser.all

    render json: @api_users
  end

  # GET /api_users/1
  def show
    render json: @api_user
  end

  # POST /api_users
  def create
    @api_user = ApiUser.new(api_user_params)

    if @api_user.save
      render json: @api_user, status: :created, location: @api_user
    else
      render json: @api_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api_users/1
  def update
    if @api_user.update(api_user_params)
      render json: @api_user
    else
      render json: @api_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api_users/1
  def destroy
    @api_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_user
      @api_user = ApiUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_user_params
      params.require(:api_user).permit(:token)
    end
end
