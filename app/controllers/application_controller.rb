class ApplicationController < ActionController::Base
  include SessionsHelper

  def create_tempfile(file)      
    tempfile = Tempfile.open(["temp", ".pdf"])
    tempfile.binmode
    tempfile.write(file)
    tempfile.rewind

    return tempfile
  end


  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインしてください"
        redirect_to login_url, status: :see_other
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url, status: :see_other) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url, status: :see_other) unless current_user.admin?
    end
end
