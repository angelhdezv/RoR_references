class WelcomeController < ApplicationController
  def index
    if current_user!=nil
      redirect_to doctors_doctoradmin_path
    end  
  end
end
