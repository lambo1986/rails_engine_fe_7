class MerchantFacade
  
  def merchants
    service = MerchantService.new
    call = service.all_merchants
    @merchants = call.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
