class User < ApplicationRecord

  def self.authenticate(email, password)
    user = User.where(email: email)
    if user.password == password
      session.create(user: user)
    else
      redirect_to login_path
      flash[:failure] = "Invalid credentials"
    end
  end
end
