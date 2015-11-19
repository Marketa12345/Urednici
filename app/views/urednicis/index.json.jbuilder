json.array!(@urednicis) do |urednici|
  json.extract! urednici, :id, :name, :surname, :street, :city, :zip
  json.url urednici_url(urednici, format: :json)
end
