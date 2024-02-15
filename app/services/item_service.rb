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

  private

  def get_url(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    conn = Faraday.new(url: BASE_URL)
  end
end
