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
end
