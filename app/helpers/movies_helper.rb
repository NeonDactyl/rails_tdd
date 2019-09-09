module MoviesHelper

  def format_gross(movie)
    suffix = ''
    value = movie.worldwide_gross
    if movie.worldwide_gross >= 1000000000
      suffix = 'B'
      value = movie.worldwide_gross / 1000000000
    elsif movie.worldwide_gross >= 1000000
      suffix = 'M'
      value = movie.worldwide_gross / 1000000
    end

    if movie.flop?
      return content_tag(:strong, 'Flop!')
    end
    value = number_to_currency(value)
    value + suffix
  end
end
