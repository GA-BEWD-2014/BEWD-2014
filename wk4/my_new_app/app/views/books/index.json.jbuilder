json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :abstract
  json.url book_url(book, format: :json)
end
