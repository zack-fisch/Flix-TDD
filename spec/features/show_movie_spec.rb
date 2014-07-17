require 'spec_helper'

describe 'Single Movie Template' do
	it 'Shows a single movie' do 
		movie = Movie.create(
											 title: "Iron Man",
                       rating: "PG-13",
                       total_gross: 318412101.00,
                       description: "Tony Stark builds an armored suit to fight the throes of evil",
                       released_on: "2008-05-02"
											)

	visit movie_url(movie)

  expect(page).to have_text(movie.title)
  expect(page).to have_text(movie.rating)
  expect(page).to have_text(movie.description)
  expect(page).to have_text(movie.released_on)
	end	
end