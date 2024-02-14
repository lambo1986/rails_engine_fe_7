class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.merchants
  end

  def show
    @merchants = MerchantFacade.new.merchants
    @merchant = @merchants.find { |m| m.id == params[:id] }
    @merchant_items = MerchantFacade.new.merchant_items(@merchant.id)
  end
end
