class MerchantService# 1 # requires rails_engine app running console (https://github.com/lambo1986/rails_engine_be)
  BASE_URL = "http://localhost:3000"

  def all_merchants#1
    merchant_hash = get_url("/api/v1/merchants")
    merchant_hash[:data]
  end

  def merchant_items(merchant_id)
    items_for_merchant = get_url("/api/v1/merchants/#{merchant_id}/items")
    items_for_merchant[:data]
  end

  private

  def get_url(path)#1
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn#1
    Faraday.new(url: BASE_URL)
  end
end
