json.array! @applications do |application|
  json.id application.id
  json.user_id application.user_id
  json.form_id application.form_id
end