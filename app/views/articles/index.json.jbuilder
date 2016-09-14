json.array! @articles do |article|
  json.name article.name
  json.description article.description
  json.price article.price
end