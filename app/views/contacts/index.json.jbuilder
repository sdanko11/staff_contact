json.array!(@contacts) do |contact|
  json.extract! contact, :id, :email_address, :subject, :description, :description, :first_name, :last_name
  json.url contact_url(contact, format: :json)
end
