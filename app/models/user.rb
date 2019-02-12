class User < ApplicationRecord
    has_secure_password
    has_many :selected_songs
    has_many :songs, through: :selected_songs

    validates :username, uniqueness: { case_sensitive: false }
end
