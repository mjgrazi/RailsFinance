json.array!(@quotes) do |quote|
  json.extract! quote, :id, :symbol, :date, :open, :close, :high, :low, :volume
  json.url quote_url(quote, format: :json)
end
