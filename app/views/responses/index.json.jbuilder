json.array!(@responses) do |response|
  json.extract! response, :id, :text, :question_id, :survey_id
  json.url response_url(response, format: :json)
end
