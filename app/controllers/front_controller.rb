class FrontController < ApplicationController
	# load_and_authorize_resource
  def greeting
  	# @user = current_user
  	@properties = Property.all
  end

  def details
    
    @property = Property.find(params[:property_id])
  end

  def new
	  respond_to do |format|
	    format.html
	    format.js
	  end
  end

end
