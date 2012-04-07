#encoding : utf-8
class LoginController < ApplicationController
	def new
	end

	def create
		@admin = Admin.authentication(params[:email], params[:password])
		if @admin
			session[:admin_id] = @admin.id
			flash[:notice] = "#{@admin.email},欢迎回来！"
			redirect_to posts_path
		else
			flash[:notice] = "Email或者密码不正确，请重新输入！"
			redirect_to new_login_path
		end
	end
	
end
