class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.merchants
  end

  def show
    @merchants = MerchantFacade.new.merchants
    @merchant = MerchantFacade.new.merchant(params[:id])
    @merchant_items = MerchantFacade.new.merchant_items(@merchant.id)
  end

  def find_all
    search = params[:search]
    @merchants = MerchantFacade.new.merchant_by_name(search)
    render :index
  end
end
