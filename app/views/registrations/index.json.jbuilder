json.array!(@registrations) do |registration|
  json.extract! registration, :id, :student_id, :section_id
  json.url registration_url(registration, format: :json)
end
