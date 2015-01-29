class RegistrationController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json
    end

  def show
  end

  def new
  end

  def edit
  end

  def create
    name = params[:name]
    Registration.create(item_name:name)
  end

  def update
  end

  def destroy
  end
  end
  def confirmation
  	  respond_to do |format|
      format.html
      format.json
  	end
  end

end


  
