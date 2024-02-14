class MerchantFacade

  def merchants
    service = MerchantService.new
    call = service.all_merchants
    @merchants = call.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant_items(merchant_id)
    service = MerchantService.new
    call = service.merchant_items(merchant_id)
    @merchant_items = call.map do |merchant_item|
      Item.new(merchant_item)
    end
  end
end
