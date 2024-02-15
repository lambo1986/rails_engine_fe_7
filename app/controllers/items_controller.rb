class ItemsController < ApplicationController
  def index
    @items = ItemFacade.new.items
  end

  def show
    @item = ItemFacade.new.item(params[:id])
  end

  def find_all
    @search_items = ItemFacade.new.find_all_by_min_price(params[:search])
    render :index
  end
end
