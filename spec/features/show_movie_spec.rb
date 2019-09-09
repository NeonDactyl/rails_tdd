require 'rails_helper'

describe "Viewing an individual movie" do
  it "shows the movie's details" do
    movie = Movie.create(
      name: "Superman",
      description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest superhero.",
      released_on: "1978-12-15",
      worldwide_gross: 300451603,
      rating: "PG")

    visit movie_url(movie)

    expect(page).to have_text(movie.name)
    expect(page).to have_text(movie.description.truncate(40, separator: ' '))
    expect(page).to have_text(movie.released_on)
    expect(page).to have_text(movie.worldwide_gross)
    expect(page).to have_text(movie.rating)
  end
end
