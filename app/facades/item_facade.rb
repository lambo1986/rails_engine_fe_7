class ItemFacade

  def items
    service = ItemService.new
    call = service.all_items
    items = call.map { |item| Item.new(item) }
    items.sort_by { |item| item.name }
  end

  def item(id)
    service = ItemService.new
    call = service.item_by_id(id)
    item = Item.new(call)
  end

  def find_all_by_min_price(price)
    service = ItemService.new
    call = service.items_by_min_price(price)
    items = call.map { |item| Item.new(item) }
    items.sort_by { |item| item.name }
  end
end
