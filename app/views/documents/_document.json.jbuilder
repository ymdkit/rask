json.extract! document, :id, :content, :user_id, :created_at, :updated_at, :project_id, :start_at, :end_at, :location,
json.url document_url(document, format: :json)
