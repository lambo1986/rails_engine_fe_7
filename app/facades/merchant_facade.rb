class MerchantFacade

  def merchants
    service = MerchantService.new
    call = service.all_merchants
    merchants = call.map do |merchant|
      Merchant.new(merchant)
    end.sort_by(&:name)
  end

  def merchant_items(merchant_id)
    service = MerchantService.new
    call = service.merchant_items(merchant_id)
    merchant_items = call.map do |merchant_item|
      Item.new(merchant_item)
    end
  end

  def merchant(merchant_id)
    service = MerchantService.new
    call = service.merchant_by_id(merchant_id)
    merchant = Merchant.new(call)
  end

  def merchant_by_name(search_term)
    service = MerchantService.new
    call = service.find_merchant(search_term)
    merchants = call.map do |merchant|
      Merchant.new(call)
    end
  end
end
