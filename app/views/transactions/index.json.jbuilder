json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :transaction_id, :inventory_id, :date, :supplier_id, :recipient_id, :quantity, :confirmed_supplier, :confirmed_recipient
  json.url transaction_url(transaction, format: :json)
end
