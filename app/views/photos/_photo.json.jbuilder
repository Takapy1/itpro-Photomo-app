json.extract! photo, :id, :photo_id, :date, :location, :title, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)
