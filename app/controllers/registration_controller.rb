class RegistrationController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json
    end
  end
  def confirmation
  	  respond_to do |format|
      format.html
      format.json
  	end
  end

end
