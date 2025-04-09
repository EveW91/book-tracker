# Clear existing data
Review.destroy_all
Book.destroy_all

# Seed books
books = [
  { title: "The Midnight Library", author: "Matt Haig", genre: "Fiction", status: "want-to-read", notes: "Looks interesting!" },
  { title: "Educated", author: "Tara Westover", genre: "Memoir", status: "read", notes: "Inspiring story." },
  { title: "Dune", author: "Frank Herbert", genre: "Science Fiction", status: "currently-reading", notes: "It's a bit dense but worth it." },
  { title: "Becoming", author: "Michelle Obama", genre: "Biography", status: "read", notes: "Beautifully written." },
  { title: "The Name of the Wind", author: "Patrick Rothfuss", genre: "Fantasy", status: "want-to-read", notes: "Heard great things." },
  { title: "The Alchemist", author: "Paulo Coelho", genre: "Fiction", status: "read", notes: "Simple but meaningful." },
  { title: "Atomic Habits", author: "James Clear", genre: "Self-help", status: "currently-reading", notes: "Taking it one chapter at a time." },
  { title: "Circe", author: "Madeline Miller", genre: "Fantasy", status: "want-to-read", notes: "Love Greek mythology." },
  { title: "Sapiens", author: "Yuval Noah Harari", genre: "History", status: "read", notes: "Packed with knowledge." },
  { title: "The Silent Patient", author: "Alex Michaelides", genre: "Thriller", status: "read", notes: "Twist was wild!" }
]

books.each do |book_data|
  book = Book.create!(book_data)

  # Create 3 reviews per book
  3.times do
    Review.create!(
      book: book,
      rating: rand(3..5),
      review: [
        "Loved it!",
        "Interesting read.",
        "Couldn’t put it down!",
        "Well written.",
        "Would recommend.",
        "Thought-provoking.",
        "A bit slow at first, but great ending."
      ].sample
    )
  end
end

puts "🌱 Seeded #{Book.count} books and #{Review.count} reviews!"
