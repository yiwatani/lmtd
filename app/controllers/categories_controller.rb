class CategoriesController < ApplicationController
  before_action :set_category, only: :show

  def show
    @tweets = Tweet.where(category_id: params[:id]).order("created_at DESC").page(params[:page]).per(10)
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

end
