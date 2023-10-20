json.extract! commentary, :id, :comment, :is_reported, :is_masked, :created_at, :updated_at
json.url commentary_url(commentary, format: :json)
