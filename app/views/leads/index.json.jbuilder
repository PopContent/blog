json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :email
end
