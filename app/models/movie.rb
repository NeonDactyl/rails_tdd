class Movie < ApplicationRecord

  def flop?
    worldwide_gross.blank? || worldwide_gross <=50000000
  end
end
