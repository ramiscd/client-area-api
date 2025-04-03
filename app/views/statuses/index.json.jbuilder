json.array! @statuses do |status|
  json.id status.id
  json.name status.name
  json.application_id status.application_id
end