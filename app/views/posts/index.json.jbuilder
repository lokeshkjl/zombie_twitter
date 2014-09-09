json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :startTime, :endTime, :numberOfPeople, :state, :user_id, :location_id
  json.url post_url(post, format: :json)
end
