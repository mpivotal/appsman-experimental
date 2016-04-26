json.array!(@apps) do |app|
  json.extract! app, :id, :application_name, :application_uris, :state, :limits, :details, :space_id, :buildpack, :last_uploaded, :services
  json.url app_url(app, format: :json)
end
