json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :organisation.title, :organisation.location, :assessment_count
  json.url person_url(person, format: :json)
end
