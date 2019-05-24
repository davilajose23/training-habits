json.extract! activity_record, :id, :date, :description, :quantity, :activity_type_id, :user_id, :created_at, :updated_at
json.url activity_record_url(activity_record, format: :json)
