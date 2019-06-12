class Admin::ClasificationsController < Admin::ApplicationController
  before_action :set_clasification, only: [:show, :edit, :update, :destroy]

  def index
    @clasifications = Clasification.all
  end

  def new
    @clasification = Clasification.new
  end

  def show
  end

  def edit
  end

  def create
    @clasification = Clasification.new(clasification_params)
    if @clasification.save
      flash[:success] = 'Clasificación fue creada exitosamente'
      redirect_to admin_clasifications_url
    else
      flash[:warning] = @clasification.errors.full_messages.to_sentence
      render :new
    end
  end

    def update
    if @clasification.update(clasification_params)
      flash[:success] = 'Clasificación fue actualizada exitosamente'
      redirect_to admin_clasifications_url
    else
      flash[:warning] = @clasification.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    if @clasification.destroy
      flash[:success] = 'Clasificación fue destruida exitosamente'
      redirect_to admin_clasifications_url
    else
      flash[:warning] = @clasification.errors.full_messages.to_sentence
      render :index
    end
  end

private 

  def set_clasification
    @clasification = Clasification.find(params[:id])
  end

  def clasification_params
    params.require(:clasification).permit(:category_id,:activity_id)
  end


end
