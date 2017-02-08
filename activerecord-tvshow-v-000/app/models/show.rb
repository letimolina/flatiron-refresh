class Show < ActiveRecord::Base

  def self.highest_rating
    self.all.maximum(:rating)
  end

  def self.most_popular_show
    rating = self.highest_rating
    self.find_by(rating: rating)
  end

  def self.lowest_rating
    self.all.minimum(:rating)
  end

  def self.least_popular_show
    rating = self.lowest_rating
    self.find_by(rating: rating)
  end

  def self.ratings_sum
    self.all.sum(:rating)
  end

  def self.popular_shows
    self.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.all.order(:name)
  end
end
