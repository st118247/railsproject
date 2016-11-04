json.extract! housingdetail, :id, :versionid, :category, :size, :rent, :details, :created_at, :updated_at
json.url housingdetail_url(housingdetail, format: :json)