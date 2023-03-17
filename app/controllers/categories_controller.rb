class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

    # Case the PO has not enough images to fill each category page, will use this conditions to render each partial view
    # if @category.id == 1
    #   render partial: 'jobs/newborn'
    # elsif @category.id == 2
    #   render partial: 'jobs/maternity'
    # else
    #   render partial: 'jobs/cakesmash'
    # end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save!
      if @category.save
        redirect_to category_path(@category)
      else
        render :new
      end
  end

  def destroy
    @category = Category.destroy(params[:id])
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :photo)
  end

end
