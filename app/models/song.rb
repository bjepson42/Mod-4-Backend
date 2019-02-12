class Song < ApplicationRecord
  has_many :selected_songs
  has_many :users, through: :selected_songs

end
