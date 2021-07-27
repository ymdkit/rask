json.extract! task, :id, :content, :user_id, :created_at, :updated_at, :project_id
json.url task_url(task, format: :json)
