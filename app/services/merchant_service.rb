class MerchantService# 1
  BASE_URL = "http://localhost:3000"

  def all_merchants#1
    merchant_hash = get_url("/api/v1/merchants")
    merchant_hash[:data]
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
