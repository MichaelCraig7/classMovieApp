# require 'HTTParty'
require 'pp'

class MoviesController < ApplicationController
  def index
    @movie = Movie.generate
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end
end
