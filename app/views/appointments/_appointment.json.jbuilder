json.extract! appointment, :id, :realtor_name, :realtor_phone, :start_time, :end_time, :listing_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
