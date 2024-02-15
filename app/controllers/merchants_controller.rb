class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.merchants
  end

  def show
    @merchant = MerchantFacade.new.merchant(params[:id])
    @merchant_items = MerchantFacade.new.merchant_items(@merchant.id)
  end

  def find
    @merchant = MerchantFacade.new.merchant_by_name(params[:search])
    render :index
  end
end
