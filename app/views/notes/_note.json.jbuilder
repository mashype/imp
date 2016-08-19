json.extract! note, :id, :content, :user_id, :task_id, :created_at, :updated_at
json.url note_url(note, format: :json)