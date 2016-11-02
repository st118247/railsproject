json.extract! studenthousinginfo, :id, :version, :category, :roomsize, :rent, :detail, :created_at, :updated_at
json.url studenthousinginfo_url(studenthousinginfo, format: :json)