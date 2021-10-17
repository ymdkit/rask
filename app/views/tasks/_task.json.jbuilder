json.extract! task, :id, :content, :description, :due_at, :created_at, :updated_at
json.set! :assigner do
  json.extract! User.find_by_id(task.assigner_id), :id, :name
end
json.set! :creator do
  json.extract! User.find_by_id(task.creator_id), :id, :name
end
json.set! :project do
  json.extract! Project.find_by_id(task.project_id), :id, :name
end
json.url task_url(task, format: :json)
