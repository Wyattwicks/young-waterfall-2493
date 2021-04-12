class Actor < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :movies, through: :movie_actors


end
