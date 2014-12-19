json.array!(@listers) do |lister|
  json.extract! lister, :id, :user_id, :movie_id, :vu
  json.url lister_url(lister, format: :json)
end
