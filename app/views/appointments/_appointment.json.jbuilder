json.extract! appointment, :id, :teacher_id, :parents_id, :appointment_date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)