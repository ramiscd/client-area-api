json.id @application.id
json.user do
  json.id @application.user.id
  json.full_name @application.user.full_name
  json.email @application.user.email
end
json.form do
  json.id @application.form.id
  json.country @application.form.country
  json.question @application.form.question
  json.document_passport @application.form.document_passport
  json.document_rg @application.form.document_rg
  json.payment @application.form.payment
  json.form_type @application.form.form_type
end
json.statuses @application.statuses do |status|
  json.id status.id
  json.name status.name
  json.created_at status.created_at
  json.updated_at status.updated_at
end