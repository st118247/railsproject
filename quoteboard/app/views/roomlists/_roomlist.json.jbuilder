json.extract! roomlist, :id, :cat, :dorm, :room, :abc, :studentid, :status, :created_at, :updated_at
json.url roomlist_url(roomlist, format: :json)