json.array!(@spaces) do |space|
  json.extract! space, :id, :name, :org_id
  json.url space_url(space, format: :json)
end
