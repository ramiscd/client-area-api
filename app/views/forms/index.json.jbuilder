json.array @forms do |form|
  json.id form.id
  json.country form.country
  json.question form.question
  json.document_passport form.document_passport
  json.document_rg form.document_rg
  json.payment form.payment
  json.form_type form.form_type
end