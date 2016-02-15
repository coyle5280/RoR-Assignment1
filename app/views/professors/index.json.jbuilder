json.array!(@professors) do |professor|
  json.extract! professor, :id, :name, :office
  json.url professor_url(professor, format: :json)
end
