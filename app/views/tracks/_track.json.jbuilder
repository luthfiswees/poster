json.extract! track, :id, :artist, :track, :album, :created_at, :updated_at
json.url track_url(track, format: :json)