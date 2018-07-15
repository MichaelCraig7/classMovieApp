class Movie < ApplicationRecord
    # include HTTParty
    # base_uri "http://www.omdbapi.com/?i=#{movieValue}&apikey=f3d1e28d"
    include HTTParty
    base_uri "http://www.omdbapi.com/?i="

    def self.generate(api_id)
        movie = find_by api_id: api_id
        return movie unless movie.nil?
    
        response = get "#{api_id}&apikey=f3d1e28d"
        title = response['Title']
        poster = response['Poster']
        year = response['Year']
        genre = response['Genre']
        synopsis = response['Plot']


        create!(title: response['Title'],
            genre: genre,
            year: year, 
            synopsis: synopsis,
            picture: poster)
    end
end
