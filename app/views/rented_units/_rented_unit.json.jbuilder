json.extract! rented_unit, :id, :unit_no, :unit_model, :price, :bedrooms, :bathrooms, :half_baths, :square_footage, :leased, :appointment_id, :created_at, :updated_at
json.url rented_unit_url(rented_unit, format: :json)
