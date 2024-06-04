# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def new_blog
        @username = params[:username]
      end
      
      
    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to new_post_path, notice: "User was successfully created." }
        else
          format.html { render :post }
        end
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name)
    end


  

  end
  