json.extract! flashcard, :id, :title, :description, :img_url, :created_at, :updated_at
json.url flashcard_url(flashcard, format: :json)
