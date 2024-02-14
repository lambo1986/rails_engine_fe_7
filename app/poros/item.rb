class Item
  attr_reader :id, :type, :name, :description, :unit_price, :merchant_id

  def initialize(attrs)
    @id = attrs[:id]
    @type = attrs[:type]
    @name = attrs[:attributes][:name]
    @description = attrs[:attributes][:description]
    @unit_price = attrs[:attributes][:unit_price]
    @merchant_id = attrs[:attributes][:merchant_id]
  end
end
