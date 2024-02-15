class ItemService
  BASE_URL = "http://localhost:3000"

  def all_items
    items = get_url("/api/v1/items")
    items[:data]
  end

  def item_by_id(id)
    item = get_url("/api/v1/items/#{id}")
    item[:data]
  end

  def items_by_min_price(price)
    items = get_url("/api/v1/items/find_all?min_price=#{price}")
    items[:data]
  end

  private

  def get_url(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    conn = Faraday.new(url: BASE_URL)
  end
end
