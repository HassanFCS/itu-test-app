class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to users_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
    end

    # def destroy

    # end

    private

    def user_params
        params.require(:user).permit(:name, :roll_no)
    end
end
