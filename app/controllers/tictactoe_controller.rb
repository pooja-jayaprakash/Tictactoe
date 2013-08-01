class TictactoeController < ApplicationController
    def home
    end
    
    def signin
      auth = request.env["omniauth.auth"]
      if User.find_by_email(auth["info"]["email"])
        user = User.find_by_email(auth["info"]["email"])
        user.num_login = user.num_login + 1
        user.save
        session[:email] = user.email
        session[:name] = user.name
        session[:num_login] = user.num_login
      else
        user = User.new
        user.name = auth["info"]["name"]
        user.email = auth["info"]["email"]
        user.num_login = 1
        user.save
        session[:email] = user.email
        session[:name] = user.name
        session[:num_login] = user.num_login
      end
      redirect_to action:  :home
    end
end
