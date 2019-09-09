require 'rails_helper'

describe "Viewing the list of movies" do

  it "shows the movies" do
    movies = []
    movies << Movie.create(
      name: "Superman",
      description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest superhero.",
      released_on: "1978-12-15",
      worldwide_gross: 300451603)

    movies << Movie.create(
      name: "Spider-Man",
      description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.",
      released_on: "2002-05-02",
      worldwide_gross: 825025036)

    movies << Movie.create(
      name: "The Avengers",
      description: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.",
      released_on: "2012-05-04",
      worldwide_gross: 1518812988)

    visit movies_url

    expect(page).to have_text("3 Movies")

    movies.each do |movie|
      expect(page).to have_text(movie.name)
      expect(page).to have_text(movie.description.truncate(10, separator: ' '))
      expect(page).to have_text(movie.released_on)
      expect(page).to have_text(movie.worldwide_gross)
    end
  end

end
