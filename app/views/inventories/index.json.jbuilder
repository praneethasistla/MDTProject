json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :inventory_id, :name, :description, :quantity_original, :quantity_remaining, :supplier_id, :date
  json.url inventory_url(inventory, format: :json)
end
