class AdminController < ApplicationController
  

    def login
        if request.post?
        if params["user_id"] == "Admin" && params["password"] == "admin"
            session[:admin]="admin"
            redirect_to students_url
        else
            flash[:notice]="Invalid Username or Passowrd"
            render :action=> "login"
        end
    end      
end
def logout
    session[:admin]=nil
    flash[:notice]="Logout Successful"
    redirect_to :action=>login
end

end

