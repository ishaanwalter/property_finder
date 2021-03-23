class PropertiesController < ApplicationController
  load_and_authorize_resource
  def index
    # @user = current_user
    @properties = Property.all
    

  end
  def show
     @property = Property.find(params[:id])
  end

  

   

  def new
     @property = Property.new
  end

  def create
    # @property = Property.new(property_params)

    @property = current_user.properties.create(property_params)
    respond_to do |format|
      if @property.save
        format.html { redirect_to user_properties_path, notice: 'Successfully Added Property' }
        format.json { render :new, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end

    # if @property.save
    #   redirect_to @property
    # else
    #   render :new
    # end
  end

  def edit

    @property = Property.find(params[:id])
  end

  def update

    @property = Property.find(params[:id])

    if @property.update(property_params)

      flash[:notice] = "Property updated."
      redirect_to user_properties_path
    else
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    flash[:alert] = 'Property deleted.'
    redirect_to  user_properties_path
  end
  
  

    private
    def property_params
      params.require(:property).permit(:title, :rooms, :bathrooms, :address, :price, :dimentions, :summary, :features, :direction, :available_date, images: [])
    end




  
end
