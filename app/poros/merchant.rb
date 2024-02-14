class Merchant
  attr_reader :id, :type, :name

  def initialize(attrs)
    @id = attrs[:id]
    @type = attrs[:type]
    @name = attrs[:attributes][:name]
  end
end
