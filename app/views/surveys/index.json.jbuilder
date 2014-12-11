json.array!(@surveys) do |survey|
  json.extract! survey, :id, :facility_id
  json.url survey_url(survey, format: :json)
end
