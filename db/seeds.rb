# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "json"
require "open-uri"

puts "destroying all current movies in db..."
Movie.destroy_all

puts "connecting to movies api"

url = "https://tmdb.lewagon.com/movie/top_rated"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

puts "connected! downloading movies data"

movies['results'].each do |movie|
  puts movie["original_title"]

  Movie.create!(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original" + movie["poster_path"], rating: ["vote_average"])
end

puts "finished top rated movies"
puts "starting popular movies"

url = "https://tmdb.lewagon.com/movie/popular"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

puts "connected! downloading movies data"

movies['results'].each do |movie|
  puts movie["original_title"]

  Movie.create!(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original" + movie["poster_path"], rating: ["vote_average"])
end

puts "finished all movies"
