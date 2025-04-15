json.array! @status_changes do |status_change|
  json.id status_change.id
  json.application_id status_change.application_id
  json.status_id status_change.status_id
  json.created_at status_change.created_at
end
