class Admin::CategoriesController < Admin::ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.by_description#all
  end

  def new
    @category = Category.new
  end

  def show
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'Categoría fue creada exitosamente'
      redirect_to admin_categories_url
    else
      flash[:warning] = @category.errors.full_messages.to_sentence
      render :new
    end
  end

    def update
    if @category.update(category_params)
      flash[:success] = 'Categoría fue actualizada exitosamente'
      redirect_to admin_categories_url
    else
      flash[:warning] = @category.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = 'Categoría fue destruida exitosamente'
      redirect_to admin_categories_url
    else
      flash[:warning] = @category.errors.full_messages.to_sentence
      render :index
    end
  end

private 

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:description)
  end

end
