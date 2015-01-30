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
    @status = params[:status]
   if params[:status] == "0"
      redirect_to '/fans/new'
    elsif params[:status] == "1"
      redirect_to '/artists/new'
    else
      redirect_to '/venues/new'
    end
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


  
