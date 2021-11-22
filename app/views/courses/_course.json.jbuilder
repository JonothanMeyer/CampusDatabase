json.extract! course, :prefix, :number, :description, :teacher_id, :created_at, :updated_at
json.url course_url(course, format: :json)